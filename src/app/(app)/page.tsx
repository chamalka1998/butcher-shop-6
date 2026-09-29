import type { Metadata } from 'next'
import { DM_Sans, Playfair_Display } from 'next/font/google'
import Link from 'next/link'
import React from 'react'

import { homeStaticData } from '@/endpoints/seed/home-static'
import type { Footer as FooterType, Page } from '@/payload-types'
import { generateMeta } from '@/utilities/generateMeta'
import { getCachedGlobal } from '@/utilities/getGlobals'
import configPromise from '@payload-config'
import { getPayload } from 'payload'

import './home.css'

const dmSans = DM_Sans({
  subsets: ['latin'],
  weight: ['400', '500', '600', '700'],
  variable: '--font-dmsans',
  display: 'swap',
})

const playfair = Playfair_Display({
  subsets: ['latin'],
  weight: ['500', '600', '700'],
  variable: '--font-playfair',
  display: 'swap',
})

const DEFAULT_CUTS = [
  {
    title: 'Premium Ribeye Steak',
    badge: "Butcher's pick",
    meta: 'Beef · Signature cut',
    description: 'Rich marbling and a deep, savoury finish. Made for the grill.',
    price: '24.00',
    image:
      'https://images.unsplash.com/photo-1602470520998-f4a52199a3d6?auto=format&fit=crop&w=900&q=80',
    href: '/shop',
  },
  {
    title: 'Chicken Breast Fillet',
    badge: 'Everyday favourite',
    meta: 'Poultry · Lean cut',
    description: 'Boneless, skinless and carefully trimmed for easy cooking.',
    price: '12.50',
    image:
      'https://images.unsplash.com/photo-1604503468506-a8da13d82791?auto=format&fit=crop&w=900&q=80',
    href: '/shop',
  },
  {
    title: 'Maplewood Short Ribs',
    badge: 'Slow-cook ready',
    meta: "Beef · Butcher's selection",
    description: 'Generously portioned for a tender, comforting Sunday supper.',
    price: '18.00',
    image:
      'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=900&q=80',
    href: '/shop',
  },
]

function getProductImageUrl(product: any, fallbackUrl: string): string {
  if (product.image && typeof product.image === 'object' && product.image.url) {
    return product.image.url
  }
  if (
    product.productGallery?.[0]?.image &&
    typeof product.productGallery[0].image === 'object' &&
    product.productGallery[0].image.url
  ) {
    return product.productGallery[0].image.url
  }
  if (
    product.productGallery?.[0] &&
    typeof product.productGallery[0] === 'object' &&
    'url' in product.productGallery[0] &&
    product.productGallery[0].url
  ) {
    return product.productGallery[0].url as string
  }
  return fallbackUrl
}

function formatProductPrice(product: any, fallbackPrice: string): string {
  if (typeof product.priceInUSD === 'number') {
    return product.priceInUSD.toFixed(2)
  }
  if (typeof product.price === 'number') {
    return product.price.toFixed(2)
  }
  return fallbackPrice
}

export default async function HomePage() {
  let page: Page | null = null
  let products: any[] = []
  let footerData: FooterType | null = null

  try {
    const payload = await getPayload({ config: configPromise })

    const [pageResult, productsResult, footerGlobal] = await Promise.all([
      payload.find({
        collection: 'pages',
        depth: 2,
        limit: 1,
        where: { slug: { equals: 'home' } },
      }),
      payload.find({
        collection: 'products',
        depth: 1,
        limit: 3,
        sort: '-createdAt',
        where: { _status: { equals: 'published' } },
      }),
      getCachedGlobal('footer', 1)(),
    ])

    page = pageResult.docs?.[0] || null
    products = productsResult.docs || []
    footerData = footerGlobal
  } catch (error) {
    console.warn('[HomePage] Failed to fetch CMS data; using static fallbacks', error)
  }

  if (!page) {
    page = homeStaticData() as Page
  }

  // Hero data resolution
  const heroEyebrow = page?.hero?.eyebrow || 'Good food starts at the butcher'
  const heroHeading = page?.hero?.heading || 'Better cuts.\nBetter meals.'
  const heroDescription =
    page?.hero?.description ||
    'Thoughtfully sourced meat, expertly prepared and ready for your table. From weeknight favourites to the cut worth celebrating.'

  let heroPhotoUrl =
    'https://images.unsplash.com/photo-1607623814075-e51df1bdc82f?auto=format&fit=crop&w=1400&q=85'
  if (page?.hero?.media && typeof page.hero.media === 'object' && page.hero.media.url) {
    heroPhotoUrl = page.hero.media.url
  }

  // Craft section resolution from CMS blocks (AboutStory / InfoSection) if configured
  const aboutBlock = page?.layout?.find((b: any) => b.blockType === 'aboutStory') as any
  const infoBlock = page?.layout?.find((b: any) => b.blockType === 'infoSection') as any

  const craftEyebrow = infoBlock?.eyebrow || 'A little more care goes a long way'
  const craftHeading = aboutBlock?.title || infoBlock?.title || 'Good meat has a story.'
  const craftBody1 =
    aboutBlock?.lead ||
    infoBlock?.description ||
    'We work with trusted farms and producers who share our respect for quality and responsible sourcing. Every order is trimmed and packed by our team, with the same care we bring to our own kitchens.'
  const craftBody2 =
    aboutBlock?.body ||
    (infoBlock?.quote ? `“${infoBlock.quote}”` : null) ||
    'Because knowing where your food comes from should feel as good as sitting down to eat it.'

  let craftImageUrl =
    'https://images.unsplash.com/photo-1603048297172-c92544798d5a?auto=format&fit=crop&w=1200&q=85'
  const storyMedia = aboutBlock?.image || infoBlock?.image
  if (storyMedia && typeof storyMedia === 'object' && storyMedia.url) {
    craftImageUrl = storyMedia.url
  }

  // Products data resolution (map DB products with graceful fallback to default cuts)
  const displayProducts = [0, 1, 2].map((index) => {
    const dbProduct = products[index]
    const defaultCut = DEFAULT_CUTS[index]

    if (!dbProduct) return defaultCut

    const title = dbProduct.title || dbProduct.name || defaultCut.title
    const badge = dbProduct.shopCardLabel || dbProduct.tag || dbProduct.cutType || defaultCut.badge
    const meta = dbProduct.meatType
      ? `${dbProduct.meatType} · Signature cut`
      : dbProduct.origin || defaultCut.meta
    const description =
      dbProduct.shopCardShortDescription ||
      (typeof dbProduct.description === 'string' ? dbProduct.description : null) ||
      defaultCut.description
    const price = formatProductPrice(dbProduct, defaultCut.price)
    const image = getProductImageUrl(dbProduct, defaultCut.image)
    const href = dbProduct.slug ? `/products/${dbProduct.slug}` : defaultCut.href

    return {
      title,
      badge,
      meta,
      description,
      price,
      image,
      href,
    }
  })

  // Footer data resolution
  const brandDescription =
    footerData?.description ||
    'Fresh, high-quality cuts prepared with care and delivered to your door.'
  const contactEmail = footerData?.contactEmail || 'orders@butcherscraft.com'
  const contactAddress =
    footerData?.address || '123 Queen Street West\nToronto, ON M5H 2N2'
  const locationText =
    footerData?.bottomBar?.locationText || 'Delivering across Toronto & suburbs'
  const currentYear = new Date().getFullYear()

  return (
    <div className={`home-design ${dmSans.variable} ${playfair.variable}`}>
      <main id="top">
        {/* HERO SECTION */}
        <section className="hero">
          <div className="hero-copy">
            <div className="eyebrow">{heroEyebrow}</div>
            <h1>
              {heroHeading.includes('\n') ? (
                heroHeading.split('\n').map((line, i) => (
                  <React.Fragment key={i}>
                    {line}
                    {i === 0 && <br />}
                  </React.Fragment>
                ))
              ) : (
                heroHeading
              )}
            </h1>
            <p>{heroDescription}</p>

            <div className="hero-buttons">
              <Link className="button" href="/shop">
                Explore the collection <span>→</span>
              </Link>
              <a className="button outline" href="#craft">
                Meet your butcher
              </a>
            </div>

            <div className="proof">
              <div>
                <strong>01</strong> Responsibly sourced
              </div>
              <div>
                <strong>02</strong> Cut fresh to order
              </div>
              <div>
                <strong>03</strong> Delivered with care
              </div>
            </div>
          </div>

          <div className="hero-photo">
            <img
              src={heroPhotoUrl}
              alt="Freshly cut premium steaks prepared by a butcher"
            />
            <div className="photo-tag">
              <b>Crafted by hand.</b>
              <span>Quality you can see in every cut.</span>
            </div>
          </div>
        </section>

        {/* PRODUCTS / COLLECTION SECTION */}
        <section className="section cream" id="collection">
          <div className="section-inner">
            <div className="section-head">
              <div>
                <div className="eyebrow">The counter, online</div>
                <h2>Choose something exceptional.</h2>
              </div>
              <p>
                From everyday essentials to centre-of-the-table favourites, find your next great
                meal here.
              </p>
            </div>

            <div className="products">
              {displayProducts.map((product, index) => (
                <article className="product" key={index}>
                  <Link href={product.href}>
                    <div className="product-image">
                      <img src={product.image} alt={product.title} />
                      <span className="badge">{product.badge}</span>
                    </div>
                  </Link>

                  <div className="product-info">
                    <div className="product-meta">{product.meta}</div>
                    <h3>{product.title}</h3>
                    <p>{product.description}</p>
                    <div className="price-row">
                      <span>From ${product.price}</span>
                      <Link href={product.href}>Choose cut ↗</Link>
                    </div>
                  </div>
                </article>
              ))}
            </div>

            <div style={{ textAlign: 'center', marginTop: '30px' }}>
              <Link className="button outline" href="/shop">
                View all cuts <span>→</span>
              </Link>
            </div>
          </div>
        </section>

        {/* CRAFT SECTION */}
        <section className="section" id="craft">
          <div className="section-inner craft">
            <div className="craft-image">
              <img
                src={craftImageUrl}
                alt="A butcher carefully preparing quality meat"
              />
            </div>
            <div className="craft-copy">
              <div className="eyebrow">{craftEyebrow}</div>
              <h2>{craftHeading}</h2>
              <p>{craftBody1}</p>
              {craftBody2 && <p>{craftBody2}</p>}

              <div className="values">
                <div className="value">
                  <strong>Know the source</strong>
                  <span>Trusted partners, chosen with care.</span>
                </div>
                <div className="value">
                  <strong>Prepared by hand</strong>
                  <span>Expert cuts, made to order.</span>
                </div>
                <div className="value">
                  <strong>Made for your table</strong>
                  <span>Thoughtful portions and advice.</span>
                </div>
              </div>

              <Link className="button" href="/about-us">
                Our story <span>→</span>
              </Link>
            </div>
          </div>
        </section>

        {/* HOW IT WORKS / DELIVERY SECTION */}
        <section className="section cream" id="delivery">
          <div className="section-inner">
            <div className="eyebrow">From our counter to your kitchen</div>
            <h2>Easy to order. A pleasure to serve.</h2>

            <div className="steps">
              <div className="step">
                <div className="step-num">01 — PICK YOUR CUTS</div>
                <h3>Build your order</h3>
                <p>Browse the counter and choose the cuts and portions that suit your plans.</p>
              </div>

              <div className="step">
                <div className="step-num">02 — CHOOSE A TIME</div>
                <h3>Set your delivery</h3>
                <p>
                  Enter your postal code to see available delivery or pickup options in your area.
                </p>
              </div>

              <div className="step">
                <div className="step-num">03 — ENJOY THE GOOD STUFF</div>
                <h3>We’ll handle the rest</h3>
                <p>
                  Your order is freshly prepared, carefully packed and ready for your table.
                </p>
              </div>
            </div>
          </div>
        </section>

        {/* PROMO BANNER SECTION */}
        <section className="banner">
          <div className="banner-inner">
            <div>
              <h2>Make tonight a little more memorable.</h2>
              <p>Find the right cut for whatever’s cooking.</p>
            </div>
            <Link className="button" href="/shop">
              Shop the butcher&apos;s counter <span>→</span>
            </Link>
          </div>
        </section>
      </main>
    </div>
  )
}

export async function generateMetadata(): Promise<Metadata> {
  let page: Page | null = null

  try {
    const payload = await getPayload({ config: configPromise })
    const result = await payload.find({
      collection: 'pages',
      depth: 1,
      limit: 1,
      where: { slug: { equals: 'home' } },
    })
    page = result.docs?.[0] || null
  } catch (error) {
    console.warn('[HomePage] Failed to fetch metadata doc', error)
  }

  if (!page) {
    page = homeStaticData() as Page
  }

  return generateMeta({ doc: page })
}
