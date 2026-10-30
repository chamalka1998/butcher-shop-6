import type { CollectionConfig } from 'payload'

import { adminOnly } from '@/access/adminOnly'
import { isPlatformAdmin, isShopStaff } from '@/tenancy/roles'

export const Tenants: CollectionConfig = {
  slug: 'tenants',
  admin: {
    useAsTitle: 'name',
    group: 'Shop',
    defaultColumns: ['name', 'slug', 'inventoryMode', 'status'],
    description: 'One butcher business. Branches are locations of a tenant, not tenants themselves.',
  },
  access: {
    create: adminOnly,
    update: adminOnly,
    delete: adminOnly,
    read: ({ req: { user } }) => {
      if (isPlatformAdmin(user) || isShopStaff(user)) return true
      return false
    },
  },
  fields: [
    {
      name: 'name',
      type: 'text',
      required: true,
    },
    {
      name: 'slug',
      type: 'text',
      required: true,
      unique: true,
      index: true,
    },
    {
      name: 'domain',
      type: 'text',
      admin: {
        description: 'Optional hostname for this shop, such as shop-a.example.com. Unused until host routing is turned on.',
      },
    },
    {
      name: 'inventoryMode',
      type: 'select',
      required: true,
      defaultValue: 'standalone',
      options: [
        { label: 'Standalone', value: 'standalone' },
        { label: 'Lightspeed X-Series', value: 'lightspeed-x' },
      ],
      admin: {
        description:
          'Standalone stock lives in this app. Lightspeed X-Series uses a POS connection: this app still counts stock, and Lightspeed receives the catalog and the paid sale.',
      },
    },
    {
      name: 'status',
      type: 'select',
      required: true,
      defaultValue: 'active',
      options: [
        { label: 'Active', value: 'active' },
        { label: 'Inactive', value: 'inactive' },
      ],
    },
  ],
}
