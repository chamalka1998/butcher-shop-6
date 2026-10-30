import type { CollectionConfig } from 'payload'

import { adminOnly } from '@/access/adminOnly'

export const PosJobs: CollectionConfig = {
  slug: 'pos-jobs',
  admin: {
    group: 'Shop',
    defaultColumns: ['type', 'status', 'attempts', 'updatedAt'],
    description: 'Work waiting for the Lightspeed worker. A paid order queues pushSale. Replay does not create a second sale.',
  },
  access: {
    create: adminOnly,
    delete: adminOnly,
    read: adminOnly,
    update: adminOnly,
  },
  fields: [
    {
      name: 'type',
      type: 'select',
      required: true,
      options: [
        { label: 'Pull catalog', value: 'pullCatalog' },
        { label: 'Push sale', value: 'pushSale' },
        { label: 'Pull sale status', value: 'pullSaleStatus' },
        { label: 'Push fulfillment', value: 'pushFulfillment' },
        { label: 'Push product fields', value: 'pushProductFields' },
        { label: 'Pull customer', value: 'pullCustomer' },
      ],
    },
    {
      name: 'status',
      type: 'select',
      required: true,
      defaultValue: 'queued',
      options: [
        { label: 'Queued', value: 'queued' },
        { label: 'Running', value: 'running' },
        { label: 'Succeeded', value: 'succeeded' },
        { label: 'Failed', value: 'failed' },
      ],
    },
    { name: 'idempotencyKey', type: 'text', required: true, unique: true },
    { name: 'jobPayload', type: 'json' },
    { name: 'attempts', type: 'number', defaultValue: 0, admin: { readOnly: true } },
    { name: 'lastError', type: 'textarea', admin: { readOnly: true } },
  ],
}
