import type { PayloadRequest } from 'payload'

import { tenantWhere, withTenant, workerContext } from './context'

export type PosEntity = 'category' | 'customer' | 'order' | 'product' | 'tag'

export const remember = async (
  req: PayloadRequest,
  tenantID: string,
  entity: PosEntity,
  localID: string,
  externalID: string,
): Promise<void> => {
  const existing = await req.payload.find({
    collection: 'pos-maps',
    depth: 0,
    limit: 1,
    overrideAccess: true,
    pagination: false,
    req,
    where: tenantWhere(tenantID, {
      and: [{ entity: { equals: entity } }, { localId: { equals: localID } }],
    }),
  })
  const data = { entity, externalId: externalID, localId: localID, tenant: Number(tenantID) }
  await withTenant(req, tenantID, async () => {
    if (existing.docs[0]) {
      await req.payload.update({
        collection: 'pos-maps',
        id: existing.docs[0].id,
        context: workerContext,
        data,
        overrideAccess: true,
        req,
      })
      return
    }
    await req.payload.create({
      collection: 'pos-maps',
      context: workerContext,
      data,
      overrideAccess: true,
      req,
    })
  })
}

export const externalIdFor = async (
  req: PayloadRequest,
  tenantID: string,
  entity: PosEntity,
  localID: string,
): Promise<string | null> => {
  const existing = await req.payload.find({
    collection: 'pos-maps',
    depth: 0,
    limit: 1,
    overrideAccess: true,
    pagination: false,
    req,
    where: tenantWhere(tenantID, {
      and: [{ entity: { equals: entity } }, { localId: { equals: localID } }],
    }),
  })
  const externalId = existing.docs[0]?.externalId
  return typeof externalId === 'string' && externalId ? externalId : null
}

export const localIdForExternal = async (
  req: PayloadRequest,
  tenantID: string,
  entity: PosEntity,
  externalID: string,
): Promise<string | null> => {
  const existing = await req.payload.find({
    collection: 'pos-maps',
    depth: 0,
    limit: 1,
    overrideAccess: true,
    pagination: false,
    req,
    where: tenantWhere(tenantID, {
      and: [{ entity: { equals: entity } }, { externalId: { equals: externalID } }],
    }),
  })
  const localId = existing.docs[0]?.localId
  return typeof localId === 'string' && localId ? localId : null
}
