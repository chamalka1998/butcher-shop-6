/** The current butcher shop until a host maps a request to another tenant. */
export const DEFAULT_TENANT_SLUG = 'default'

/**
 * Shop data that must not leak across butchers.
 * The multi-tenant plugin adds the `tenant` field. A later plugin scopes reads.
 */
export const TENANT_SCOPED_SLUGS = [
  'pages',
  'categories',
  'media',
  'products',
  'variants',
  'variantTypes',
  'variantOptions',
  'carts',
  'orders',
  'transactions',
  'addresses',
  'branches',
  'branch-inventory',
  'fulfillment-schedules',
  'branch-holidays',
  'pos-connections',
  'pos-maps',
  'pos-jobs',
  'pos-tags',
] as const

export type TenantScopedSlug = (typeof TENANT_SCOPED_SLUGS)[number]

export const tenantSlugIndex = {
  fields: ['tenant', 'slug'],
  unique: true,
}
