import type { PayloadRequest } from 'payload'

import { tenantWhere, withTenant, workerContext } from '../context'
import { localIdForExternal, remember } from '../maps'
import { asList, asObject, asRecord, lightspeedRequest, type LightspeedConnection } from './client'

type FieldValue = Record<string, unknown>

const slugify = (value: string): string => {
  const slug = value
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-|-$/g, '')
    .slice(0, 80)
  return slug || 'lightspeed'
}

const textOf = (field: FieldValue | undefined): string => {
  const value = field?.string_value ?? field?.date_value
  return typeof value === 'string' ? value.trim() : ''
}

const numberOf = (field: FieldValue | undefined): number | undefined => {
  const raw = field?.integer_value ?? field?.string_value
  if (raw == null || raw === '') return undefined
  const value = Number(raw)
  return Number.isFinite(value) ? value : undefined
}

const flagOf = (field: FieldValue | undefined): boolean => Boolean(field?.boolean_value)

export const readCustomFields = async (
  connection: LightspeedConnection,
  productID: string,
): Promise<Map<string, FieldValue>> => {
  const body = await lightspeedRequest(connection, 'workflows/custom_fields/values', {
    query: { entity: 'product', entity_id: productID },
  })
  const fields = new Map<string, FieldValue>()
  for (const field of asList(body)) {
    if (typeof field.name === 'string') fields.set(field.name, field)
  }
  return fields
}

export const isVisibleOnline = (fields: Map<string, FieldValue>): boolean => {
  return flagOf(fields.get('Online Visibility'))
}

const boxDays = (fields: Map<string, FieldValue>): { count: number; day: number }[] => {
  const days: { count: number; day: number }[] = []
  for (let day = 1; day <= 31; day += 1) {
    const count = numberOf(fields.get(`On Hand Box Day ${day}`))
    if (count !== undefined) days.push({ count, day })
  }
  return days
}

export const lightspeedProductData = (
  product: Record<string, unknown>,
  fields: Map<string, FieldValue>,
): Record<string, unknown> => {
  const toggle = textOf(fields.get('Language Toggle Name'))
  const title = toggle || String(product.name || 'Lightspeed product')
  const price = Number(product.price_including_tax || 0)
  const data: Record<string, unknown> = {
    descriptionFr: textOf(fields.get('Language Toggle Description')) || String(product.description || ''),
    descriptionMonthlyMenuDeliveryEn: textOf(fields.get('Description For Monthly Menu delivery (En)')),
    descriptionMonthlyMenuDeliveryFr: textOf(fields.get('Description For Monthly Menu delivery (Fr)')),
    descriptionMonthlyMenuPickupEn: textOf(fields.get('Description For Monthly Menu pickup (En)')),
    descriptionMonthlyMenuPickupFr: textOf(fields.get('Description For Monthly Menu pickup (Fr)')),
    descriptionSubscriptionDeliveryEn: textOf(fields.get('Description For Subscription delivery (En)')),
    descriptionSubscriptionDeliveryFr: textOf(fields.get('Description for Subscription delivery (Fr)')),
    descriptionSubscriptionPickupEn: textOf(fields.get('Description for Subscription pickup (En)')),
    descriptionSubscriptionPickupFr: textOf(fields.get('Description for Subscription pickup (Fr)')),
    enableSubscription: flagOf(fields.get('Enable Subscription')),
    lightspeedActive: product.active === 1 || product.active === true || product.active === '1',
    maxBoxesPerDay: numberOf(fields.get('Max Boxes Per Day')) ?? null,
    nameFr: String(product.name || ''),
    onHandBoxDays: boxDays(fields),
    priceInUSD: Number.isFinite(price) ? Math.round(price * 100) : 0,
    priceInUSDEnabled: true,
    priceMonthlyMenuDelivery: numberOf(fields.get('Price (Monthly Menu Delivery)')) ?? null,
    priceMonthlyMenuPickup: numberOf(fields.get('Price (Monthly Menu Pickup)')) ?? null,
    priceSubscriptionDelivery: numberOf(fields.get('Price (Subscription Delivery)')) ?? null,
    priceSubscriptionPickup: numberOf(fields.get('Price (Subscription Pickup)')) ?? null,
    subscriptionDiscount: numberOf(fields.get('Subscription Discount')) ?? null,
    title,
    visibilityDate: textOf(fields.get('Visibility Date')) || null,
    visibilityEndDate: textOf(fields.get('Visibility End Date')) || null,
  }
  return data
}

const named = (value: unknown): { id: string; name: string } | null => {
  const record = asRecord(value)
  if (!record?.id) return null
  return { id: String(record.id), name: String(record.name || record.id) }
}

const ensureTerm = async (
  req: PayloadRequest,
  tenantID: string,
  entity: 'category' | 'tag',
  collection: 'categories' | 'pos-tags',
  externalID: string,
  title: string,
): Promise<string | null> => {
  const mapped = await localIdForExternal(req, tenantID, entity, externalID)
  if (mapped) {
    await req.payload.update({
      collection,
      id: mapped,
      context: workerContext,
      data: { title },
      overrideAccess: true,
      req,
    })
    return mapped
  }

  const slug = slugify(title)
  const created = await withTenant(req, tenantID, async () => {
    const existing = await req.payload.find({
      collection,
      depth: 0,
      limit: 1,
      overrideAccess: true,
      pagination: false,
      req,
      where: tenantWhere(tenantID, { slug: { equals: slug } }),
    })
    if (existing.docs[0]) return existing.docs[0]
    return req.payload.create({
      collection,
      context: workerContext,
      data: { generateSlug: false, slug, tenant: Number(tenantID), title },
      overrideAccess: true,
      req,
    })
  }).catch(() => null)

  const localID = created ? String(created.id) : null
  if (!localID) return null
  await remember(req, tenantID, entity, localID, externalID)
  return localID
}

export const syncTerms = async (
  req: PayloadRequest,
  connection: LightspeedConnection,
  tenantID: string,
  product: Record<string, unknown>,
  tagNames: Map<string, string>,
): Promise<{ posCategory?: string; posTags?: string[] }> => {
  const category = named(product.product_category) || named(product.type)
  const posCategory = category
    ? await ensureTerm(req, tenantID, 'category', 'categories', category.id, category.name)
    : null

  const tags: { id: string; name: string }[] = []
  const embedded = Array.isArray(product.tags) ? product.tags : []
  for (const tag of embedded) {
    const item = named(tag)
    if (item) tags.push(item)
  }
  if (tags.length === 0 && Array.isArray(product.tag_ids)) {
    for (const rawID of product.tag_ids) {
      const id = String(rawID || '')
      if (!id) continue
      let name = tagNames.get(id)
      if (!name) {
        const body = await lightspeedRequest(connection, `tags/${id}`).catch(() => null)
        name = String(asObject(body)?.name || id)
        tagNames.set(id, name)
      }
      tags.push({ id, name })
    }
  }

  const posTags: string[] = []
  for (const tag of tags) {
    const localID = await ensureTerm(req, tenantID, 'tag', 'pos-tags', tag.id, tag.name)
    if (localID) posTags.push(localID)
  }

  return {
    ...(posCategory ? { posCategory } : {}),
    posTags,
  }
}

const fileName = (url: string, externalID: string): string => {
  try {
    const name = new URL(url).pathname.split('/').pop() || ''
    const clean = name.replace(/[^a-zA-Z0-9._-]/g, '')
    if (clean.includes('.')) return clean.slice(0, 80)
  } catch {
    return `lightspeed-${externalID}.jpg`
  }
  return `lightspeed-${externalID}.jpg`
}

export const syncImage = async (
  req: PayloadRequest,
  tenantID: string,
  localID: string,
  externalID: string,
  title: string,
  imageURL: string,
): Promise<void> => {
  if (!imageURL.startsWith('https://') && !imageURL.startsWith('http://')) return
  const current = await req.payload.findByID({
    collection: 'products',
    id: localID,
    depth: 0,
    overrideAccess: true,
    req,
  })
  if (current.lightspeedImageUrl === imageURL && Array.isArray(current.productGallery) && current.productGallery.length > 0) {
    return
  }
  if (!current.importedFromPos && Array.isArray(current.productGallery) && current.productGallery.length > 0) return

  const response = await fetch(imageURL)
  if (!response.ok) return
  const type = response.headers.get('content-type') || ''
  if (!type.startsWith('image/')) return
  const bytes = Buffer.from(await response.arrayBuffer())
  if (bytes.length === 0 || bytes.length > 8_000_000) return

  const media = await withTenant(req, tenantID, () =>
    req.payload.create({
      collection: 'media',
      context: workerContext,
      data: { alt: title, tenant: Number(tenantID) },
      file: {
        data: bytes,
        mimetype: type.split(';')[0] || 'image/jpeg',
        name: fileName(imageURL, externalID),
        size: bytes.length,
      },
      overrideAccess: true,
      req,
    }),
  )

  await req.payload.update({
    collection: 'products',
    id: localID,
    context: workerContext,
    data: {
      lightspeedImageUrl: imageURL,
      productGallery: [{ image: media.id }],
    },
    overrideAccess: true,
    req,
  })
}

export const seedBoxDays = async (
  connection: LightspeedConnection,
  externalID: string,
  maxBoxes: number,
): Promise<void> => {
  const values = Array.from({ length: 31 }, (_, index) => ({
    integer_value: maxBoxes,
    name: `On Hand Box Day ${index + 1}`,
  }))
  await lightspeedRequest(connection, 'workflows/custom_fields/values', {
    body: { entity: 'product', entity_id: externalID, values },
    method: 'POST',
  })
}

const countryCode = (value: unknown): 'CA' | 'US' | null => {
  const code = String(value || '').trim().toUpperCase()
  if (code === 'CA' || code === 'US') return code
  return null
}

export const pullCustomer = async (
  req: PayloadRequest,
  connection: LightspeedConnection,
  tenantID: string,
  customerID: string,
): Promise<void> => {
  const body = await lightspeedRequest(connection, `customers/${customerID}`)
  const customer = asObject(body)
  const email = String(customer?.email || '').trim().toLowerCase()
  if (!customer || !email) return

  const first = String(customer.first_name || '')
  const last = String(customer.last_name || '')
  const name = [first, last].filter(Boolean).join(' ') || email
  const existing = await req.payload.find({
    collection: 'users',
    depth: 0,
    limit: 1,
    overrideAccess: true,
    pagination: false,
    req,
    where: { email: { equals: email } },
  })

  const user = existing.docs[0]
    ? await req.payload.update({
        collection: 'users',
        id: existing.docs[0].id,
        context: workerContext,
        data: { name },
        overrideAccess: true,
        req,
      })
    : await withTenant(req, tenantID, () =>
        req.payload.create({
          collection: 'users',
          context: workerContext,
          data: {
            email,
            name,
            password: `Ls-${crypto.randomUUID()}`,
            roles: ['customer'],
          },
          overrideAccess: true,
          req,
        }),
      )

  await remember(req, tenantID, 'customer', `user:${user.id}`, customerID)

  const country = countryCode(customer.physical_country_id)
  const line = String(customer.physical_address_1 || '')
  if ((country !== 'CA' && country !== 'US') || !line) return
  const addresses = await req.payload.find({
    collection: 'addresses',
    depth: 0,
    limit: 1,
    overrideAccess: true,
    pagination: false,
    req,
    where: tenantWhere(tenantID, {
      and: [{ customer: { equals: user.id } }, { addressLine1: { equals: line } }],
    }),
  })
  const address = {
    addressLine1: line,
    addressLine2: String(customer.physical_address_2 || ''),
    city: String(customer.physical_city || ''),
    company: String(customer.company_name || ''),
    country,
    customer: user.id,
    firstName: first || name,
    lastName: last,
    phone: String(customer.phone || ''),
    postalCode: String(customer.physical_postcode || ''),
    state: String(customer.physical_state || ''),
    tenant: Number(tenantID),
    title: 'Lightspeed',
  }
  await withTenant(req, tenantID, async () => {
    if (addresses.docs[0]) {
      await req.payload.update({
        collection: 'addresses',
        id: addresses.docs[0].id,
        context: workerContext,
        data: address,
        overrideAccess: true,
        req,
      })
      return
    }
    await req.payload.create({
      collection: 'addresses',
      context: workerContext,
      data: address,
      overrideAccess: true,
      req,
    })
  }).catch(() => undefined)
}
