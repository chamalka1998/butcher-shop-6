import { slugField } from 'payload'
import type { CollectionConfig } from 'payload'

import { adminOnly } from '@/access/adminOnly'
import { tenantSlugIndex } from '@/tenancy/constants'

export const Categories: CollectionConfig = {
  slug: 'categories',
  indexes: [tenantSlugIndex],
  access: {
    create: adminOnly,
    delete: adminOnly,
    read: () => true,
    update: adminOnly,
  },
  admin: {
    useAsTitle: 'title',
    group: 'Content',
  },
  fields: [
    {
      name: 'title',
      type: 'text',
      required: true,
    },
    slugField({
      disableUnique: true,
      position: undefined,
    }),
  ],
}
