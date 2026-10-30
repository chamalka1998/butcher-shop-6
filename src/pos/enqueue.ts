import type { PayloadRequest } from 'payload'

import { idOf, withTenant } from './context'

export type PosJobType = 'pullCatalog' | 'pullCustomer' | 'pushProductFields' | 'pushSale' | 'pullSaleStatus' | 'pushFulfillment'

type EnqueueArgs = {
  idempotencyKey: string
  payload?: Record<string, unknown>
  rerun?: boolean
  tenantID: string
  type: PosJobType
}

const active = new Set(['queued', 'running', 'succeeded'])

export const enqueuePosJob = async (req: PayloadRequest, args: EnqueueArgs): Promise<void> => {
  const existing = await req.payload.find({
    collection: 'pos-jobs',
    context: { skipTenantScope: true },
    depth: 0,
    limit: 1,
    overrideAccess: true,
    pagination: false,
    req,
    where: { idempotencyKey: { equals: args.idempotencyKey } },
  })

  const current = existing.docs[0]
  if (current && active.has(String(current.status)) && !args.rerun) return

  const tenant = Number(args.tenantID)
  const data = {
    attempts: current ? Number(current.attempts || 0) : 0,
    idempotencyKey: args.idempotencyKey,
    jobPayload: args.payload || {},
    lastError: null,
    status: 'queued' as const,
    tenant,
    type: args.type,
  }

  const job = await withTenant(req, tenant, async () => {
    if (current) {
      return req.payload.update({
        collection: 'pos-jobs',
        id: current.id,
        data,
        overrideAccess: true,
        req,
      })
    }
    return req.payload.create({
      collection: 'pos-jobs',
      data,
      overrideAccess: true,
      req,
    })
  })

  await req.payload.jobs.queue({
    input: { posJobId: String(job.id) },
    overrideAccess: true,
    queue: 'pos',
    req,
    task: 'runPosJob',
  })
}
