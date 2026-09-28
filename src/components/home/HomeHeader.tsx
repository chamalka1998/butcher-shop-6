'use client'

import { Cart } from '@/components/Cart'
import Link from 'next/link'
import React, { Suspense, useState } from 'react'

export function HomeHeader() {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false)

  return (
    <>
      <div className="topline">
        SMALL BATCH BUTCHERY <span>•</span> FRESH CUT TO ORDER <span>•</span> DELIVERING ACROSS TORONTO
      </div>
      <div className="navwrap">
        <header className="nav">
          <Link className="brand" href="/" aria-label="The Butcher's Craft home">
            <span className="brand-mark">✦</span>
            <span className="brand-name">
              The Butcher&apos;s Craft
              <small>ARTISAN BUTCHERY</small>
            </span>
          </Link>

          <nav className="navlinks" aria-label="Main navigation">
            <Link href="/">Home</Link>
            <Link href="/shop">Shop</Link>
            <a href="#craft">Our Craft</a>
            <a href="#delivery">How It Works</a>
            <a href="#footer">Contact</a>
          </nav>

          <div className="navactions">
            <Link href="/account">Sign in</Link>
            <div className="bag" title="Shopping bag">
              <Suspense fallback={<span className="text-xs">♧</span>}>
                <Cart />
              </Suspense>
            </div>
            <Link className="button" href="/shop">
              Shop cuts <span>↗</span>
            </Link>
            <button
              type="button"
              className="mobile-menu-btn"
              onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
              aria-label="Toggle navigation menu"
              aria-expanded={mobileMenuOpen}
            >
              MENU
            </button>
          </div>
        </header>

        {mobileMenuOpen && (
          <div className="mobile-drawer">
            <Link href="/" onClick={() => setMobileMenuOpen(false)}>
              Home
            </Link>
            <Link href="/shop" onClick={() => setMobileMenuOpen(false)}>
              Shop
            </Link>
            <a href="#craft" onClick={() => setMobileMenuOpen(false)}>
              Our Craft
            </a>
            <a href="#delivery" onClick={() => setMobileMenuOpen(false)}>
              How It Works
            </a>
            <a href="#footer" onClick={() => setMobileMenuOpen(false)}>
              Contact
            </a>
            <Link href="/account" onClick={() => setMobileMenuOpen(false)}>
              Sign in
            </Link>
            <Link
              className="button"
              href="/shop"
              style={{ marginTop: '8px' }}
              onClick={() => setMobileMenuOpen(false)}
            >
              Shop cuts <span>↗</span>
            </Link>
          </div>
        )}
      </div>
    </>
  )
}
