import type { CollectionAfterChangeHook } from 'payload'

import { idOf } from './context'
import { enqueuePosJob } from './enqueue'

const tenantMode = async (req: Parameters<CollectionAfterChangeHook>[0]['req'], tenantID: string | null) => {
  if (!tenantID) return null
  const tenant = await req.payload.findByID({
    collection: 'tenants',
    id: tenantID,
    depth: 0,
    overrideAccess: true,
    req,
  })
  return tenant.inventoryMode === 'lightspeed-x' ? tenantID : null
}

export const enqueueSaleAfterPayment: CollectionAfterChangeHook = async ({ doc, previousDoc, req }) => {
  if (doc.status !== 'succeeded' || previousDoc?.status === 'succeeded') return doc
  const orderID = idOf(doc.order)
  if (!orderID) return doc

  try {
    const order = await req.payload.findByID({
      collection: 'orders',
      id: orderID,
      depth: 0,
      overrideAccess: true,
      req,
    })
    const tenantID = await tenantMode(req, idOf(order.tenant))
    if (!tenantID) return doc
    await enqueuePosJob(req, {
      idempotencyKey: `order:${orderID}:pushSale`,
      payload: { orderId: orderID },
      tenantID,
      type: 'pushSale',
    })
  } catch (error) {
    req.payload.logger.error({ err: error, msg: `POS sale was not queued for order ${orderID}.` })
  }
  return doc
}

export const enqueueFulfillmentAfterComplete: CollectionAfterChangeHook = async ({
  doc,
  previousDoc,
  req,
}) => {
  if (req.context?.skipPosEnqueue) return doc
  if (doc.status !== 'completed' || previousDoc?.status === 'completed') return doc
  const orderID = String(doc.id)

  try {
    const tenantID = await tenantMode(req, idOf(doc.tenant))
    if (!tenantID) return doc
    await enqueuePosJob(req, {
      idempotencyKey: `order:${orderID}:pushFulfillment`,
      payload: { orderId: orderID },
      tenantID,
      type: 'pushFulfillment',
    })
  } catch (error) {
    req.payload.logger.error({ err: error, msg: `POS fulfillment was not queued for order ${orderID}.` })
  }
  return doc
}

const boxDaysKey = (value: unknown): string => {
  if (!Array.isArray(value)) return ''
  return JSON.stringify(
    value
      .map((row) => {
        const day = typeof row === 'object' && row ? Number((row as { day?: unknown }).day) : 0
        const count = typeof row === 'object' && row ? Number((row as { count?: unknown }).count) : 0
        return [day, count]
      })
      .sort((left, right) => left[0] - right[0]),
  )
}

export const enqueueProductFieldsAfterSave: CollectionAfterChangeHook = async ({ doc, previousDoc, req }) => {
  if (req.context?.skipPosEnqueue) return doc
  if (boxDaysKey(doc.onHandBoxDays) === boxDaysKey(previousDoc?.onHandBoxDays)) return doc
  const productID = String(doc.id)

  try {
    const tenantID = await tenantMode(req, idOf(doc.tenant))
    if (!tenantID) return doc
    await enqueuePosJob(req, {
      idempotencyKey: `product:${productID}:pushFields`,
      payload: { productId: productID },
      rerun: true,
      tenantID,
      type: 'pushProductFields',
    })
  } catch (error) {
    req.payload.logger.error({ err: error, msg: `POS product fields were not queued for product ${productID}.` })
  }
  return doc
}
