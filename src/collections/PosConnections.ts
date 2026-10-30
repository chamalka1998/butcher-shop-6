import type { CollectionBeforeChangeHook, CollectionConfig } from 'payload'

import { adminOnly } from '@/access/adminOnly'
import { enqueuePosJob } from '@/pos/enqueue'
import { secretFieldHooks } from '@/pos/secrets'

const normalizePrefix = (value: unknown): string => {
  return String(value || '')
    .trim()
    .replace(/^https?:\/\//, '')
    .replace(/\.retail\.lightspeed\.app.*$/, '')
    .replace(/\/.*$/, '')
}

const prepareConnection: CollectionBeforeChangeHook = ({ data, originalDoc, req }) => {
  if (!data) return data
  if ('storePrefix' in data) data.storePrefix = normalizePrefix(data.storePrefix)

  const token = typeof data.accessToken === 'string' ? data.accessToken : originalDoc?.accessToken
  const prefix = typeof data.storePrefix === 'string' ? data.storePrefix : originalDoc?.storePrefix
  if (!originalDoc || 'accessToken' in data || 'storePrefix' in data) {
    data.hasAccessToken = Boolean(token)
    data.status = prefix && token ? 'ready' : 'disconnected'
  }
  if ('webhookSecret' in data || !originalDoc) {
    const secret = typeof data.webhookSecret === 'string' ? data.webhookSecret : originalDoc?.webhookSecret
    data.hasWebhookSecret = Boolean(secret)
  }
  if (data.runCatalogSync) {
    data.runCatalogSync = false
    req.context.queueCatalogSync = true
  }
  return data
}

export const PosConnections: CollectionConfig = {
  slug: 'pos-connections',
  admin: {
    group: 'Shop',
    useAsTitle: 'storePrefix',
    defaultColumns: ['storePrefix', 'status', 'hasAccessToken', 'lastCatalogSyncAt'],
    description: 'Lightspeed X-Series for one shop. The token is saved encrypted and is not shown again.',
  },
  access: {
    create: adminOnly,
    delete: adminOnly,
    read: adminOnly,
    update: adminOnly,
  },
  hooks: {
    beforeChange: [prepareConnection],
    afterChange: [
      async ({ doc, req }) => {
        if (!req.context.queueCatalogSync) return doc
        req.context.queueCatalogSync = undefined
        const tenantID = typeof doc.tenant === 'object' && doc.tenant ? doc.tenant.id : doc.tenant
        if (!tenantID) return doc
        await enqueuePosJob(req, {
          idempotencyKey: `tenant:${tenantID}:pullCatalog`,
          rerun: true,
          tenantID: String(tenantID),
          type: 'pullCatalog',
        })
        return doc
      },
    ],
  },
  fields: [
    {
      name: 'provider',
      type: 'select',
      required: true,
      defaultValue: 'lightspeed-x',
      options: [{ label: 'Lightspeed X-Series', value: 'lightspeed-x' }],
    },
    {
      name: 'storePrefix',
      type: 'text',
      required: true,
      admin: { description: 'The name in {name}.retail.lightspeed.app. For Filet Gourmet this was filetgourmet.' },
    },
    {
      name: 'accessToken',
      type: 'text',
      admin: { description: 'Personal token. Leave blank to keep the saved token. Paste a new token to replace it.' },
      hooks: secretFieldHooks('accessToken'),
    },
    {
      name: 'hasAccessToken',
      type: 'checkbox',
      admin: { readOnly: true, description: 'A token is saved.' },
    },
    {
      name: 'webhookSecret',
      type: 'text',
      admin: {
        description: 'Shared secret for x-pos-signature on /api/pos/lightspeed/webhook. Leave blank to keep the saved secret.',
      },
      hooks: secretFieldHooks('webhookSecret'),
    },
    {
      name: 'hasWebhookSecret',
      type: 'checkbox',
      admin: { readOnly: true },
    },
    {
      name: 'cashierId',
      type: 'text',
      admin: { description: 'Lightspeed user id for the cashier on web sales.' },
    },
    {
      name: 'taxId',
      type: 'text',
      admin: { description: 'Lightspeed tax id. Filet Gourmet used the tax named No Tax.' },
    },
    {
      name: 'paymentTypeId',
      type: 'text',
      admin: { description: 'Lightspeed payment type id. Filet Gourmet used Online Payments.' },
    },
    {
      name: 'branch',
      type: 'relationship',
      relationTo: 'branches',
      admin: { description: 'Local branch these sales belong to. Stock stays on this branch.' },
    },
    {
      name: 'status',
      type: 'select',
      required: true,
      defaultValue: 'disconnected',
      options: [
        { label: 'Disconnected', value: 'disconnected' },
        { label: 'Ready', value: 'ready' },
      ],
      admin: { readOnly: true },
    },
    {
      name: 'runCatalogSync',
      type: 'checkbox',
      defaultValue: false,
      admin: { description: 'Save to pull Lightspeed products. Online Visibility products are created as drafts.' },
    },
    {
      name: 'catalogCursor',
      type: 'text',
      admin: { readOnly: true, description: 'Set while a large catalog still has pages left.' },
    },
    {
      name: 'lastCatalogSyncAt',
      type: 'date',
      admin: { readOnly: true, date: { pickerAppearance: 'dayAndTime' } },
    },
    {
      name: 'lastError',
      type: 'textarea',
      admin: { readOnly: true },
    },
  ],
}
