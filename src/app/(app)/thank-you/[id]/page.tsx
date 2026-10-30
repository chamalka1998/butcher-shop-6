import type { Order } from '@/payload-types'

import { Media } from '@/components/Media'
import { getOrderLineProductImage } from '@/utilities/getOrderLineProductImage'
import { placeholderFor } from '@/utilities/placeholderImage'
import { getPurchaseUnitPriceInCents, PurchaseType } from '@/utilities/purchasePricing'
import { batchResolveOrderLinesForPricing } from '@/utilities/resolveOrderLinePricingDocs'
import configPromise from '@payload-config'
import { headers as getHeaders } from 'next/headers'
import Link from 'next/link'
import { notFound } from 'next/navigation'
import { getPayload } from 'payload'
import './thank-you.css'

export const dynamic = 'force-dynamic'

type PageProps = {
  params: Promise<{ id: string }>
  searchParams: Promise<{
    email?: string
    accessToken?: string
    purchaseType?: string
    shippingCharge?: string
    estimatedTax?: string
  }>
}

const formatMoney = (amount?: number | null) =>
  typeof amount === 'number'
    ? new Intl.NumberFormat('en-US', {
      style: 'currency',
      currency: 'USD',
    }).format(amount / 100)
    : ''

const formatDate = (date?: string | null) =>
  date
    ? new Intl.DateTimeFormat('en-US', {
      month: 'short',
      day: 'numeric',
      year: 'numeric',
    }).format(new Date(date))
    : ''

export default async function ThankYouPage({ params, searchParams }: PageProps) {
  const headers = await getHeaders()
  const payload = await getPayload({ config: configPromise })

  const { user } = await payload.auth({ headers })

  const { id } = await params


  const {
    email = '',
    accessToken = '',
    purchaseType: purchaseTypeFromUrl = '',
    shippingCharge: shippingChargeFromUrl = '',
    estimatedTax: estimatedTaxFromUrl = '',
  } = await searchParams

  const {
    docs: [order],
  } = await payload.find({
    collection: 'orders',
    user,
    overrideAccess: !Boolean(user),
    depth: 1,
    where: {
      and: [
        {
          id: {
            equals: id,
          },
        },
        ...(user
          ? [
            {
              customer: {
                equals: user.id,
              },
            },
          ]
          : [
            {
              accessToken: {
                equals: accessToken,
              },
            },
            ...(email
              ? [
                {
                  customerEmail: {
                    equals: email,
                  },
                },
              ]
              : []),
          ]),
      ],
    },
  })

  if (!order) {
    notFound()
  }

  const typedOrder = order as Order

  const linePricingDocs = await batchResolveOrderLinesForPricing(payload, typedOrder.items)

  const orderUrl = `/orders/${id}?${new URLSearchParams({
    ...(email ? { email } : {}),
    ...(accessToken ? { accessToken } : {}),
  }).toString()}`



  const purchaseTypeForPricing: PurchaseType =
    purchaseTypeFromUrl === 'weekly' ||
      purchaseTypeFromUrl === 'monthly' ||
      purchaseTypeFromUrl === 'one_time'
      ? purchaseTypeFromUrl
      : (typedOrder.purchaseType ?? 'one_time')


  const shippingChargeFromUrlNumber =
    shippingChargeFromUrl !== '' ? Number(shippingChargeFromUrl) : null

  const shippingTotal = Number.isFinite(shippingChargeFromUrlNumber)
    ? shippingChargeFromUrlNumber
    : typedOrder.fulfillment?.serviceType === 'delivery'
      ? Number(typedOrder.fulfillment?.shippingCharge || 0)
      : 0

  const fulfillmentWithTax = (typedOrder.fulfillment as
    | (typeof typedOrder.fulfillment & { estimatedTax?: number | null })
    | null
    | undefined)



  const itemsSubtotal =
    linePricingDocs.reduce((total, row) => {
      const { item, product, variant } = row

      if (!product) return total

      const unitPrice = getPurchaseUnitPriceInCents(product, variant, purchaseTypeForPricing)
      const quantity = item.quantity || 0

      return total + unitPrice * quantity
    }, 0) || 0


  const estimatedTaxFromUrlNumber =
    estimatedTaxFromUrl !== '' ? Number(estimatedTaxFromUrl) : null

  const estimatedTax =
    estimatedTaxFromUrlNumber !== null && Number.isFinite(estimatedTaxFromUrlNumber)
      ? estimatedTaxFromUrlNumber
      : Number(fulfillmentWithTax?.estimatedTax || 0)

  const safeShippingTotal = shippingTotal ?? 0
  const safeEstimatedTax = estimatedTax ?? 0

  const calculatedTotal = itemsSubtotal + safeShippingTotal + safeEstimatedTax

 
  const address = typedOrder.shippingAddress

  return (
    <main className="thank-you-page">
      <section className="thank-you-hero">
        <div className="thank-you-hero-content">
          <div aria-hidden="true" className="thank-you-check">
            ✓
          </div>
          <p className="thank-you-eyebrow">The Butcher&apos;s Craft · Order confirmed</p>
          <h1>
            Thank You for Your Order
          </h1>
          <p className="thank-you-intro">
            Your order{' '}
            <span>#{typedOrder.id}</span>{' '}
            is being prepared.
          </p>
        </div>
      </section>

      <section className="thank-you-content">
        <div className="thank-you-main">
          <div className="thank-you-summary">
            <div className="thank-you-summary-heading">
              <h2>
                Order Summary
              </h2>
              <p>
                Placed {formatDate(typedOrder.createdAt)}
              </p>
            </div>

            <div className="thank-you-items">
              {linePricingDocs.map(({ item, product, variant }, index) => {
                if (!product) return null

                const image = getOrderLineProductImage(product, variant)
                const unitPrice = getPurchaseUnitPriceInCents(
                  product,
                  variant,
                  purchaseTypeForPricing,
                )
                const quantity = item.quantity || 1
                const lineTotal = unitPrice * quantity

                return (
                  <div key={item.id || index} className="thank-you-item">
                    <div className="thank-you-item-image">
                      <Media
                        fill
                        imgClassName="object-cover"
                        resource={image}
                        src={!image ? placeholderFor('cart') : undefined}
                        alt={product.title || ''}
                      />
                    </div>

                    <div className="thank-you-item-details">
                      <h3>{product.title}</h3>

                      {purchaseTypeForPricing && purchaseTypeForPricing !== 'one_time' ? (
                        <p className="thank-you-item-subscription">
                          {purchaseTypeForPricing === 'monthly'
                            ? 'Monthly subscription'
                            : 'Weekly subscription'}
                        </p>
                      ) : null}

                      {variant?.title ? (
                        <p className="thank-you-item-variant">
                          {variant.title}
                        </p>
                      ) : null}
                    </div>

                    <div className="thank-you-item-price">
                      <p>{formatMoney(lineTotal)}</p>
                      <p>Qty: {quantity}</p>
                    </div>
                  </div>
                )
              })}
            </div>

            <div className="thank-you-totals">
              <div>
                <span>Subtotal</span>
                <span>{formatMoney(itemsSubtotal)}</span>
              </div>

              <div>
                <span>Shipping</span>
                {/* <span>{shippingTotal > 0 ? formatMoney(shippingTotal) : '0.00'}</span> */}
                <span>{formatMoney(shippingTotal)}</span>
              </div>

              <div>
                <span>Tax</span>
                <span>{formatMoney(estimatedTax)}</span>
              </div>

              <div className="thank-you-total">
                <span>Total Amount</span>
                <strong>{formatMoney(calculatedTotal)}</strong>
              </div>
            </div>
          </div>

          <div className="thank-you-actions">
            <Link
              href="/shop"
              className="thank-you-shop-link"
            >
              Return to Shop
            </Link>

            <Link
              href={orderUrl}
              className="thank-you-order-link"
            >
              View Order
            </Link>
          </div>
        </div>

        <aside className="thank-you-aside">
          <div className="thank-you-fulfillment">
            {typedOrder.fulfillment?.date ? (
              <div className="thank-you-arrival">
                <p className="thank-you-detail-label">
                  Estimated Arrival
                </p>
                <p className="thank-you-arrival-date">
                  {formatDate(typedOrder.fulfillment.date)}
                </p>
              </div>
            ) : null}

            {address ? (
              <div>
                <p className="thank-you-detail-label">
                  Shipping Address
                </p>

                <p className="thank-you-address">
                  {[address.firstName, address.lastName].filter(Boolean).join(' ')}
                  <br />
                  {address.addressLine1}
                  {address.addressLine2 ? (
                    <>
                      <br />
                      {address.addressLine2}
                    </>
                  ) : null}
                  <br />
                  {[address.city, address.state, address.postalCode].filter(Boolean).join(', ')}
                  <br />
                  {address.country}
                </p>
              </div>
            ) : null}
          </div>

          <div className="thank-you-quote">
            <p>
              “Every cut that leaves our atelier is a testament to heritage, craft, and the pursuit
              of culinary perfection.”
            </p>

            <div className="thank-you-attribution">
              <span aria-hidden="true" />
              <p>
                Artisan Curator
              </p>
            </div>
          </div>


        </aside>
      </section>
    </main>
  )
}