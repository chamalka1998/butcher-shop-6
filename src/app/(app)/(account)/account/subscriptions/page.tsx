import type { Media, Order, Product } from '@/payload-types'

import { mediaUrlOrPlaceholder } from '@/utilities/placeholderImage'
import { getPurchaseUnitPriceInCents } from '@/utilities/purchasePricing'
import configPromise from '@payload-config'
import { headers as getHeaders } from 'next/headers'
import { ArrowRight, CalendarDays, MapPin, Package, Repeat2 } from 'lucide-react'
import Link from 'next/link'
import { redirect } from 'next/navigation'
import { getPayload } from 'payload'

import './subscriptions.css'

export const dynamic = 'force-dynamic'

const formatMoney = (amount?: number | null) =>
  typeof amount === 'number'
    ? new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD',
      }).format(amount / 100)
    : '—'

const formatDate = (date?: string | null) =>
  date
    ? new Intl.DateTimeFormat('en-US', {
        month: 'long',
        day: 'numeric',
        year: 'numeric',
      }).format(new Date(date))
    : '—'

const getProductImage = (product?: Product | null): Media | undefined => {
  const image = product?.productGallery?.[0]?.image
  return image && typeof image === 'object' ? image : undefined
}

const getID = (value: unknown) => {
  if (typeof value === 'object' && value && 'id' in value) {
    return String((value as { id: string | number }).id)
  }

  return value ? String(value) : ''
}

const getLinePurchaseType = (order: Order, item: NonNullable<Order['items']>[number]) => {
  const productID = getID(item.product)
  const variantID = getID(item.variant)

  const line = order.purchaseTypes?.find((purchaseLine: any) => {
    const sameProduct = getID(purchaseLine.product) === productID
    const sameVariant = variantID ? String(purchaseLine.variant || '') === variantID : true

    return sameProduct && sameVariant
  }) as any

  if (line?.purchaseType === 'weekly' || line?.purchaseType === 'monthly') {
    return line.purchaseType
  }

  if (order.purchaseType === 'weekly' || order.purchaseType === 'monthly') {
    return order.purchaseType
  }

  return 'one_time'
}

export default async function SubscriptionsPage() {
  const headers = await getHeaders()
  const payload = await getPayload({ config: configPromise })
  const { user } = await payload.auth({ headers })

  if (!user) {
    redirect(`/login?warning=${encodeURIComponent('Please login to access your subscriptions.')}`)
  }

  const result = await payload.find({
    collection: 'orders',
    user,
    overrideAccess: false,
    depth: 3,
    limit: 50,
    sort: '-createdAt',
    where: {
      customer: {
        equals: user.id,
      },
    },
  })

  const orders = result.docs as Order[]

  const subscriptionItems = orders.flatMap((order) =>
    (order.items || [])
      .map((item, index) => {
        const product = typeof item.product === 'object' ? item.product : undefined
        const variant = typeof item.variant === 'object' ? item.variant : undefined
        const purchaseType = getLinePurchaseType(order, item)

        if (!product || (purchaseType !== 'weekly' && purchaseType !== 'monthly')) {
          return null
        }

        const unitPrice = getPurchaseUnitPriceInCents(product, variant, purchaseType)

        return {
          order,
          item,
          index,
          product,
          variant,
          purchaseType,
          amount: unitPrice * (item.quantity || 1),
        }
      })
      .filter(Boolean),
  )

  const weeklyCount = subscriptionItems.filter(
    (subscription) => subscription?.purchaseType === 'weekly',
  ).length
  const monthlyCount = subscriptionItems.filter(
    (subscription) => subscription?.purchaseType === 'monthly',
  ).length

  return (
    <div className="subscriptions-page">
      <header className="subscriptions-heading">
        <div>
          <p className="subscriptions-eyebrow">The Butcher&apos;s Craft · Your account</p>
          <h1>Subscriptions</h1>
          <p className="subscriptions-description">
            Your favourite cuts, ready when you are. Review your recurring selections and
            delivery details below.
          </p>
        </div>
        <Link className="subscriptions-shop-link" href="/shop">
          Discover more cuts <ArrowRight aria-hidden="true" size={16} />
        </Link>
      </header>

      <section aria-label="Subscription summary" className="subscriptions-summary">
        <div className="subscriptions-summary-item">
          <span className="subscriptions-summary-label">Recurring selections</span>
          <span className="subscriptions-summary-value">{subscriptionItems.length}</span>
        </div>
        <div className="subscriptions-summary-item">
          <span className="subscriptions-summary-label">Weekly</span>
          <span className="subscriptions-summary-value">{weeklyCount}</span>
        </div>
        <div className="subscriptions-summary-item">
          <span className="subscriptions-summary-label">Monthly</span>
          <span className="subscriptions-summary-value">{monthlyCount}</span>
        </div>
      </section>

      <section aria-labelledby="subscriptions-list-heading" className="subscriptions-section">
        <div className="subscriptions-section-heading">
          <div>
            <p className="subscriptions-section-kicker">Made for your table</p>
            <h2 id="subscriptions-list-heading">Your recurring selections</h2>
          </div>
          <span className="subscriptions-count">
            {subscriptionItems.length}{' '}
            {subscriptionItems.length === 1 ? 'selection' : 'selections'}
          </span>
        </div>

        {subscriptionItems.length === 0 ? (
          <div className="subscriptions-empty">
            <span className="subscriptions-empty-icon">
              <Package aria-hidden="true" size={24} />
            </span>
            <h3>Make room at the table.</h3>
            <p>
              Choose a weekly or monthly favourite when you shop and it will appear here.
            </p>
            <Link className="subscriptions-empty-link" href="/shop">
              Browse our cuts <ArrowRight aria-hidden="true" size={16} />
            </Link>
          </div>
      ) : (
        <div className="subscriptions-list">
          {subscriptionItems.map((subscription) => {
            if (!subscription) return null

            const { order, item, index, product, purchaseType, amount } = subscription
            const image = getProductImage(product)
            const fulfillment = order.fulfillment
            const address = order.shippingAddress
            const isMonthly = purchaseType === 'monthly'
            const frequency = isMonthly ? 'Monthly' : 'Weekly'
            const subscriptionID = order.stripeSubscriptionID || `#${order.id}`

            return (
              <article
                key={`${order.id}-${index}`}
                className="subscription-card"
              >
                <div className="subscription-image-wrap">
                  <img
                    src={mediaUrlOrPlaceholder(image?.url, 'product')}
                    alt={image?.alt || product?.title || 'Subscription product'}
                    className="subscription-image"
                  />
                  <span className="subscription-frequency">
                    <Repeat2 aria-hidden="true" size={13} />
                    {frequency} selection
                  </span>
                </div>

                <div className="subscription-content">
                  <div className="subscription-card-heading">
                    <div className="subscription-product-heading">
                      <p className="subscription-kicker">A regular favourite</p>
                      <h3>{product?.title || 'Subscription Box'}</h3>
                      <p className="subscription-id">Reference {subscriptionID}</p>
                    </div>

                    <div className="subscription-price-block">
                      <p className="subscription-price">
                        {formatMoney(amount)}
                        <span> / {isMonthly ? 'month' : 'week'}</span>
                      </p>
                      <p className="subscription-frequency-label">{frequency} subscription</p>
                    </div>
                  </div>

                  <div className="subscription-details">
                    <div className="subscription-detail">
                      <span className="subscription-detail-icon">
                        <CalendarDays aria-hidden="true" size={17} />
                      </span>
                      <div>
                        <p className="subscription-detail-label">Next delivery</p>
                        <p className="subscription-detail-value">
                          {formatDate(fulfillment?.date)}
                        </p>
                      </div>
                    </div>

                    <div className="subscription-detail">
                      <span className="subscription-detail-icon">
                        <MapPin aria-hidden="true" size={17} />
                      </span>
                      <div>
                        <p className="subscription-detail-label">Delivering to</p>
                        <p className="subscription-detail-value">
                          {address?.addressLine1
                            ? `${address.addressLine1}${address.city ? `, ${address.city}` : ''}`
                            : 'Address not specified'}
                        </p>
                      </div>
                    </div>
                  </div>

                  <div className="subscription-card-footer">
                    <span className="subscription-quantity">
                      Quantity <strong>{item.quantity || 1}</strong>
                    </span>
                    <Link
                      aria-label={`Manage ${product?.title || 'subscription'} in order ${order.id}`}
                      className="subscription-manage-link"
                      href={`/orders/${order.id}`}
                    >
                      Manage selection <ArrowRight aria-hidden="true" size={16} />
                    </Link>
                  </div>
                </div>
              </article>
            )
          })}
        </div>
        )}
      </section>
    </div>
  )
}
