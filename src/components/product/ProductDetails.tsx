'use client'

import { AddToCart } from '@/components/Cart/AddToCart'
import { Price } from '@/components/Price'
import type { Product, Variant } from '@/payload-types'
import { parsePriceOverride } from '@/utilities/purchasePricing'
import { useSearchParams } from 'next/navigation'
import { Suspense, useEffect, useMemo, useState } from 'react'

import { VariantSelector } from './VariantSelector'

type PurchaseType = 'one_time' | 'monthly'

type ProductWithUIFields = Product & {
  meta?: {
    description?: string | null
  } | null
}

type Props = {
  product: ProductWithUIFields
}

function labelFor(value?: string | null) {
  if (!value) return null

  return value
    .split('-')
    .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
    .join(' ')
}

export default function ProductDetails({ product }: Props) {
  const searchParams = useSearchParams()
  const frequencies = product.purchaseFrequencies
  const variants = product.variants?.docs?.filter(
    (variant): variant is Variant => typeof variant === 'object',
  )
  const selectedVariantId = searchParams.get('variant')
  const selectedVariant = variants?.find((variant) => String(variant.id) === selectedVariantId)

  const purchaseOptions = useMemo(
    () => [
      ...(frequencies?.oneTime?.enabled !== false
        ? [
            {
              label: 'One-time',
              value: 'one_time' as PurchaseType,
              price: frequencies?.oneTime?.priceOverride,
            },
          ]
        : []),
      ...(frequencies?.monthly?.enabled !== false
        ? [
            {
              label: 'Monthly',
              value: 'monthly' as PurchaseType,
              price: frequencies?.monthly?.priceOverride,
              subtext: frequencies?.monthly?.savingsText,
            },
          ]
        : []),
    ],
    [frequencies],
  )

  const [purchaseType, setPurchaseType] = useState<PurchaseType>(
    purchaseOptions[0]?.value || 'one_time',
  )
  const [quantity, setQuantity] = useState(1)

  useEffect(() => {
    if (
      purchaseOptions.length > 0 &&
      !purchaseOptions.some((option) => option.value === purchaseType)
    ) {
      setPurchaseType(purchaseOptions[0].value)
    }
  }, [purchaseOptions, purchaseType])

  const activePurchase = purchaseOptions.find((option) => option.value === purchaseType)
  const basePrice = selectedVariant?.priceInUSD ?? product.priceInUSD
  const price = parsePriceOverride(activePurchase?.price) ?? basePrice
  const facts = [
    labelFor(product.meatType),
    labelFor(product.agingProcess),
    labelFor(product.origin),
  ].filter((fact): fact is string => Boolean(fact))
  const description =
    product.meta?.description ||
    product.shopCardShortDescription ||
    'Prepared with care and ready to make a memorable meal.'
  const reviewCount = product.reviews?.length || 0
  const averageRating = reviewCount
    ? product.reviews!.reduce((total, review) => total + (review.rating || 5), 0) / reviewCount
    : 0

  return (
    <div className="product-details">
      <div className="eyebrow">
        {product.eyebrow ||
          [labelFor(product.meatType), 'Signature cut'].filter(Boolean).join(' · ')}
      </div>
      <h1>{product.title}</h1>

      {reviewCount > 0 ? (
        <div className="product-rating">
          <span className="product-stars" aria-label={`${averageRating.toFixed(1)} out of 5 stars`}>
            {'★'.repeat(Math.round(averageRating))}
          </span>
          <span>
            {averageRating.toFixed(1)} · {reviewCount} customer reviews
          </span>
          <a href="#reviews">Read reviews</a>
        </div>
      ) : (
        <div className="product-rating product-rating-note">
          <span>Prepared with care by our butchers</span>
        </div>
      )}

      <div className="product-price">{typeof price === 'number' && <Price amount={price} />}</div>
      <div className="product-unit">Price shown for this selection</div>
      <p className="product-intro">{description}</p>

      {facts.length > 0 && (
        <div className="product-facts">
          {facts.map((fact) => (
            <span className="product-fact" key={fact}>
              {fact}
            </span>
          ))}
        </div>
      )}

      <section className="product-about" id="details">
        <h2>About this cut</h2>
        <p>{description}</p>
      </section>

      {product.enableVariants && (
        <div className="product-variant-selection">
          <span className="product-option-label">Choose your cut</span>
          <Suspense fallback={null}>
            <VariantSelector product={product} />
          </Suspense>
        </div>
      )}

      {purchaseOptions.length > 0 && (
        <fieldset className="product-purchase-options">
          <legend className="product-option-label">Purchase type</legend>
          <div className="product-purchase-grid">
            {purchaseOptions.map((option) => (
              <button
                aria-pressed={purchaseType === option.value}
                className={`product-purchase-option${purchaseType === option.value ? ' active' : ''}`}
                key={option.value}
                onClick={() => setPurchaseType(option.value)}
                type="button"
              >
                <b>{option.label}</b>
                <span>
                  {option.price ||
                    (typeof basePrice === 'number' ? (
                      <Price as="span" amount={basePrice} />
                    ) : (
                      'Price on request'
                    ))}
                </span>
                {option.subtext && <small>{option.subtext}</small>}
              </button>
            ))}
          </div>
        </fieldset>
      )}

      <div className="product-quantity-add">
        <div className="product-quantity" aria-label="Quantity">
          <button
            aria-label="Decrease quantity"
            disabled={quantity <= 1}
            onClick={() => setQuantity((current) => Math.max(1, current - 1))}
            type="button"
          >
            −
          </button>
          <output aria-live="polite">{quantity}</output>
          <button
            aria-label="Increase quantity"
            onClick={() => setQuantity((current) => current + 1)}
            type="button"
          >
            +
          </button>
        </div>
        <Suspense fallback={<div className="product-add-button">Add to cart</div>}>
          <AddToCart
            className="product-add-button"
            product={product}
            purchaseType={purchaseType}
            quantity={quantity}
          />
        </Suspense>
      </div>
      <p className="product-delivery-note">
        Freshly prepared for your order · <strong>Delivering across Toronto &amp; suburbs</strong>
      </p>
    </div>
  )
}
