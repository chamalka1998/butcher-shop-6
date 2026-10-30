import type { Payload } from 'payload'

import { DEFAULT_TENANT_SLUG } from './constants'

const TENANT_TABLES = [
  'addresses',
  'branch_holidays',
  'branch_inventory',
  'branches',
  'carts',
  'categories',
  'fulfillment_schedules',
  'media',
  'orders',
  'pages',
  'products',
  'transactions',
  'variant_options',
  'variant_types',
  'variants',
]

const VERSION_TABLES = ['_pages_v', '_products_v', '_variants_v']

const quoteIdent = (value: string) => `"${value.replaceAll('"', '""')}"`

export const ensureDefaultTenant = async (payload: Payload): Promise<void> => {
  const connectionString = process.env.DATABASE_URL?.trim()
  if (!connectionString) return

  const existing = await payload.find({
    collection: 'tenants',
    depth: 0,
    limit: 1,
    overrideAccess: true,
    where: {
      slug: {
        equals: DEFAULT_TENANT_SLUG,
      },
    },
  })

  const tenant =
    existing.docs[0] ||
    (await payload.create({
      collection: 'tenants',
      data: {
        name: 'Default shop',
        slug: DEFAULT_TENANT_SLUG,
        inventoryMode: 'standalone',
        status: 'active',
      },
      overrideAccess: true,
    }))

  const client = payload.db.pool

  try {
    for (const table of TENANT_TABLES) {
      await client.query(`UPDATE ${quoteIdent(table)} SET tenant_id = $1 WHERE tenant_id IS NULL`, [
        tenant.id,
      ])
    }

    for (const table of VERSION_TABLES) {
      await client.query(
        `UPDATE ${quoteIdent(table)} SET version_tenant_id = $1 WHERE version_tenant_id IS NULL`,
        [tenant.id],
      )
    }
  } catch (error) {
    const code = error && typeof error === 'object' && 'code' in error ? error.code : null
    // Column is absent until the schema push or migration has run.
    if (code !== '42703' && code !== '42P01') throw error
    payload.logger.warn(
      '[tenancy] Skipped default-shop backfill because tenant columns are not in the database yet.',
    )
  }
}
