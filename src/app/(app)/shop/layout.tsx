import { ShopToolbar } from '@/components/Shop/ShopToolbar'
import configPromise from '@payload-config'
import { getPayload } from 'payload'
import React, { Suspense } from 'react'
import '../home.css'
import './shop.css'

export default async function ShopLayout({ children }: { children: React.ReactNode }) {
  const payload = await getPayload({ config: configPromise })

  const shopPage = await payload.findGlobal({
    slug: 'shop-page',
  })

  return (
    <Suspense fallback={null}>
      <div className="home-design">
        <main id="shop">
          {/* ── Breadcrumb + Title + Toolbar (client) ─────── */}
          <ShopToolbar
            shopTitle={shopPage.title || undefined}
            shopSubtitle={shopPage.introText || undefined}
          />

          {/* ── Product grid rendered by page.tsx ─────────── */}
          {children}

          <p className="shop-note">
            Product prices and availability may vary by location and selected portion. Confirm
            current details at checkout.
          </p>
        </main>
      </div>
    </Suspense>
  )
}