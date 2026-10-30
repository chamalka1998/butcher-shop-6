import type { CollectionConfig } from 'payload'

import { adminOnly } from '@/access/adminOnly'

export const PosMaps: CollectionConfig = {
  slug: 'pos-maps',
  admin: {
    group: 'Shop',
    defaultColumns: ['entity', 'localId', 'externalId'],
    description: 'Pairs a product, customer, or order in this shop with its Lightspeed id.',
  },
  indexes: [
    { fields: ['tenant', 'entity', 'localId'], unique: true },
    { fields: ['tenant', 'entity', 'externalId'], unique: true },
  ],
  access: {
    create: adminOnly,
    delete: adminOnly,
    read: adminOnly,
    update: adminOnly,
  },
  fields: [
    {
      name: 'entity',
      type: 'select',
      required: true,
      options: [
        { label: 'Product', value: 'product' },
        { label: 'Customer', value: 'customer' },
        { label: 'Order', value: 'order' },
        { label: 'Category', value: 'category' },
        { label: 'Tag', value: 'tag' },
      ],
    },
    { name: 'localId', type: 'text', required: true, index: true },
    { name: 'externalId', type: 'text', required: true, index: true },
  ],
}
