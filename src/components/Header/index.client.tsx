'use client'

import { Cart } from '@/components/Cart'
import { CMSLink } from '@/components/Link'
import { useAuth } from '@/providers/Auth'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { Suspense } from 'react'
import type { Header } from 'src/payload-types'
import { MobileMenu } from './MobileMenu'
import { Media } from '@/components/Media'
import { ChevronDown, UserRound } from 'lucide-react'

type Props = {
  header: Header
}

export function HeaderClient({ header }: Props) {
  const menu = header.navItems || []
  const pathname = usePathname()
  const { status, user } = useAuth()

  const defaultNav = [
    { label: 'Home', url: '/' },
    { label: 'Shop', url: '/shop' },
    { label: 'Our Craft', url: '/#craft' },
    { label: 'How It Works', url: '/how-it-works' },
    { label: 'Contact', url: '#footer' },
  ]

  const hasCmsNav = menu.length > 0

  return (
    <>
      {/* ── Topline Notification Bar ── */}
      <div className="site-topline">
        SMALL BATCH BUTCHERY <span>•</span> FRESH CUT TO ORDER <span>•</span> DELIVERING ACROSS
        TORONTO
      </div>

      {/* ── Main Navigation Bar ── */}
      <div className="site-navwrap">
        <header className="site-nav">
          {/* Brand Logo / Title */}
          <Link className="site-brand" href="/" aria-label="The Butcher's Craft home">
            {header.logo && typeof header.logo === 'object' && header.logo.url ? (
              <Media
                resource={header.logo}
                alt="The Butcher's Craft"
                imgClassName="h-10 w-auto object-contain"
              />
            ) : (
              <>
                <span className="site-brand-mark">✦</span>
                <span className="site-brand-name">
                  The Butcher&apos;s Craft
                  <small>ARTISAN BUTCHERY</small>
                </span>
              </>
            )}
          </Link>

          {/* Desktop Navigation Links */}
          <nav className="site-navlinks" aria-label="Main navigation">
            {hasCmsNav
              ? menu.map((item) => {
                  const href =
                    item.link?.type === 'reference' &&
                    typeof item.link.reference?.value === 'object' &&
                    item.link.reference.value &&
                    'slug' in item.link.reference.value
                      ? `${item.link.reference.relationTo !== 'pages' ? `/${item.link.reference.relationTo}` : ''}/${item.link.reference.value.slug}`
                      : item.link?.url || '/'

                  const isActive =
                    href === '/'
                      ? pathname === '/'
                      : href && !href.startsWith('#')
                        ? pathname.startsWith(href)
                        : false

                  return (
                    <CMSLink
                      key={item.id}
                      {...item.link}
                      appearance="inline"
                      className={isActive ? 'active' : ''}
                    />
                  )
                })
              : defaultNav.map((item) => {
                  const isActive =
                    item.url === '/'
                      ? pathname === '/'
                      : item.url.startsWith('/') && !item.url.includes('#')
                        ? pathname.startsWith(item.url)
                        : false

                  return (
                    <Link key={item.label} href={item.url} className={isActive ? 'active' : ''}>
                      {item.label}
                    </Link>
                  )
                })}
          </nav>

          {/* Right Action Icons & Controls */}
          <div className="site-navactions">
            {status === 'loggedIn' && user ? (
              <details className="site-account-menu">
                <summary aria-label="Open account menu">
                  <UserRound aria-hidden="true" size={17} />
                  <span>{user.name || user.email}</span>
                  <ChevronDown aria-hidden="true" className="site-account-chevron" size={14} />
                </summary>
                <div className="site-account-dropdown">
                  <Link href="/account">Manage account</Link>
                  <Link href="/orders">Orders</Link>
                  <Link href="/account/addresses">Addresses</Link>
                  <Link href="/logout">Log out</Link>
                </div>
              </details>
            ) : status === 'loggedOut' ? (
              <Link href="/login">Sign in</Link>
            ) : (
              <span className="site-account-loading" aria-label="Loading account" />
            )}

            <div className="site-bag" title="Shopping bag">
              <Suspense fallback={<span className="text-xs">♧</span>}>
                <Cart />
              </Suspense>
            </div>

            <Link className="site-btn-primary" href="/shop">
              Shop cuts <span>↗</span>
            </Link>

            <Suspense fallback={null}>
              <MobileMenu menu={menu} />
            </Suspense>
          </div>
        </header>
      </div>
    </>
  )
}
