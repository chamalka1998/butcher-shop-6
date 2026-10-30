import type { CollectionBeforeOperationHook, Where } from 'payload'
import { getUserTenantIDs } from '@payloadcms/plugin-multi-tenant/utilities'

import { currentTenantSlug, resolveTenantIDBySlug } from './currentTenant'
import { isPlatformAdmin, isShopStaff } from './roles'

const READ_OPERATIONS = new Set(['read', 'count', 'readVersions', 'countVersions'])

/**
 * Local API calls bypass access. This still limits storefront reads to one shop.
 * Platform admins are left unscoped so the admin tenant selector can show each shop.
 */
export const scopeReadToTenant: CollectionBeforeOperationHook = async ({ args, operation, req }) => {
  if (!READ_OPERATIONS.has(operation)) return args
  if (req.context?.skipTenantScope) return args
  if (isPlatformAdmin(req.user)) return args

  let constraint: Where
  if (isShopStaff(req.user)) {
    const ids = getUserTenantIDs(req.user as never)
    constraint = {
      tenant: {
        in: ids.length > 0 ? ids : [0],
      },
    }
  } else {
    const id = await resolveTenantIDBySlug(req, currentTenantSlug(req))
    constraint = {
      tenant: {
        equals: id ?? 0,
      },
    }
  }

  const where = (args as { where?: Where }).where
  return {
    ...args,
    where: where ? { and: [where, constraint] } : constraint,
  }
}
