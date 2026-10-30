import type { PayloadRequest, Where } from 'payload'

export const workerContext = {
  readPosSecrets: true,
  skipPosEnqueue: true,
  skipTenantScope: true,
} as const

export const idOf = (value: unknown): string | null => {
  if (value == null || value === '') return null
  if (typeof value === 'object' && value !== null && 'id' in value) {
    const id = (value as { id?: unknown }).id
    return id == null || id === '' ? null : String(id)
  }
  return String(value)
}

export const withTenant = async <T>(
  req: PayloadRequest,
  tenantID: number | string,
  run: () => Promise<T>,
): Promise<T> => {
  const previous = req.context.posTenantID
  req.context.posTenantID = tenantID
  try {
    return await run()
  } finally {
    req.context.posTenantID = previous
  }
}

export const tenantWhere = (tenantID: string, extra?: Where): Where => {
  const tenant: Where = { tenant: { equals: tenantID } }
  return extra ? { and: [tenant, extra] } : tenant
}
