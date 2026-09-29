import { ShopProductCard } from '@/components/Shop/ShopProductCard'
import configPromise from '@payload-config'
import { getPayload } from 'payload'
import React from 'react'
import type { Where } from 'payload'

export const metadata = {
  description:
    'Explore premium beef, poultry, lamb and butcher\'s selections, freshly prepared to order.',
  title: 'Shop the Counter | The Butcher\'s Craft',
}

type SearchParams = { [key: string]: string | string[] | undefined }

type Props = {
  searchParams: Promise<SearchParams>
}

export default async function ShopPage({ searchParams }: Props) {
  const {
    q: searchValue,
    sort,
    meatType,
    meatFilter,
    storageType,
    preparationStyle,
    inStock,
    minPrice,
    maxPrice,
    category,
  } = await searchParams

  const payload = await getPayload({ config: configPromise })

  const shopPage = await payload.findGlobal({
    slug: 'shop-page',
  })

  const where: Where = {
    and: [
      {
        _status: {
          equals: 'published',
        },
      },
      {
        featuredInShop: {
          equals: true,
        },
      },
    ],
  }

  const andConditions = where.and as Record<string, unknown>[]

  if (searchValue) {
    andConditions.push({
      or: [
        {
          title: {
            like: String(searchValue),
          },
        },
        {
          shopCardShortDescription: {
            like: String(searchValue),
          },
        },
        {
          shopCardLabel: {
            like: String(searchValue),
          },
        },
      ],
    })
  }

  // Resolve the meatType filter — the toolbar sets both `meatFilter` (UI) and `meatType` (DB).
  // Prefer the explicit meatType param; fall back to deriving from meatFilter.
  const resolvedMeatType = meatType
    ? String(meatType)
    : meatFilter && meatFilter !== 'all'
      ? meatFilter === 'poultry'
        ? 'chicken'
        : meatFilter === 'specialty'
          ? undefined // specialty covers many — no single meatType value
          : String(meatFilter)
      : undefined

  if (resolvedMeatType) {
    andConditions.push({
      meatType: {
        equals: resolvedMeatType,
      },
    })
  }

  if (storageType) {
    andConditions.push({
      storageType: {
        equals: String(storageType),
      },
    })
  }

  if (preparationStyle) {
    andConditions.push({
      preparationStyle: {
        equals: String(preparationStyle),
      },
    })
  }

  if (inStock === 'true') {
    andConditions.push({
      inStock: {
        equals: true,
      },
    })
  }

  if (category) {
    andConditions.push({
      categories: {
        in: [String(category)],
      },
    })
  }

  if (minPrice || maxPrice) {
    const priceCondition: Record<string, number> = {}

    if (minPrice) priceCondition.greater_than_equal = Number(minPrice)
    if (maxPrice) priceCondition.less_than_equal = Number(maxPrice)

    andConditions.push({
      priceInUSD: priceCondition,
    })
  }

  const products = await payload.find({
    collection: 'products',
    draft: false,
    overrideAccess: false,
    sort: sort ? String(sort) : '-sortPriority',
    where,
    select: {
      title: true,
      slug: true,
      gallery: true,
      productGallery: true,
      priceInUSD: true,
      meta: true,
      shopCardLabel: true,
      shopCardShortDescription: true,
      origin: true,
      cardButtonLabel: true,
      featuredInShop: true,
      cutType: true,
      agingProcess: true,
      categories: true,
      meatType: true,
      storageType: true,
      preparationStyle: true,
      inStock: true,
    },
  })

  const count = products.docs.length
  const resultsLabel =
    count === 1
      ? shopPage.resultsLabelSingle || 'cut'
      : shopPage.resultsLabelPlural || 'cuts'

  return (
    <section className="shop-content">
      {/* Result count */}
      <p className="shop-result-count" aria-live="polite">
        {count} {resultsLabel}
        {searchValue ? (
          <>
            {' '}for <strong>&ldquo;{String(searchValue)}&rdquo;</strong>
          </>
        ) : null}
      </p>

      {/* Product grid */}
      <div className="shop-products-grid">
        {products.docs.length > 0
          ? products.docs.map((product) => (
              <ShopProductCard key={product.id} product={product} />
            ))
          : null}

        {products.docs.length === 0 && (
          <div className="shop-no-results">
            <strong>No cuts found</strong>
            {searchValue
              ? `No products match "${String(searchValue)}". Try a different search.`
              : shopPage.emptyStateText ||
                'No products found. Please try different filters.'}
          </div>
        )}
      </div>
    </section>
  )
}