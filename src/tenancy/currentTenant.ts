import type { PayloadRequest } from 'payload'

import { DEFAULT_TENANT_SLUG } from './constants'

export const currentTenantSlug = (req: PayloadRequest): string => {
  const slug = req.context?.tenantSlug
  return typeof slug === 'string' && slug.length > 0 ? slug : DEFAULT_TENANT_SLUG
}

const relationshipID = (value: unknown): string | null => {
  if (value == null || value === '') return null
  if (typeof value === 'object' && value !== null && 'id' in value) {
    const id = (value as { id?: unknown }).id
    return id == null ? null : String(id)
  }
  return String(value)
}

export const resolveTenantIDBySlug = async (
  req: PayloadRequest,
  slug: string,
): Promise<number | string | null> => {
  const cacheKey = `tenantID:${slug}`
  const cached = req.context?.[cacheKey]
  if (typeof cached === 'number' || typeof cached === 'string') return cached

  const result = await req.payload.find({
    collection: 'tenants',
    depth: 0,
    limit: 1,
    overrideAccess: true,
    pagination: false,
    req,
    where: {
      slug: {
        equals: slug,
      },
    },
  })

  const id = result.docs[0]?.id ?? null
  if (id != null) req.context[cacheKey] = id
  return id
}

export { relationshipID }
