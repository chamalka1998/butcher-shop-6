'use client'

import type { Media, Product } from '@/payload-types'
import { mediaUrlOrPlaceholder, shouldBypassNextImageOptimizer } from '@/utilities/placeholderImage'
import Image from 'next/image'
import { useState } from 'react'

type Props = {
  product: Product
}

export default function ProductGallery({ product }: Props) {
  const gallery = (product.productGallery || [])
    .map((item) => item.image)
    .filter((image): image is Media => typeof image === 'object' && image !== null)

  const [activeIndex, setActiveIndex] = useState(0)

  const mainImage = gallery[activeIndex] ?? gallery[0]
  const thumbSlots = [1, 2, 3] as const
  const mainSrc = mediaUrlOrPlaceholder(mainImage?.url, 'gallery')

  return (
    <div className="product-gallery">
      {gallery.length > 1 && (
        <div className="product-thumbnails" aria-label="Product images">
          {gallery.map((image, index) => {
            const thumbSrc = mediaUrlOrPlaceholder(image.url, 'gallery')

            return (
              <button
                key={image.id || index}
                type="button"
                className={`product-thumbnail${activeIndex === index ? ' active' : ''}`}
                onClick={() => setActiveIndex(index)}
                aria-label={`Show product image ${index + 1}`}
                aria-pressed={activeIndex === index}
              >
                <Image
                  src={thumbSrc}
                  alt={image.alt || `${product.title} image ${index + 1}`}
                  fill
                  sizes="76px"
                  unoptimized={shouldBypassNextImageOptimizer(thumbSrc)}
                  className="object-cover"
                />
              </button>
            )
          })}
        </div>
      )}

      <div className="product-main-image">
        <Image
          src={mainSrc}
          alt={mainImage?.alt || product.title}
          fill
          sizes="(max-width: 850px) 100vw, 54vw"
          priority
          unoptimized={shouldBypassNextImageOptimizer(mainSrc)}
          className="object-cover"
        />
        {(product.shopCardLabel || product.badges?.[0]?.label) && (
          <span className="product-image-badge">
            {product.shopCardLabel || product.badges?.[0]?.label}
          </span>
        )}
      </div>
    </div>
  )
}
