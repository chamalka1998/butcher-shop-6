import type { Footer as FooterType } from '@/payload-types'
import { getCachedGlobal } from '@/utilities/getGlobals'
import Link from 'next/link'
import React from 'react'

export async function HomeFooter() {
  let footerData: FooterType | null = null

  try {
    footerData = await getCachedGlobal('footer', 1)()
  } catch {
    // use fallbacks below
  }

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
    <footer className="footer" id="footer">
      <div className="footer-inner">
        <div>
          <Link className="brand" href="/" style={{ marginBottom: '17px' }}>
            <span className="brand-mark">✦</span>
            <span className="brand-name">
              The Butcher&apos;s Craft
              <small>ARTISAN BUTCHERY</small>
            </span>
          </Link>
          <p>{brandDescription}</p>
        </div>

        <div className="footer-col">
          <h4>Explore</h4>
          <Link href="/shop">Shop all cuts</Link>
          <Link href="/about-us">Our story</Link>
          <Link href="/how-it-works">Delivery &amp; pickup</Link>
        </div>

        <div className="footer-col">
          <h4>Need a hand?</h4>
          <a href={`mailto:${contactEmail}`}>Contact us</a>
          <Link href="/contact-us">FAQs</Link>
          <Link href="/account">My account</Link>
        </div>

        <div className="footer-col">
          <h4>Visit</h4>
          <p style={{ whiteSpace: 'pre-line' }}>{contactAddress}</p>
          <p>{locationText}</p>
        </div>
      </div>

      <div className="footer-bottom">
        <span>© {currentYear} The Butcher&apos;s Craft. All rights reserved.</span>
        <span>Freshly prepared. Thoughtfully delivered.</span>
      </div>
    </footer>
  )
}
