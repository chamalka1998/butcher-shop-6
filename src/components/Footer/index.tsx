import { FooterMenu } from '@/components/Footer/menu'
import { FooterSocialLink } from '@/components/Footer/FooterSocialLink'
import type { Footer as FooterType } from '@/payload-types'
import { Media } from '@/components/Media'
import { getCachedGlobal } from '@/utilities/getGlobals'
import Link from 'next/link'
import { Suspense } from 'react'
import { FooterWrapper } from './FooterWrapper'
import './index.css'

export async function Footer() {
  let footer: FooterType | null = null

  try {
    footer = await getCachedGlobal('footer', 1)()
  } catch {
    // fallback gracefully
  }

  const menu = footer?.navItems || []
  const socialLinks = footer?.socialLinks || []
  const currentYear = new Date().getFullYear()

  const brandDescription =
    footer?.description ||
    'Fresh, high-quality cuts prepared with care and delivered to your door.'
  const contactEmail = footer?.contactEmail || 'orders@butcherscraft.com'
  const contactAddress =
    footer?.address || '123 Queen Street West\nToronto, ON M5H 2N2'
  const locationText =
    footer?.bottomBar?.locationText || 'Delivering across Toronto & suburbs'

  return (
    <FooterWrapper>
      <footer className="site-footer" id="footer">
        <div className="site-footer-inner">
          {/* Brand Info */}
          <div>
            <Link className="site-brand" href="/">
              {footer?.logo && typeof footer.logo === 'object' && footer.logo.url ? (
                <Media
                  resource={footer.logo}
                  alt={footer.brandName || "The Butcher's Craft"}
                  imgClassName="h-10 w-auto object-contain"
                />
              ) : (
                <>
                  <span className="site-brand-mark">✦</span>
                  <span className="site-brand-name">
                    {footer?.brandName || "The Butcher's Craft"}
                    <small>ARTISAN BUTCHERY</small>
                  </span>
                </>
              )}
            </Link>
            <p>{brandDescription}</p>

            {socialLinks.length > 0 && (
              <div className="site-footer-socials">
                {socialLinks.map(({ id, link }) => (
                  <FooterSocialLink key={id} link={link} />
                ))}
              </div>
            )}
          </div>

          {/* Explore column */}
          <div className="site-footer-col">
            <h4>Explore</h4>
            {menu.length > 0 ? (
              <Suspense fallback={null}>
                <FooterMenu menu={menu} />
              </Suspense>
            ) : (
              <>
                <Link href="/shop">Shop all cuts</Link>
                <Link href="/about-us">Our story</Link>
                <Link href="/how-it-works">Delivery &amp; pickup</Link>
              </>
            )}
          </div>

          {/* Need a hand? column */}
          <div className="site-footer-col">
            <h4>Need a hand?</h4>
            <a href={`mailto:${contactEmail}`}>Contact us</a>
            {footer?.contactPhone && (
              <a href={`tel:${footer.contactPhone}`}>{footer.contactPhone}</a>
            )}
            <Link href="/contact-us">FAQs</Link>
            <Link href="/account">My account</Link>
          </div>

          {/* Visit column */}
          <div className="site-footer-col">
            <h4>Visit</h4>
            <p style={{ whiteSpace: 'pre-line' }}>{contactAddress}</p>
            <p>{locationText}</p>
          </div>
        </div>

        {/* Bottom bar */}
        <div className="site-footer-bottom">
          <span>
            {footer?.bottomBar?.legalText ||
              `© ${currentYear} ${footer?.brandName || "The Butcher's Craft"}. All rights reserved.`}
          </span>
          <span>
            {footer?.bottomBar?.creditLabel ? (
              footer.bottomBar.creditUrl ? (
                <a
                  href={footer.bottomBar.creditUrl}
                  target="_blank"
                  rel="noopener noreferrer"
                >
                  {footer.bottomBar.creditLabel}
                </a>
              ) : (
                footer.bottomBar.creditLabel
              )
            ) : (
              'Freshly prepared. Thoughtfully delivered.'
            )}
          </span>
        </div>
      </footer>
    </FooterWrapper>
  )
}