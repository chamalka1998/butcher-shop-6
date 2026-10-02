import type { Metadata } from 'next'
import { Suspense } from 'react'

import Breadcrumbs from '@/components/Breadcrumbs/Breadcrumbs'
import ProductDetails from '@/components/product/ProductDetails'
import ProductGallery from '@/components/product/ProductGallery'
import ProductReviews from '@/components/product/ProductReviews'
import configPromise from '@payload-config'
import { notFound } from 'next/navigation'
import { getPayload } from 'payload'

import '../../home.css'
import './product-page.css'

type Args = {
  params: Promise<{
    slug: string
  }>
}

export default async function ProductPage({ params }: Args) {
  const { slug } = await params

  if (!slug) return notFound()

  const product = await getProductBySlug(slug)

  if (!product) return notFound()

  return (
    <div className="home-design product-page">
      <div className="product-page-inner">
        <Breadcrumbs
          items={[
            { label: 'Home', href: '/' },
            { label: 'Shop', href: '/shop' },
            { label: product.title || 'Product' },
          ]}
        />
        <div className="product-layout">
          <div className="product-gallery-column">
            <ProductGallery product={product} />
          </div>
          <div className="product-details-column">
            <Suspense fallback={<div className="product-details-loading" />}>
              <ProductDetails product={product} />
            </Suspense>
          </div>
        </div>

        <section className="product-below">
          <div className="product-below-inner">
            <div>
              <div className="eyebrow">The butcher&apos;s note</div>
              <h2>Good ingredients deserve a little attention.</h2>
              <p>
                {product.shopCardShortDescription ||
                  'Prepared with care and ready to make a memorable meal.'}
              </p>
              {product.whatsInside && product.whatsInside.length > 0 && (
                <ul className="product-whats-inside">
                  {product.whatsInside.map((item, index) => (
                    <li key={item.id || index}>
                      <strong>{item.quantity}</strong>
                      <span>{item.label}</span>
                    </li>
                  ))}
                </ul>
              )}
            </div>
            <div>
              <div className="eyebrow">From our counter to your kitchen</div>
              <h2>Prepared with care.</h2>
              <p>
                Your cut is selected and packed with care, ready to bring something special to your
                table. Keep chilled and enjoy while fresh.
              </p>
            </div>
          </div>
        </section>

        {product.reviews?.length ? (
          <div className="product-reviews" id="reviews">
            <ProductReviews product={product} />
          </div>
        ) : null}
      </div>
    </div>
  )
}

export async function generateMetadata({ params }: Args): Promise<Metadata> {
  const { slug } = await params
  const product = await getProductBySlug(slug)

  return {
    title: product ? `${product.title} | The Butcher’s Craft` : 'Product | The Butcher’s Craft',
    description:
      product?.shopCardShortDescription ||
      'Discover premium cuts prepared with care by The Butcher’s Craft.',
  }
}

async function getProductBySlug(slug: string) {
  const payload = await getPayload({ config: configPromise })

  const result = await payload.find({
    collection: 'products',
    limit: 1,
    pagination: false,
    depth: 2,
    where: {
      slug: {
        equals: slug,
      },
    },
  })

  return result.docs?.[0] || null
}
