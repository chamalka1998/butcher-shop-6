import type { PayloadRequest } from 'payload'

import { idOf, tenantWhere, withTenant, workerContext } from '../context'
import { externalIdFor, localIdForExternal, remember } from '../maps'
import {
  isVisibleOnline,
  lightspeedProductData,
  pullCustomer,
  readCustomFields,
  seedBoxDays,
  syncImage,
  syncTerms,
} from './catalog'
import { asList, asObject, asRecord, LightspeedError, lightspeedRequest, type LightspeedConnection } from './client'

type PosJobDoc = {
  attempts?: number | null
  id: number | string
  idempotencyKey: string
  jobPayload?: Record<string, unknown> | null
  status?: string | null
  tenant?: unknown
  type: string
}

const dollars = (value: number): number => Math.round(value) / 100

const loadJob = async (req: PayloadRequest, posJobId: string): Promise<PosJobDoc> => {
  return req.payload.findByID({
    collection: 'pos-jobs',
    id: posJobId,
    depth: 0,
    overrideAccess: true,
    req,
  }) as Promise<PosJobDoc>
}

const loadConnection = async (req: PayloadRequest, tenantID: string): Promise<LightspeedConnection> => {
  const result = await req.payload.find({
    collection: 'pos-connections',
    context: workerContext,
    depth: 0,
    limit: 1,
    overrideAccess: true,
    pagination: false,
    req,
    where: tenantWhere(tenantID, { provider: { equals: 'lightspeed-x' } }),
  })
  const connection = result.docs[0] as LightspeedConnection | undefined
  if (!connection) throw new LightspeedError('This shop has no Lightspeed connection.')
  return connection
}

const mark = async (
  req: PayloadRequest,
  job: PosJobDoc,
  data: { lastError?: string | null; status: 'failed' | 'queued' | 'running' | 'succeeded' },
) => {
  await req.payload.update({
    collection: 'pos-jobs',
    id: job.id,
    context: workerContext,
    data: {
      ...(data.status === 'running' ? { attempts: Number(job.attempts || 0) + 1 } : {}),
      lastError: data.lastError ?? null,
      status: data.status,
    },
    overrideAccess: true,
    req,
  })
}

const slugify = (value: string): string => {
  const slug = value
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-|-$/g, '')
    .slice(0, 80)
  return slug || 'lightspeed-product'
}

const upsertProduct = async (
  req: PayloadRequest,
  connection: LightspeedConnection,
  tenantID: string,
  product: Record<string, unknown>,
  tagNames: Map<string, string>,
) => {
  const externalID = String(product.id || '')
  const sku = String(product.sku || '')
  if (!externalID || sku === 'vend-discount') return
  if (product.deleted_at) {
    const localID = await localIdForExternal(req, tenantID, 'product', externalID)
    if (localID) {
      await req.payload.update({
        collection: 'products',
        id: localID,
        context: workerContext,
        data: { _status: 'draft' },
        overrideAccess: true,
        req,
      })
    }
    return
  }

  const fields = await readCustomFields(connection, externalID)
  if (!isVisibleOnline(fields)) {
    const hiddenID = await localIdForExternal(req, tenantID, 'product', externalID)
    if (hiddenID) {
      await req.payload.update({
        collection: 'products',
        id: hiddenID,
        context: workerContext,
        data: { _status: 'draft' },
        overrideAccess: true,
        req,
      })
    }
    return
  }

  const synced = lightspeedProductData(product, fields)
  const title = String(synced.title || 'Lightspeed product')
  const branchID = idOf(connection.branch)
  let localID = await localIdForExternal(req, tenantID, 'product', externalID)

  if (!localID && sku && branchID) {
    const stock = await req.payload.find({
      collection: 'branch-inventory',
      depth: 0,
      limit: 1,
      overrideAccess: true,
      pagination: false,
      req,
      where: tenantWhere(tenantID, {
        and: [{ branch: { equals: branchID } }, { sku: { equals: sku } }],
      }),
    })
    localID = idOf(stock.docs[0]?.product)
  }

  const terms = await syncTerms(req, connection, tenantID, product, tagNames)
  const details = {
    ...synced,
    ...(terms.posCategory ? { posCategory: Number(terms.posCategory) } : {}),
    posTags: (terms.posTags || []).map((id) => Number(id)),
  }
  const createdNew = !localID

  if (localID) {
    await req.payload.update({
      collection: 'products',
      id: localID,
      context: workerContext,
      data: details,
      overrideAccess: true,
      req,
    })
  } else {
    const created = await withTenant(req, tenantID, () =>
      req.payload.create({
        collection: 'products',
        context: workerContext,
        data: {
          ...details,
          _status: 'draft',
          agingProcess: 'dry-aged',
          cutType: 'prime-rib',
          generateSlug: false,
          importedFromPos: true,
          origin: 'midwest-corn-fed',
          slug: slugify(sku || title),
          tenant: Number(tenantID),
        },
        draft: true,
        overrideAccess: true,
        req,
      }),
    )
    localID = String(created.id)
  }

  await remember(req, tenantID, 'product', localID, externalID)
  const imageURL = String(product.image_url || '')
  if (imageURL) {
    await syncImage(req, tenantID, localID, externalID, title, imageURL).catch(() => undefined)
  }
  const maxBoxes = typeof synced.maxBoxesPerDay === 'number' ? synced.maxBoxesPerDay : null
  const days = Array.isArray(synced.onHandBoxDays) ? synced.onHandBoxDays : []
  if (createdNew && maxBoxes != null && days.length === 0) {
    await seedBoxDays(connection, externalID, maxBoxes).catch(() => undefined)
  }

  if (branchID && sku) {
    const stock = await req.payload.find({
      collection: 'branch-inventory',
      depth: 0,
      limit: 1,
      overrideAccess: true,
      pagination: false,
      req,
      where: tenantWhere(tenantID, {
        and: [{ branch: { equals: branchID } }, { product: { equals: localID } }],
      }),
    })
    if (stock.docs[0]) {
      if (!stock.docs[0].sku) {
        await req.payload.update({
          collection: 'branch-inventory',
          id: stock.docs[0].id,
          context: workerContext,
          data: { sku },
          overrideAccess: true,
          req,
        })
      }
    } else {
      await withTenant(req, tenantID, () =>
        req.payload.create({
          collection: 'branch-inventory',
          context: workerContext,
          data: {
            branch: Number(branchID),
            manageStock: false,
            product: Number(localID),
            sku,
            stockQuantity: 0,
            tenant: Number(tenantID),
          },
          overrideAccess: true,
          req,
        }),
      )
    }
  }
}

const pullCatalog = async (
  req: PayloadRequest,
  connection: LightspeedConnection,
  tenantID: string,
  onlyProductID?: string,
): Promise<string | null> => {
  if (onlyProductID) {
    const body = await lightspeedRequest(connection, `products/${onlyProductID}`)
    const product = asObject(body)
    if (product) await upsertProduct(req, connection, tenantID, product, new Map())
    return null
  }

  const tagNames = new Map<string, string>()
  let after = connection.catalogCursor || undefined
  let pages = 0
  let skipped = 0
  while (pages < 20) {
    pages += 1
    const body = await lightspeedRequest(connection, 'products', {
      query: { after, page_size: 500 },
    })
    const products = asList(body)
    for (const product of products) {
      try {
        await upsertProduct(req, connection, tenantID, product, tagNames)
      } catch (error) {
        skipped += 1
        req.payload.logger.error({
          err: error,
          msg: `Lightspeed product ${String(product.id || '')} was not imported.`,
        })
      }
    }
    const record = asRecord(body)
    const version = asRecord(record?.version)
    const max = typeof version?.max === 'string' || typeof version?.max === 'number' ? String(version.max) : ''
    const finished = !max || max === after || products.length === 0
    if (finished || pages >= 20) {
      const paused = !finished
      const note = [
        skipped ? `${skipped} products were skipped.` : '',
        paused ? 'Save the connection again to import the next pages.' : '',
      ]
        .filter(Boolean)
        .join(' ')
      await req.payload.update({
        collection: 'pos-connections',
        id: connection.id,
        context: workerContext,
        data: {
          catalogCursor: paused ? max : null,
          lastCatalogSyncAt: new Date().toISOString(),
          lastError: note || null,
        },
        overrideAccess: true,
        req,
      })
      return note || null
    }
    after = max
  }
  return null
}

const ensureCustomer = async (
  req: PayloadRequest,
  connection: LightspeedConnection,
  tenantID: string,
  order: Record<string, unknown>,
): Promise<string> => {
  const userID = idOf(order.customer)
  const localKey = userID ? `user:${userID}` : `email:${String(order.customerEmail || '').toLowerCase()}`
  const mapped = await externalIdFor(req, tenantID, 'customer', localKey)
  if (mapped) return mapped

  const email = String(order.customerEmail || '')
  if (!email) throw new LightspeedError('The order has no customer email, so Lightspeed cannot store the customer.')

  const found = await lightspeedRequest(connection, 'customers', { query: { email } })
  const existing = asList(found)[0] || asObject(found)
  if (existing?.id) {
    const externalID = String(existing.id)
    await remember(req, tenantID, 'customer', localKey, externalID)
    return externalID
  }

  const shipping = asRecord(order.shippingAddress)
  const fullName = String(shipping?.firstName || shipping?.lastName || 'Online Customer')
  const created = await lightspeedRequest(connection, 'customers', {
    body: {
      do_not_email: false,
      email,
      first_name: String(shipping?.firstName || fullName),
      last_name: String(shipping?.lastName || 'Customer'),
      phone: shipping?.phone || undefined,
      physical_address_1: shipping?.addressLine1 || undefined,
      physical_address_2: shipping?.addressLine2 || undefined,
      physical_city: shipping?.city || undefined,
      physical_country_id: shipping?.country || undefined,
      physical_postcode: shipping?.postalCode || undefined,
      physical_state: shipping?.state || undefined,
    },
    method: 'POST',
  })
  const customer = asObject(created)
  if (!customer?.id) throw new LightspeedError('Lightspeed did not return a customer id.')
  const externalID = String(customer.id)
  await remember(req, tenantID, 'customer', localKey, externalID)
  return externalID
}

const pushSale = async (req: PayloadRequest, connection: LightspeedConnection, tenantID: string, orderID: string) => {
  const already = await externalIdFor(req, tenantID, 'order', orderID)
  if (already) return

  if (!connection.cashierId || !connection.taxId || !connection.paymentTypeId) {
    throw new LightspeedError('Save the cashier, No Tax, and Online Payments ids on the POS connection before sales can sync.')
  }

  const order = (await req.payload.findByID({
    collection: 'orders',
    id: orderID,
    depth: 2,
    overrideAccess: true,
    req,
  })) as unknown as Record<string, unknown>

  const lookedUp = await lightspeedRequest(connection, 'sales', { query: { source_id: orderID } }).catch(() => null)
  const prior = asList(lookedUp)[0]
  if (prior?.id) {
    await remember(req, tenantID, 'order', orderID, String(prior.id))
    return
  }

  const items = Array.isArray(order.items) ? order.items : []
  const lines: { price: number; product_id: string; quantity: number; tax: number; tax_id: string }[] = []
  let productCents = 0

  for (const item of items) {
    const line = asRecord(item)
    if (!line) continue
    const productID = idOf(line.product)
    if (!productID) continue
    const quantity = Number(line.quantity || 1)
    const product = asRecord(line.product)
    const variant = asRecord(line.variant)
    const unitCents = Number(variant?.priceInUSD ?? product?.priceInUSD ?? 0)
    if (!unitCents) throw new LightspeedError(`Product ${productID} has no price to send to Lightspeed.`)
    const externalID = await externalIdFor(req, tenantID, 'product', productID)
    if (!externalID) {
      throw new LightspeedError(`Product ${productID} is not mapped to Lightspeed. Run catalog sync, then replay this job.`)
    }
    productCents += unitCents * quantity
    lines.push({
      price: dollars(unitCents),
      product_id: externalID,
      quantity,
      tax: 0,
      tax_id: connection.taxId,
    })
  }

  if (lines.length === 0) throw new LightspeedError('The order has no products to send.')

  const shippingCents = Number(asRecord(order.fulfillment)?.shippingCharge || 0)
  const expected = productCents + shippingCents
  if (typeof order.amount === 'number' && order.amount !== expected) {
    throw new LightspeedError(
      `Stripe captured ${order.amount} cents and the Lightspeed lines total ${expected} cents. The sale was not created.`,
    )
  }

  const fulfillment = asRecord(order.fulfillment)
  const serviceType = fulfillment?.serviceType === 'delivery' ? 'delivery' : 'pickup'
  const customerID = await ensureCustomer(req, connection, tenantID, order)
  const created = await lightspeedRequest(connection, 'sales', {
    body: {
      customer_id: customerID,
      note: `Order ${orderID} ${serviceType}`,
      register_sale_payments: [
        { amount: dollars(expected), retailer_payment_type_id: connection.paymentTypeId },
      ],
      register_sale_products: lines,
      source: 'butcher-shop',
      source_id: orderID,
      status: serviceType === 'delivery' ? 'AWAITING_DISPATCH' : 'AWAITING_PICKUP',
      user_id: connection.cashierId,
    },
    method: 'POST',
  })
  const sale = asObject(created)
  if (!sale?.id) throw new LightspeedError('Lightspeed did not return a sale id.')
  const saleID = String(sale.id)
  await remember(req, tenantID, 'order', orderID, saleID)

  const address = asRecord(order.shippingAddress)
  const addressText = [address?.addressLine1, address?.addressLine2, address?.city, address?.state, address?.postalCode]
    .filter(Boolean)
    .join(', ')
  const lightspeedSale = asRecord(order.lightspeedSale)
  const purchase = String(order.purchaseType || '')
  const fields: [string, string][] = [
    ['Fulfillment Method', serviceType],
    ['Fulfillment Date', String(fulfillment?.date || '')],
    ['Fulfillment Time', String(fulfillment?.timeSlot || '')],
    ['Fulfillment Status', serviceType === 'delivery' ? 'AWAITING_DISPATCH' : 'AWAITING_PICKUP'],
    ['Billing Email', String(order.customerEmail || '')],
    ['Billing Phone', String(address?.phone || '')],
    ['Billing Address', addressText],
    ['Shipping Address', addressText],
    ['Subscription Enabled', purchase === 'monthly' || purchase === 'weekly' ? 'yes' : ''],
    ['QR Code', String(lightspeedSale?.pickupUrl || '')],
    ['If Delivery, Task ID', String(lightspeedSale?.deliveryTaskId || '')],
    ['Delivery Proof', String(lightspeedSale?.deliveryProof || '')],
  ]
  for (const [name, value] of fields) {
    if (!value) continue
    await lightspeedRequest(connection, 'workflows/custom_fields/values', {
      body: { entity: 'sale', entity_id: saleID, values: [{ name, string_value: value }] },
      method: 'POST',
    }).catch(() => undefined)
  }
}

const orderStatusForSale = (sale: Record<string, unknown>): 'cancelled' | 'completed' | 'refunded' | null => {
  const status = String(sale.status || '').toUpperCase()
  const state = String(sale.state || '').toLowerCase()
  const returnFor = String(sale.return_for || '')
  const products = Array.isArray(sale.register_sale_products) ? sale.register_sale_products : []
  const payments = Array.isArray(sale.register_sale_payments) ? sale.register_sale_payments : []
  const negative =
    products.some((line) => Number(asRecord(line)?.quantity || 0) < 0) ||
    payments.some((payment) => Number(asRecord(payment)?.amount || 0) < 0)

  if (state === 'voided' || status === 'VOIDED') return 'cancelled'
  if (returnFor || negative) return 'refunded'
  if (
    state === 'closed' ||
    status === 'CLOSED' ||
    status === 'PICKED_UP_CLOSED' ||
    status === 'DISPATCHED_CLOSED'
  ) {
    return 'completed'
  }
  return null
}

const pullSaleStatus = async (
  req: PayloadRequest,
  connection: LightspeedConnection,
  tenantID: string,
  payload: Record<string, unknown>,
) => {
  const saleID = String(payload.saleId || '')
  if (!saleID) throw new LightspeedError('Sale sync needs a Lightspeed sale id.')
  const body = await lightspeedRequest(connection, `sales/${saleID}`)
  const sale = asObject(body)
  if (!sale) throw new LightspeedError('Lightspeed did not return the sale.')

  const sourceID = String(sale.source_id || payload.sourceId || '')
  const orderID =
    (await localIdForExternal(req, tenantID, 'order', saleID)) ||
    (sourceID && /^\d+$/.test(sourceID) ? sourceID : null)
  if (!orderID) throw new LightspeedError(`No order is mapped to Lightspeed sale ${saleID}.`)
  if (!(await externalIdFor(req, tenantID, 'order', orderID))) {
    await remember(req, tenantID, 'order', orderID, saleID)
  }

  const status = orderStatusForSale(sale)
  if (!status) return
  await req.payload.update({
    collection: 'orders',
    id: orderID,
    context: workerContext,
    data: { status },
    overrideAccess: true,
    req,
  })
}

const pushFulfillment = async (req: PayloadRequest, connection: LightspeedConnection, tenantID: string, orderID: string) => {
  const saleID = await externalIdFor(req, tenantID, 'order', orderID)
  if (!saleID) throw new LightspeedError('This order has no Lightspeed sale yet.')
  const order = (await req.payload.findByID({
    collection: 'orders',
    id: orderID,
    depth: 0,
    overrideAccess: true,
    req,
  })) as { fulfillment?: { serviceType?: string | null } }
  const fulfillmentType = order.fulfillment?.serviceType === 'delivery' ? 'SHIPPED' : 'PICKED_UP'
  await lightspeedRequest(connection, `sales/${saleID}/fulfill`, {
    body: { fulfillment_type: fulfillmentType },
    method: 'POST',
  })
  const completedOn = new Date().toISOString().slice(0, 10)
  await lightspeedRequest(connection, 'workflows/custom_fields/values', {
    body: {
      entity: 'sale',
      entity_id: saleID,
      values: [
        { name: 'Fulfillment Status', string_value: 'completed' },
        { name: 'Fulfillment Completed Date', string_value: completedOn },
      ],
    },
    method: 'POST',
  }).catch(() => undefined)
}

const pushProductFields = async (
  req: PayloadRequest,
  connection: LightspeedConnection,
  tenantID: string,
  productID: string,
) => {
  if (!productID) throw new LightspeedError('Product field sync needs a product id.')
  const externalID = await externalIdFor(req, tenantID, 'product', productID)
  if (!externalID) throw new LightspeedError('This product is not mapped to Lightspeed. Run catalog sync first.')
  const product = await req.payload.findByID({
    collection: 'products',
    id: productID,
    depth: 0,
    overrideAccess: true,
    req,
  })
  const days = Array.isArray(product.onHandBoxDays) ? product.onHandBoxDays : []
  const values = days.flatMap((row) => {
    const day = Number(row?.day)
    const count = Number(row?.count)
    if (day < 1 || day > 31 || !Number.isFinite(count)) return []
    return [{ integer_value: count, name: `On Hand Box Day ${day}` }]
  })
  if (values.length === 0) return
  await lightspeedRequest(connection, 'workflows/custom_fields/values', {
    body: { entity: 'product', entity_id: externalID, values },
    method: 'POST',
  })
}

export const runPosJob = async (req: PayloadRequest, posJobId: string): Promise<void> => {
  req.context.skipTenantScope = true
  req.context.readPosSecrets = true
  req.context.skipPosEnqueue = true

  const job = await loadJob(req, posJobId)
  if (job.status === 'succeeded') return
  const tenantID = idOf(job.tenant)
  if (!tenantID) throw new LightspeedError('POS job has no shop.')

  await mark(req, job, { status: 'running' })
  try {
    const connection = await loadConnection(req, tenantID)
    const payload = job.jobPayload || {}
    if (job.type === 'pullCatalog') {
      const note = await pullCatalog(
        req,
        connection,
        tenantID,
        typeof payload.lightspeedProductId === 'string' ? payload.lightspeedProductId : undefined,
      )
      await mark(req, job, { lastError: note, status: 'succeeded' })
      return
    } else if (job.type === 'pushSale') {
      await pushSale(req, connection, tenantID, String(payload.orderId || ''))
    } else if (job.type === 'pullSaleStatus') {
      await pullSaleStatus(req, connection, tenantID, payload)
    } else if (job.type === 'pushFulfillment') {
      await pushFulfillment(req, connection, tenantID, String(payload.orderId || ''))
    } else if (job.type === 'pushProductFields') {
      await pushProductFields(req, connection, tenantID, String(payload.productId || ''))
    } else if (job.type === 'pullCustomer') {
      await pullCustomer(req, connection, tenantID, String(payload.customerId || ''))
    } else {
      throw new LightspeedError(`Unknown POS job ${job.type}.`)
    }
    await mark(req, job, { lastError: null, status: 'succeeded' })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'POS job failed.'
    await mark(req, job, { lastError: message, status: 'failed' })
    throw error
  }
}
