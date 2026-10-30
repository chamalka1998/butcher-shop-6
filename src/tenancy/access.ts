import type { AccessResult, PayloadRequest, Where } from 'payload'
import { getUserTenantIDs } from '@payloadcms/plugin-multi-tenant/utilities'

import { currentTenantSlug, resolveTenantIDBySlug } from './currentTenant'
import { isPlatformAdmin, isShopStaff } from './roles'

type TenantAccessArgs = {
  accessKey: string
  accessResult: AccessResult
  req: PayloadRequest
}

const tenantIDWhere = async (req: PayloadRequest): Promise<Where> => {
  const id = await resolveTenantIDBySlug(req, currentTenantSlug(req))
  return {
    tenant: {
      equals: id ?? 0,
    },
  }
}

const publishedWhere: Where = {
  _status: {
    equals: 'published',
  },
}

const andWhere = (left: AccessResult, right: Where): AccessResult => {
  if (left === true) return right
  if (left && typeof left === 'object') return { and: [left, right] }
  return right
}

const staffTenantWhere = (req: PayloadRequest): Where | false => {
  const ids = getUserTenantIDs(req.user as never)
  if (ids.length === 0) return false
  return {
    tenant: {
      in: ids,
    },
  }
}

const asShopStaff = (
  { accessKey, accessResult, req }: TenantAccessArgs,
  allowDelete = true,
): AccessResult | undefined => {
  const user = req.user
  if (isPlatformAdmin(user)) return accessResult
  if (!isShopStaff(user)) return undefined
  if (accessKey === 'delete' && !allowDelete) return false
  if (accessKey === 'create') return true
  return staffTenantWhere(req)
}

/**
 * Catalog and location reads stay public for the current shop.
 * Logged-in customers have no tenant membership, so the plugin would hide
 * these documents from them without this override.
 */
export const catalogTenantAccess =
  (whenCleared: 'published' | 'open') =>
  async ({ accessKey, accessResult, req }: TenantAccessArgs): Promise<AccessResult> => {
    const staffResult = asShopStaff({ accessKey, accessResult, req })
    if (staffResult !== undefined) return staffResult

    if (accessKey !== 'read' && accessKey !== 'readVersions') return accessResult

    const tenantWhere = await tenantIDWhere(req)
    if (accessResult === false) {
      if (whenCleared === 'published') return { and: [publishedWhere, tenantWhere] }
      return tenantWhere
    }

    return andWhere(accessResult, tenantWhere)
  }

/**
 * Orders, carts, and addresses. Customers keep ownership checks.
 * Shop staff see every document for their shops, not only their own purchases.
 */
export const buyerTenantAccess =
  (customerKeys: readonly string[], allowStaffDelete = false) =>
  ({ accessKey, accessResult, req }: TenantAccessArgs): AccessResult => {
    const staffResult = asShopStaff({ accessKey, accessResult, req }, allowStaffDelete)
    if (staffResult !== undefined) return staffResult

    const user = req.user
    if (!user || isPlatformAdmin(user)) return accessResult

    if (!customerKeys.includes(accessKey)) return false
    if (accessKey === 'create') return true

    return {
      customer: {
        equals: user.id,
      },
    }
  }

/** POS credentials stay with platform admins. Shop staff do not receive these rows. */
export const adminTenantAccess = ({ accessResult, req }: TenantAccessArgs): AccessResult => {
  if (isPlatformAdmin(req.user)) return accessResult
  return false
}

/** Admin-only collections such as transactions. Shop staff are limited to their shops. */
export const staffTenantAccess = (args: TenantAccessArgs): AccessResult => {
  const staffResult = asShopStaff(args, false)
  if (staffResult !== undefined) return staffResult
  return args.accessResult
}
