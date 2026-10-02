import { Button } from '@/components/ui/button'
import clsx from 'clsx'
import { ShoppingCart } from 'lucide-react'
import React from 'react'

export function OpenCartButton({
  className,
  quantity,
  ...rest
}: {
  className?: string
  quantity?: number
} & React.ButtonHTMLAttributes<HTMLButtonElement>) {
  return (
    <Button
      variant="nav"
      size="clear"
      aria-label={
        quantity
          ? `Open shopping cart, ${quantity} ${quantity === 1 ? 'item' : 'items'}`
          : 'Open shopping cart'
      }
      className={clsx(
        'relative inline-flex h-5 w-5 items-center justify-center p-0 text-[#d4a63c]',
        className,
      )}
      {...rest}
    >
      <ShoppingCart
        aria-hidden="true"
        className="h-4 w-4"
        strokeWidth={1.5}
      />

      {quantity ? (
        <span className="absolute left-[10px] top-[-7px] flex h-4 min-w-4 items-center justify-center rounded-full border border-[#d4a63c] bg-black px-1 text-[9px] leading-none text-[#d4a63c]">
          {quantity}
        </span>
      ) : null}
    </Button>
  )
}