import { slugField } from 'payload'
import type { CollectionConfig } from 'payload'

import { adminOnly } from '@/access/adminOnly'
import { tenantSlugIndex } from '@/tenancy/constants'

export const PosTags: CollectionConfig = {
  slug: 'pos-tags',
  indexes: [tenantSlugIndex],
  access: {
    create: adminOnly,
    delete: adminOnly,
    read: () => true,
    update: adminOnly,
  },
  admin: {
    useAsTitle: 'title',
    group: 'Shop',
    description: 'Lightspeed tags for one shop. Catalog sync creates these and attaches them to the product.',
  },
  fields: [
    { name: 'title', type: 'text', required: true },
    slugField({ disableUnique: true, position: undefined }),
  ],
}
