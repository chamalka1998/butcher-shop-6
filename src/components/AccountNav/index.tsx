'use client'

import clsx from 'clsx'
import Link from 'next/link'
import { usePathname } from 'next/navigation'

type Props = {
  className?: string
}

const linkBase =
  'block w-full rounded-none px-5 py-3 text-sm font-medium tracking-wide transition-colors hover:no-underline'

const linkInactive =
  'text-[#625D57] hover:text-[#8C3F34] hover:bg-[#EFECE6]'

const linkActive =
  'border-r-2 border-[#8C3F34] bg-[#EFECE6] text-[#8C3F34]'

export const AccountNav: React.FC<Props> = ({ className }) => {
  const pathname = usePathname()

  return (
    <div
      className={clsx(
        'flex min-h-full flex-col justify-between text-[#1A1A1A]',
        className,
      )}
    >
      <div>
        <div className="border-b border-[#DCD6CE] px-5 py-6">
          <p className="text-lg font-bold uppercase tracking-[0.18em] text-[#8C3F34]">
            THE BUTCHER'S CRAFT
          </p>
          <p className="mt-1 text-xs text-[#625D57]">Artisan Butchery</p>
        </div>

        <ul className="mt-6 flex flex-col gap-2">
          <li>
            <Link
              href="/account"
              className={clsx(
                linkBase,
                pathname === '/account' ? linkActive : linkInactive,
              )}
            >
              Account settings
            </Link>
          </li>

          <li>
            <Link
              href="/account/addresses"
              className={clsx(
                linkBase,
                pathname === '/account/addresses' ? linkActive : linkInactive,
              )}
            >
              Addresses
            </Link>
          </li>

          <li>
            <Link
              href="/orders"
              className={clsx(
                linkBase,
                pathname === '/orders' || pathname.includes('/orders')
                  ? linkActive
                  : linkInactive,
              )}
            >
              Orders
            </Link>
          </li>
          <li>
            <Link
              href="/account/subscriptions"
              className={clsx(
                linkBase,
                pathname === '/account/subscriptions' ? linkActive : linkInactive,
              )}
            >
              Subscriptions
            </Link>
          </li>
        </ul>
      </div>

      <div className="border-t border-[#DCD6CE]">
        <Link
          href="/logout"
          className={clsx(
            linkBase,
            'text-[#8C3F34] hover:bg-[#EFECE6] hover:text-[#6F3028]',
            pathname === '/logout' && 'bg-[#EFECE6]',
          )}
        >
          Log out
        </Link>
      </div>
    </div>
  )
}