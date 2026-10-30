import type { CollectionConfig, Config, Field, Plugin } from 'payload'

import { PosConnections } from '@/collections/PosConnections'
import { PosJobs } from '@/collections/PosJobs'
import { PosMaps } from '@/collections/PosMaps'
import { PosTags } from '@/collections/PosTags'
import { enqueueFulfillmentAfterComplete, enqueueProductFieldsAfterSave, enqueueSaleAfterPayment } from '@/pos/hooks'

const importedFromPos: Field = {
  name: 'importedFromPos',
  type: 'checkbox',
  defaultValue: false,
  admin: {
    position: 'sidebar',
    readOnly: true,
    description: 'Created from Lightspeed as a draft. Set the cut, aging, and origin, then publish.',
  },
}

const lightspeedFields: Field = {
  type: 'collapsible',
  label: 'Lightspeed',
  admin: { initCollapsed: true },
  fields: [
    { name: 'nameFr', type: 'text', label: 'French name' },
    { name: 'descriptionFr', type: 'textarea', label: 'French description' },
    { name: 'posCategory', type: 'relationship', relationTo: 'categories' },
    { name: 'posTags', type: 'relationship', relationTo: 'pos-tags', hasMany: true },
    {
      name: 'lightspeedImageUrl',
      type: 'text',
      admin: { readOnly: true, description: 'Last image URL copied from Lightspeed.' },
    },
    { name: 'lightspeedActive', type: 'checkbox', admin: { readOnly: true, description: 'Active flag from Lightspeed. This does not publish the product.' } },
    { name: 'enableSubscription', type: 'checkbox' },
    { name: 'subscriptionDiscount', type: 'number' },
    { name: 'visibilityDate', type: 'date' },
    { name: 'visibilityEndDate', type: 'date' },
    { name: 'maxBoxesPerDay', type: 'number', min: 0 },
    { name: 'priceMonthlyMenuDelivery', type: 'number', admin: { description: 'Whole number stored in Lightspeed.' } },
    { name: 'priceSubscriptionDelivery', type: 'number' },
    { name: 'priceMonthlyMenuPickup', type: 'number' },
    { name: 'priceSubscriptionPickup', type: 'number' },
    { name: 'descriptionMonthlyMenuDeliveryEn', type: 'textarea' },
    { name: 'descriptionSubscriptionDeliveryEn', type: 'textarea' },
    { name: 'descriptionMonthlyMenuPickupEn', type: 'textarea' },
    { name: 'descriptionSubscriptionPickupEn', type: 'textarea' },
    { name: 'descriptionMonthlyMenuDeliveryFr', type: 'textarea' },
    { name: 'descriptionSubscriptionDeliveryFr', type: 'textarea' },
    { name: 'descriptionMonthlyMenuPickupFr', type: 'textarea' },
    { name: 'descriptionSubscriptionPickupFr', type: 'textarea' },
    {
      name: 'onHandBoxDays',
      type: 'array',
      maxRows: 31,
      admin: { description: 'Remaining boxes for each day of the month. Saving sends these back to Lightspeed.' },
      fields: [
        { name: 'day', type: 'number', required: true, min: 1, max: 31 },
        { name: 'count', type: 'number', required: true, min: 0 },
      ],
    },
  ],
}

const lightspeedSale: Field = {
  name: 'lightspeedSale',
  type: 'group',
  admin: { position: 'sidebar' },
  fields: [
    { name: 'pickupUrl', type: 'text', admin: { description: 'Sent to Lightspeed as the sale QR code.' } },
    { name: 'deliveryTaskId', type: 'text' },
    { name: 'deliveryProof', type: 'textarea' },
  ],
}

const appendHook = <T>(hooks: T[] | undefined, hook: T): T[] => {
  if (hooks?.includes(hook)) return hooks
  return [...(hooks || []), hook]
}

const patchCollection = (collection: CollectionConfig): CollectionConfig => {
  if (collection.slug === 'transactions') {
    return {
      ...collection,
      hooks: {
        ...collection.hooks,
        afterChange: appendHook(collection.hooks?.afterChange, enqueueSaleAfterPayment),
      },
    }
  }

  if (collection.slug === 'orders') {
    const fields = collection.fields || []
    return {
      ...collection,
      fields: fields.some((field) => 'name' in field && field.name === 'lightspeedSale')
        ? fields
        : [...fields, lightspeedSale],
      hooks: {
        ...collection.hooks,
        afterChange: appendHook(collection.hooks?.afterChange, enqueueFulfillmentAfterComplete),
      },
    }
  }

  if (collection.slug === 'products') {
    const fields = collection.fields || []
    const next = fields.some((field) => 'name' in field && field.name === 'importedFromPos')
      ? fields
      : [...fields, importedFromPos, lightspeedFields]
    return {
      ...collection,
      fields: next,
      hooks: {
        ...collection.hooks,
        afterChange: appendHook(collection.hooks?.afterChange, enqueueProductFieldsAfterSave),
      },
    }
  }

  return collection
}

export const posPlugin: Plugin = (incomingConfig: Config): Config => {
  const collections = (incomingConfig.collections || []).map(patchCollection)
  const slugs = new Set(collections.map((collection) => collection.slug))

  return {
    ...incomingConfig,
    collections: [
      ...collections,
      ...(slugs.has('pos-connections') ? [] : [PosConnections]),
      ...(slugs.has('pos-maps') ? [] : [PosMaps]),
      ...(slugs.has('pos-jobs') ? [] : [PosJobs]),
      ...(slugs.has('pos-tags') ? [] : [PosTags]),
    ],
  }
}
