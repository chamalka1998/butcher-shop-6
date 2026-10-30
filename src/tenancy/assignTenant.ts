import type { FieldHook, PayloadRequest } from 'payload'
import { getTenantFromCookie, getUserTenantIDs } from '@payloadcms/plugin-multi-tenant/utilities'

import { relationshipID, resolveTenantIDBySlug, currentTenantSlug } from './currentTenant'
import { isPlatformAdmin, isShopStaff } from './roles'

/**
 * Customers and guests cannot choose a shop. Platform admins can.
 * Shop staff can only keep a shop they belong to.
 */
export const assignTenantField: FieldHook = async ({ req, value }) => {
  const request = req as PayloadRequest
  const forced = request.context?.posTenantID
  if (typeof forced === 'number' || typeof forced === 'string') return forced

  const user = request.user

  if (isPlatformAdmin(user)) {
    if (relationshipID(value)) return value
    const fromCookie = getTenantFromCookie(request.headers, 'number')
    if (fromCookie) return fromCookie
    return resolveTenantIDBySlug(request, currentTenantSlug(request))
  }

  if (isShopStaff(user)) {
    const ids = getUserTenantIDs(user as never).map((id) => String(id))
    const requested = relationshipID(value)
    if (requested && ids.includes(requested)) return value
    if (ids.length === 1) return ids[0]
    throw new Error('Choose a shop you belong to.')
  }

  return resolveTenantIDBySlug(request, currentTenantSlug(request))
}
