'use client'

import { createUrl } from '@/utilities/createUrl'
import { usePathname, useRouter, useSearchParams } from 'next/navigation'
import React, { useTransition } from 'react'

const MEAT_FILTERS = [
  { label: 'All cuts', value: 'all' },
  { label: 'Beef', value: 'beef' },
  { label: 'Poultry', value: 'poultry' },
  { label: 'Specialty', value: 'specialty' },
]

const SORT_OPTIONS = [
  { label: 'Featured', value: '-sortPriority' },
  { label: 'Price: low to high', value: 'priceInUSD' },
  { label: 'Price: high to low', value: '-priceInUSD' },
  { label: 'Name: A to Z', value: 'title' },
]

/**
 * Maps the UI filter value to the meatType param used by the server.
 * "poultry" → filters for chicken/turkey
 * "specialty" → filters for wagyu / pork / lamb / seafood / processed
 * "beef" → filters for beef
 */
function filterToMeatTypeParam(value: string): string | undefined {
  if (value === 'all' || value === '') return undefined
  return value
}

export function ShopToolbar({
  shopTitle,
  shopSubtitle,
}: {
  shopTitle?: string | null
  shopSubtitle?: string | null
}) {
  const router = useRouter()
  const pathname = usePathname()
  const searchParams = useSearchParams()
  const [, startTransition] = useTransition()

  // Derive the active UI filter from the current URL params.
  // We encode the filter as `meatFilter` so we don't conflict with the
  // existing `meatType` param that maps to exact DB values.
  const activeFilter = searchParams.get('meatFilter') || 'all'
  const currentSort = searchParams.get('sort') || '-sortPriority'
  const currentSearch = searchParams.get('q') || ''

  const updateParam = (key: string, value?: string) => {
    const params = new URLSearchParams(searchParams.toString())
    if (!value) {
      params.delete(key)
    } else {
      params.set(key, value)
    }
    params.delete('page')
    startTransition(() => {
      router.push(createUrl(pathname, params))
    })
  }

  const handleFilterClick = (value: string) => {
    const params = new URLSearchParams(searchParams.toString())

    if (value === 'all') {
      params.delete('meatFilter')
      params.delete('meatType')
    } else {
      params.set('meatFilter', value)
      // Map to the meatType values the server understands
      if (value === 'beef') {
        params.set('meatType', 'beef')
      } else if (value === 'poultry') {
        // Use a multi-value approach via 'meatType' – server already supports
        // single equals; we'll store the display-level filter and let the server
        // read meatFilter directly.
        params.set('meatType', 'chicken')
      } else if (value === 'specialty') {
        // Specialty maps to wagyu/pork/lamb/seafood etc.
        // We leave meatType unset and rely on meatFilter being read
        // on the server as a category indicator.
        params.delete('meatType')
      }
    }
    params.delete('page')
    startTransition(() => {
      router.push(createUrl(pathname, params))
    })
  }

  const handleSearch = (e: React.ChangeEvent<HTMLInputElement>) => {
    updateParam('q', e.target.value || undefined)
  }

  const handleSort = (e: React.ChangeEvent<HTMLSelectElement>) => {
    updateParam('sort', e.target.value)
  }

  return (
    <>
      {/* ── Intro ─────────────────────────────────────────── */}
      <section className="shop-intro">
        <nav className="shop-crumb" aria-label="Breadcrumb">
          <a href="/">Home</a>
          <span className="sep">/</span>
          Shop
        </nav>

        <div className="shop-title">
          <div>
            <div className="eyebrow">The butcher&apos;s counter</div>
            <h1>{shopTitle || 'Shop our cuts.'}</h1>
          </div>
          <p className="shop-subtitle">
            {shopSubtitle ||
              "Carefully sourced, expertly prepared and ready for your table. Find a new favourite or stock up on the classics."}
          </p>
        </div>
      </section>

      {/* ── Toolbar ───────────────────────────────────────── */}
      <section className="shop-toolbar" aria-label="Product filters and sorting">
        {/* Pill category filters */}
        <div className="shop-filters" role="group" aria-label="Filter by category">
          {MEAT_FILTERS.map((f) => (
            <button
              key={f.value}
              type="button"
              className={`shop-filter-btn${activeFilter === f.value ? ' active' : ''}`}
              aria-pressed={activeFilter === f.value}
              onClick={() => handleFilterClick(f.value)}
            >
              {f.label}
            </button>
          ))}
        </div>

        {/* Search + sort */}
        <div className="shop-controls">
          <label className="shop-searchbox" aria-label="Search products">
            <span aria-hidden="true">⌕</span>
            <input
              id="product-search"
              type="search"
              placeholder="Search the counter…"
              defaultValue={currentSearch}
              onChange={handleSearch}
            />
          </label>

          <label className="shop-sort-label" htmlFor="sort-by">
            Sort by
          </label>
          <select
            id="sort-by"
            className="shop-sort-select"
            value={currentSort}
            onChange={handleSort}
          >
            {SORT_OPTIONS.map((o) => (
              <option key={o.value} value={o.value}>
                {o.label}
              </option>
            ))}
          </select>
        </div>
      </section>
    </>
  )
}
