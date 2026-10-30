import { createHmac, timingSafeEqual } from 'crypto'
import { createLocalReq, getPayload } from 'payload'
import config from '@payload-config'

import { workerContext } from '@/pos/context'
import { enqueuePosJob } from '@/pos/enqueue'
import { decryptSecret } from '@/pos/secrets'

export const runtime = 'nodejs'

const signaturesMatch = (secret: string, body: string, provided: string): boolean => {
  const expected = createHmac('sha256', secret).update(body).digest('hex')
  const given = provided.replace(/^sha256=/, '').trim()
  const left = Buffer.from(expected)
  const right = Buffer.from(given)
  if (left.length !== right.length) return false
  return timingSafeEqual(left, right)
}

const payloadOf = (raw: string, contentType: string): Record<string, unknown> | null => {
  if (contentType.includes('application/json')) {
    const parsed = JSON.parse(raw) as unknown
    return parsed && typeof parsed === 'object' ? (parsed as Record<string, unknown>) : null
  }
  const params = new URLSearchParams(raw)
  const nested = params.get('payload')
  if (!nested) return null
  const parsed = JSON.parse(nested) as unknown
  return parsed && typeof parsed === 'object' ? (parsed as Record<string, unknown>) : null
}

export async function POST(request: Request): Promise<Response> {
  const raw = await request.text()
  const signature = request.headers.get('x-pos-signature') || ''
  if (!raw || !signature) return Response.json({ message: 'Missing signature.' }, { status: 401 })

  const payload = await getPayload({ config })
  const req = await createLocalReq({ context: { ...workerContext } }, payload)
  const connections = await payload.find({
    collection: 'pos-connections',
    depth: 0,
    limit: 50,
    overrideAccess: true,
    pagination: false,
    req,
    where: { hasWebhookSecret: { equals: true } },
  })

  const match = connections.docs.find((connection) => {
    if (!connection.webhookSecret) return false
    try {
      return signaturesMatch(decryptSecret(connection.webhookSecret), raw, signature)
    } catch {
      return false
    }
  })

  if (!match) return Response.json({ message: 'Invalid signature.' }, { status: 401 })

  let body: Record<string, unknown> | null = null
  try {
    body = payloadOf(raw, request.headers.get('content-type') || '')
  } catch {
    return Response.json({ message: 'Invalid payload.' }, { status: 400 })
  }
  if (!body) return Response.json({ message: 'Invalid payload.' }, { status: 400 })

  const tenantValue = match.tenant
  const tenantID = typeof tenantValue === 'object' && tenantValue ? tenantValue.id : tenantValue
  if (!tenantID) return Response.json({ message: 'Connection has no shop.' }, { status: 422 })

  const externalId = typeof body.id === 'string' ? body.id : ''
  const looksLikeSale = Boolean(body.status || body.state || body.source_id)
  const looksLikeCustomer = typeof body.email === 'string' && !body.sku && body.price_including_tax == null && !looksLikeSale

  if (looksLikeSale && externalId) {
    await enqueuePosJob(req, {
      idempotencyKey: `sale:${externalId}:${String(body.status || body.state || 'update')}`,
      payload: { saleId: externalId, sourceId: body.source_id },
      rerun: true,
      tenantID: String(tenantID),
      type: 'pullSaleStatus',
    })
  } else if (looksLikeCustomer && externalId) {
    await enqueuePosJob(req, {
      idempotencyKey: `customer:${externalId}`,
      payload: { customerId: externalId },
      rerun: true,
      tenantID: String(tenantID),
      type: 'pullCustomer',
    })
  } else if (externalId) {
    await enqueuePosJob(req, {
      idempotencyKey: `product:${externalId}`,
      payload: { lightspeedProductId: externalId },
      rerun: true,
      tenantID: String(tenantID),
      type: 'pullCatalog',
    })
  }

  return Response.json({ received: true })
}
