import type { Media as MediaType, Product } from '@/payload-types'

import { Media } from '@/components/Media'
import { Price } from '@/components/Price'
import { placeholderFor } from '@/utilities/placeholderImage'
import Link from 'next/link'
import React from 'react'

type Props = {
  product: Partial<Product> & {
    shopCardLabel?: string | null
    shopCardShortDescription?: string | null
    origin?: string | null
    cardButtonLabel?: string | null
    productGallery?: { image?: unknown }[] | null
    meatType?: string | null
    storageType?: string | null
    agingProcess?: string | null
    cutType?: string | null
  }
}

const meatTypeLabels: Record<string, string> = {
  beef: 'Beef',
  chicken: 'Poultry',
  turkey: 'Poultry',
  pork: 'Specialty',
  lamb: 'Specialty',
  seafood: 'Specialty',
  processed: 'Specialty',
}

const agingLabels: Record<string, string> = {
  'dry-aged': 'Dry-aged',
  'wet-aged': 'Wet-aged',
}

const cutTypeLabels: Record<string, string> = {
  'prime-rib': 'Prime Rib',
  'wagyu-strips': 'Wagyu Strips',
  'filet-mignon': 'Filet Mignon',
  tomahawk: 'Tomahawk',
}

const storageLabels: Record<string, string> = {
  fresh: 'Fresh cut',
  frozen: 'Frozen',
  chilled: 'Chilled',
  marinated: 'Marinated',
}

export const ShopProductCard: React.FC<Props> = ({ product }) => {
  const firstImage = product.productGallery?.[0]?.image
  const image: MediaType | null =
    typeof firstImage === 'object' && firstImage !== null ? (firstImage as MediaType) : null

  // Build the meta line e.g. "Beef · Signature cut"
  const meatLabel = product.meatType ? meatTypeLabels[product.meatType] || product.meatType : ''
  const cutLabel = product.cutType
    ? cutTypeLabels[product.cutType] || product.cutType
    : product.agingProcess
      ? agingLabels[product.agingProcess] || product.agingProcess
      : product.shopCardLabel || ''
  const metaLine = [meatLabel, cutLabel].filter(Boolean).join(' · ')

  // Rating / descriptor — use shopCardLabel as the "butcher's rating text"
  const ratingText = product.shopCardLabel || "Butcher's pick"

  // Tags — storage type + aging
  const tags: string[] = []
  if (product.storageType) tags.push(storageLabels[product.storageType] || product.storageType)
  if (product.agingProcess && product.agingProcess === 'dry-aged') tags.push('Dry-aged')
  if (tags.length === 0) tags.push('Cut to order')

  // Badge text
  const badgeText = product.shopCardLabel || 'Selection'

  return (
    <article className="shop-product-card">
      {/* Image */}
      <div className="shop-card-image">
        <Media
          fill
          className="relative h-full w-full"
          imgClassName="h-full w-full object-cover"
          resource={image ?? undefined}
          src={!image ? placeholderFor('product') : undefined}
          alt={product.title || 'Product image'}
        />
        <span className="shop-card-badge">{badgeText}</span>
      </div>

      {/* Body */}
      <div className="shop-card-body">
        {metaLine && <div className="shop-card-meta">{metaLine}</div>}

        <h3>
          <Link href={`/products/${product.slug}`} style={{ color: 'inherit' }}>
            {product.title}
          </Link>
        </h3>

        <div className="shop-card-rating" aria-label={ratingText}>
          ✦ <span>{ratingText}</span>
        </div>

        {product.shopCardShortDescription && (
          <p className="shop-card-desc">{product.shopCardShortDescription}</p>
        )}

        {tags.length > 0 && (
          <div className="shop-card-tags">
            {tags.map((tag) => (
              <span key={tag}>{tag}</span>
            ))}
          </div>
        )}

        <div className="shop-price-row">
          <span className="shop-price-col">
            {typeof product.priceInUSD === 'number' ? (
              <Price amount={product.priceInUSD} as="span" />
            ) : (
              '—'
            )}
            <small>Price shown on listing</small>
          </span>

          <Link className="shop-add-btn" href={`/products/${product.slug}`}>
            {product.cardButtonLabel || 'Add to bag +'}
          </Link>
        </div>
      </div>
    </article>
  )
}
