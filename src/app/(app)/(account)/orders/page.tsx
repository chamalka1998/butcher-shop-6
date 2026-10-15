import type { Order, Product } from '@/payload-types'
import type { Metadata } from 'next'

import { mergeOpenGraph } from '@/utilities/mergeOpenGraph'
import configPromise from '@payload-config'
import { headers as getHeaders } from 'next/headers'
import { ArrowRight, ChevronRight, Package, ShoppingBasket, Truck } from 'lucide-react'
import Link from 'next/link'
import { redirect } from 'next/navigation'
import { getPayload } from 'payload'

import './orders.css'

function formatOrderRef(id: number) {
  return `BC-${id}`
}

function formatMoney(amount?: number | null) {
  if (typeof amount !== 'number') return '—'
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
  }).format(amount / 100)
}

function formatOrderDate(iso?: string | null) {
  if (!iso) return '—'
  return new Intl.DateTimeFormat('en-US', {
    month: 'short',
    day: 'numeric',
    year: 'numeric',
  }).format(new Date(iso))
}

function getItemsLines(order: Order): { primary: string; secondary: string } {
  const items = order.items || []
  const withProducts = items.filter(
    (line) => line.product && typeof line.product === 'object',
  ) as { product: Product; quantity: number }[]

  if (withProducts.length === 0) {
    const totalQty = items.reduce((n, l) => n + (l.quantity || 0), 0)
    return {
      primary: 'Order items',
      secondary: totalQty > 0 ? `${totalQty} items total` : '—',
    }
  }

  const first = withProducts[0].product
  const primary = first.title || 'Order items'
  const lineCount = items.length
  const totalQty = items.reduce((n, l) => n + (l.quantity || 0), 0)

  if (lineCount === 1) {
    return {
      primary,
      secondary: totalQty <= 1 ? '1 item total' : `${totalQty} items total`,
    }
  }

  const additional = lineCount - 1
  return {
    primary,
    secondary: `+ ${additional} additional ${additional === 1 ? 'item' : 'items'}`,
  }
}

function StatusBadge({ status }: { status: Order['status'] }) {
  const s = status || 'processing'
  const label =
    s === 'completed'
      ? 'Delivered'
      : s === 'processing'
        ? 'Processing'
        : s === 'cancelled'
          ? 'Cancelled'
          : s === 'refunded'
            ? 'Refunded'
            : 'Processing'

  return (
    <span className={`orders-status orders-status--${s}`}>
      {label}
    </span>
  )
}

export default async function Orders() {
  const headers = await getHeaders()
  const payload = await getPayload({ config: configPromise })
  const { user } = await payload.auth({ headers })

  let orders: Order[] | null = null

  if (!user) {
    redirect(`/login?warning=${encodeURIComponent('Please login to access your orders.')}`)
  }

  try {
    const ordersResult = await payload.find({
      collection: 'orders',
      limit: 100,
      pagination: false,
      depth: 2,
      sort: '-createdAt',
      user,
      overrideAccess: false,
      where: {
        customer: {
          equals: user?.id,
        },
      },
    })

    orders = ordersResult?.docs || []
  } catch {
    orders = []
  }

  const completedOrders = orders.filter((order) => order.status === 'completed').length
  const activeOrders = orders.filter((order) => order.status === 'processing').length

  return (
    <div className="orders-page">
      <header className="orders-heading">
        <div>
          <p className="orders-eyebrow">The Butcher&apos;s Craft · Your account</p>
          <h1>Order history</h1>
          <p className="orders-description">
            Every good meal starts with a good cut. Keep track of your orders here.
          </p>
        </div>
        <Link className="orders-shop-link" href="/shop">
          Explore the shop <ArrowRight aria-hidden="true" size={16} />
        </Link>
      </header>

      <section aria-label="Order summary" className="orders-summary">
        <div className="orders-summary-item">
          <span className="orders-summary-label">All orders</span>
          <span className="orders-summary-value">{orders.length}</span>
        </div>
        <div className="orders-summary-item">
          <span className="orders-summary-label">In progress</span>
          <span className="orders-summary-value">{activeOrders}</span>
        </div>
        <div className="orders-summary-item">
          <span className="orders-summary-label">Completed</span>
          <span className="orders-summary-value">{completedOrders}</span>
        </div>
      </section>

      <section aria-labelledby="orders-list-heading" className="orders-section">
        <div className="orders-section-heading">
          <div>
            <p className="orders-section-kicker">A look back</p>
            <h2 id="orders-list-heading">Your orders</h2>
          </div>
          <span className="orders-count">
            {orders.length} {orders.length === 1 ? 'order' : 'orders'}
          </span>
        </div>

        {orders.length === 0 ? (
          <div className="orders-empty">
            <span className="orders-empty-icon">
              <Package aria-hidden="true" size={24} />
            </span>
            <h3>Your table is waiting.</h3>
            <p>Your orders will find a home here once you place your first one.</p>
            <Link className="orders-empty-link" href="/shop">
              Browse our cuts <ArrowRight aria-hidden="true" size={16} />
            </Link>
          </div>
        ) : (
          <div className="orders-list">
            {orders.map((order) => {
              const fulfillment = order.fulfillment
              const isDelivery = fulfillment?.serviceType === 'delivery'
              const isPickup = fulfillment?.serviceType === 'pickup'
              const { primary, secondary } = getItemsLines(order)
              const href = `/orders/${order.id}`

              return (
                <article className="orders-card" key={order.id}>
                  <div className="orders-card-heading">
                    <div>
                      <Link className="orders-reference" href={href}>
                        {formatOrderRef(order.id)}
                      </Link>
                      <p className="orders-date">{formatOrderDate(order.createdAt)}</p>
                    </div>
                    <StatusBadge status={order.status} />
                  </div>

                  <div className="orders-card-details">
                    <div className="orders-detail orders-detail-items">
                      <span className="orders-detail-label">In this order</span>
                      <span className="orders-detail-value">{primary}</span>
                      <span className="orders-detail-note">{secondary}</span>
                    </div>
                    <div className="orders-detail">
                      <span className="orders-detail-label">Fulfilment</span>
                      <span className="orders-fulfilment">
                        {isDelivery && <Truck aria-hidden="true" size={16} />}
                        {isPickup && <ShoppingBasket aria-hidden="true" size={16} />}
                        {isDelivery ? 'Delivery' : isPickup ? 'Pickup' : 'Not specified'}
                      </span>
                    </div>
                    <div className="orders-detail">
                      <span className="orders-detail-label">Order total</span>
                      <span className="orders-total">{formatMoney(order.amount)}</span>
                    </div>
                    <Link
                      aria-label={`View order ${formatOrderRef(order.id)}`}
                      className="orders-view-link"
                      href={href}
                    >
                      View order <ChevronRight aria-hidden="true" size={17} />
                    </Link>
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

export const metadata: Metadata = {
  description: 'Your orders.',
  openGraph: mergeOpenGraph({
    title: 'Orders',
    url: '/orders',
  }),
  title: 'Orders',
}
