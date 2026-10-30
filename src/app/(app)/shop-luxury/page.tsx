import { LuxuryProductCard } from '@/components/Shop/LuxuryProductCard'
import type { ShopLuxuryPage } from '@/payload-types'
import configPromise from '@payload-config'
import { getPayload } from 'payload'
import './shop-luxury.css'

type ShopLuxuryPageExtras = ShopLuxuryPage & {
  itemsPerPage?: number | null
  filterSections?:
    | {
        title?: string | null
        options?: { label?: string | null }[] | null
      }[]
    | null
}

export default async function ShopLuxuryPage() {
  const payload = await getPayload({ config: configPromise })

  const pageData = (await payload.findGlobal({
    slug: 'shop-luxury-page',
    depth: 1,
  })) as ShopLuxuryPageExtras

  const products = await payload.find({
    collection: 'products',
    depth: 2,
    limit: pageData.itemsPerPage ?? 6,
    where: {
      featuredInShop: {
        equals: true,
      },
    },
  })

  const filterSections = pageData.filterSections ?? []

  return (
    <main className="luxury-shop-page">
      <div className="luxury-shop-inner">
        <header className="luxury-shop-heading">
          {pageData.eyebrow ? (
            <p className="luxury-shop-eyebrow">
              {pageData.eyebrow}
            </p>
          ) : null}

          {pageData.title ? (
            <h1>{pageData.title}</h1>
          ) : null}
        </header>

        <div className="luxury-shop-layout">
          <aside className="luxury-shop-filters">
            <div>
             {filterSections.map((section, i) => (
                <div className="luxury-shop-filter-section" key={i}>
                  <h2>
                    {section.title}
                  </h2>

                  <div className="luxury-shop-filter-options">
                    {section.options?.map((option, j) => (
                      <label key={j}>
                        <input type="checkbox" />
                        <span>{option.label}</span>
                      </label>
                    ))}
                  </div>
                </div>
              ))}
            </div>
          </aside>

          <section className="luxury-shop-products">
            <div className="luxury-shop-sort">
              <div>
                Sort by: {pageData.sortLabel || 'Recommended'}
              </div>
            </div>

            <div className="luxury-shop-grid">
              {products.docs.map((product) => (
                <LuxuryProductCard key={product.id} product={product} />
              ))}
            </div>
          </section>
        </div>
      </div>
    </main>
  )
}