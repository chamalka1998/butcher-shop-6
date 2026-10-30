import { multiTenantPlugin } from '@payloadcms/plugin-multi-tenant'
import type { Config, Plugin } from 'payload'

import { assignTenantField } from './assignTenant'
import { adminTenantAccess, buyerTenantAccess, catalogTenantAccess, staffTenantAccess } from './access'
import { TENANT_SCOPED_SLUGS } from './constants'
import { isPlatformAdmin } from './roles'
import { scopeReadToTenant } from './scopeReadToTenant'

const published = catalogTenantAccess('published')
const open = catalogTenantAccess('open')
const cartBuyer = buyerTenantAccess(['create', 'read', 'update', 'delete'])
const addressBuyer = buyerTenantAccess(['create', 'read', 'update', 'delete'])
const orderBuyer = buyerTenantAccess(['read'])

export const tenantPlugins: Plugin[] = [
  multiTenantPlugin<Config>({
    collections: {
      pages: { accessResultOverride: published },
      categories: { accessResultOverride: open },
      media: { accessResultOverride: open },
      products: { accessResultOverride: published },
      variants: { accessResultOverride: published },
      variantTypes: { accessResultOverride: open },
      variantOptions: { accessResultOverride: open },
      carts: { accessResultOverride: cartBuyer },
      orders: { accessResultOverride: orderBuyer },
      transactions: { accessResultOverride: staffTenantAccess },
      addresses: { accessResultOverride: addressBuyer },
      branches: { accessResultOverride: open },
      'branch-inventory': { accessResultOverride: open },
      'fulfillment-schedules': { accessResultOverride: open },
      'branch-holidays': { accessResultOverride: open },
      'pos-connections': { accessResultOverride: adminTenantAccess },
      'pos-maps': { accessResultOverride: adminTenantAccess },
      'pos-jobs': { accessResultOverride: adminTenantAccess },
      'pos-tags': { accessResultOverride: open },
    },
    cleanupAfterTenantDelete: false,
    debug: true,
    tenantField: {
      hooks: {
        beforeChange: [assignTenantField],
      },
    },
    tenantsArrayField: {
      includeDefaultField: true,
    },
    userHasAccessToAllTenants: (user) => isPlatformAdmin(user),
  }),
  (incomingConfig) => {
    const scoped = new Set<string>(TENANT_SCOPED_SLUGS)

    return {
      ...incomingConfig,
      collections: (incomingConfig.collections || []).map((collection) => {
        if (!scoped.has(collection.slug)) return collection
        const beforeOperation = collection.hooks?.beforeOperation || []
        if (beforeOperation.includes(scopeReadToTenant)) return collection

        return {
          ...collection,
          hooks: {
            ...collection.hooks,
            beforeOperation: [...beforeOperation, scopeReadToTenant],
          },
        }
      }),
    }
  },
]
