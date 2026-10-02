'use client'

import { Price } from '@/components/Price'
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from '@/components/ui/sheet'
import { useCart } from '@payloadcms/plugin-ecommerce/client/react'
import { ArrowRight, ShoppingCart } from 'lucide-react'
import Image from 'next/image'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import React, { useEffect, useMemo, useRef, useState } from 'react'

import { Product } from '@/payload-types'
import { mediaUrlOrPlaceholder, shouldBypassNextImageOptimizer } from '@/utilities/placeholderImage'
import { getPurchaseUnitPriceInCents } from '@/utilities/purchasePricing'
import { CartTimerModal } from './CartTimerModal'
import { DeleteItemButton } from './DeleteItemButton'
import { EditItemQuantityButton } from './EditItemQuantityButton'
import { OpenCartButton } from './OpenCart'
import './cart-modal.css'

export function CartModal() {
  const { cart, clearCart } = useCart()
  const [isOpen, setIsOpen] = useState(false)
  const pathname = usePathname()

  const [purchaseTypeVersion, setPurchaseTypeVersion] = useState(0)

  const [settings, setSettings] = useState<any>(null)
  const [secondsLeft, setSecondsLeft] = useState<number | null>(null)
  const [showTimerModal, setShowTimerModal] = useState(false)

  const hasAcknowledgedWarningRef = useRef(false)
  const isResettingTimerRef = useRef(false)

  type PurchaseType = 'one_time' | 'weekly' | 'monthly'

  const totalQuantity = useMemo(() => {
    if (!cart || !cart.items || !cart.items.length) return 0
    return cart.items.reduce((quantity, item) => (item.quantity || 0) + quantity, 0)
  }, [cart])

  const getPurchaseTypeKey = (productID: string, variantID?: string) => {
    return variantID ? `purchaseType:${productID}:${variantID}` : `purchaseType:${productID}`
  }

  const getPurchaseTypeLabel = (purchaseType: PurchaseType) => {
    if (purchaseType === 'weekly') return 'Weekly subscription'
    if (purchaseType === 'monthly') return 'Monthly subscription'
    return 'One-time purchase'
  }

  const getPurchasePrice = (product: any, variant: any, purchaseType: PurchaseType) => {
    const variantID = variant?.id ? String(variant.id) : undefined
    const key = getPurchaseTypeKey(String(product.id), variantID)

    if (typeof window !== 'undefined') {
      const storedPrice = localStorage.getItem(`${key}:price`)

      if (storedPrice) {
        const parsed = Number(storedPrice)
        if (!Number.isNaN(parsed)) return parsed
      }
    }

    return getPurchaseUnitPriceInCents(product, variant, purchaseType)
  }

  const adjustedSubtotal = useMemo(() => {
    if (!cart?.items?.length) return 0

    return cart.items.reduce((total, item) => {
      const product = item.product
      const variant = item.variant

      if (typeof product !== 'object' || !product) return total

      const isVariant = Boolean(variant) && typeof variant === 'object'
      const variantID = isVariant ? String(variant.id) : undefined

      const purchaseType =
        typeof window !== 'undefined'
          ? ((localStorage.getItem(getPurchaseTypeKey(String(product.id), variantID)) ||
            'one_time') as PurchaseType)
          : 'one_time'

      const price = getPurchasePrice(product, isVariant ? variant : undefined, purchaseType)

      return total + price * (item.quantity || 1)
    }, 0)
  }, [cart?.items, purchaseTypeVersion])

  useEffect(() => {
    if (!isOpen) return
    setPurchaseTypeVersion((version) => version + 1)
  }, [isOpen, cart?.items])

  useEffect(() => {
    fetch('/api/globals/cart-settings')
      .then((res) => res.json())
      .then((data) => {
        setSettings(data)
      })
      .catch((err) => {
        console.error('Failed to load cart timer settings', err)
        setSettings(null)
      })
  }, [])

  useEffect(() => {
    if (!settings?.enabled || totalQuantity === 0) {
      hasAcknowledgedWarningRef.current = false
      isResettingTimerRef.current = false
      setSecondsLeft(null)
      setShowTimerModal(false)
      return
    }

    const timerSeconds = Number(settings?.timerSeconds ?? 0)

    if (!timerSeconds || timerSeconds <= 0) return

    isResettingTimerRef.current = true
    hasAcknowledgedWarningRef.current = false

    setSecondsLeft(timerSeconds)
    setShowTimerModal(false)

    const interval = window.setInterval(() => {
      setSecondsLeft((current) => {
        if (current === null) return timerSeconds
        return Math.max(current - 1, 0)
      })
    }, 1000)

    return () => window.clearInterval(interval)
  }, [totalQuantity, settings?.enabled, settings?.timerSeconds])

  useEffect(() => {
    if (!settings?.enabled || totalQuantity === 0 || secondsLeft === null) return

    if (secondsLeft === 0) {
      setShowTimerModal(false)
      setSecondsLeft(null)
      hasAcknowledgedWarningRef.current = false
      isResettingTimerRef.current = false

      void clearCart()
      return
    }

    if (isResettingTimerRef.current) {
      isResettingTimerRef.current = false
      return
    }

    const warningSeconds = Number(settings?.warningSeconds ?? 0)

    if (
      warningSeconds > 0 &&
      secondsLeft > 0 &&
      secondsLeft <= warningSeconds &&
      !hasAcknowledgedWarningRef.current
    ) {
      setShowTimerModal(true)
    }
  }, [secondsLeft, settings?.enabled, settings?.warningSeconds, totalQuantity, clearCart])

  useEffect(() => {
    setIsOpen(false)
  }, [pathname])

  return (
    <Sheet onOpenChange={setIsOpen} open={isOpen}>
      <SheetTrigger asChild>
        <OpenCartButton quantity={totalQuantity} />
      </SheetTrigger>

      <SheetContent
        side="right"
        className="cart-sheet"
      >
        <div className="cart-drawer">
          <SheetHeader className="cart-head">
            <div className="cart-head-copy">
              <span className="cart-eyebrow">Your order</span>
              <SheetTitle className="cart-title">Cart</SheetTitle>
              <SheetDescription className="sr-only">
                Review your selected cuts, update quantities, and continue to checkout.
              </SheetDescription>
              <p className="cart-count">
                {totalQuantity} {totalQuantity === 1 ? 'item' : 'items'}
              </p>
            </div>
          </SheetHeader>

          {!cart || cart?.items?.length === 0 ? (
            <div className="cart-empty">
              <div className="cart-empty-icon">
                <ShoppingCart aria-hidden="true" size={32} strokeWidth={1.5} />
              </div>
              <h2>Your cart is empty</h2>
              <p>Add cuts from the shop to view them here.</p>
              <Link
                className="cart-browse-link"
                href="/shop"
                onClick={() => setIsOpen(false)}
              >
                Browse the shop <ArrowRight aria-hidden="true" size={16} />
              </Link>
            </div>
          ) : (
            <>
              <div className="cart-items">
                <ul className="cart-items-list">
                  {cart?.items?.map((item, i) => {
                    const product = item.product
                    const variant = item.variant

                    if (typeof product !== 'object' || !item || !product || !product.slug) {
                      return <React.Fragment key={i} />
                    }

                    const metaImage =
                      product.meta?.image && typeof product.meta?.image === 'object'
                        ? product.meta.image
                        : undefined

                    const firstGalleryImage =
                      typeof product.productGallery?.[0]?.image === 'object'
                        ? product.productGallery?.[0]?.image
                        : undefined

                    let image = firstGalleryImage || metaImage
                    let price = product.priceInUSD

                    const isVariant = Boolean(variant) && typeof variant === 'object'
                    const variantID = isVariant ? String(variant.id) : undefined

                    const purchaseType =
                      typeof window !== 'undefined'
                        ? ((localStorage.getItem(
                          getPurchaseTypeKey(String(product.id), variantID),
                        ) || 'one_time') as PurchaseType)
                        : 'one_time'

                    if (isVariant) {
                      price = variant?.priceInUSD

                      const imageVariant = product.productGallery?.find(
                        (galleryItem: NonNullable<Product['productGallery']>[number]) => {
                          if (!galleryItem.image) return false

                          const variantOptionID =
                            typeof galleryItem.image === 'object'
                              ? galleryItem.id
                              : galleryItem.image

                          return variant?.options?.some(
                            (option: NonNullable<typeof variant.options>[number]) => {
                              if (typeof option === 'object') return option.id === variantOptionID
                              return option === variantOptionID
                            },
                          )
                        },
                      )

                      if (imageVariant && typeof imageVariant.image === 'object') {
                        image = imageVariant.image
                      }
                    }

                    price = getPurchasePrice(product, isVariant ? variant : undefined, purchaseType)

                    const variantText = isVariant
                      ? variant?.options
                        ?.map((option: NonNullable<typeof variant.options>[number]) => {
                          if (typeof option === 'object') return option.label
                          return null
                        })
                        .filter(Boolean)
                        .join(' ')
                      : ''

                    const thumbSrc = mediaUrlOrPlaceholder(image?.url, 'cart')

                    return (
                      <li key={i} className="cart-item">
                        <Link
                          href={`/products/${(item.product as Product)?.slug}`}
                          className="cart-item-image"
                        >
                          <div className="cart-item-image-frame">
                            <Image
                              alt={image?.alt || product?.title || ''}
                              className="object-cover"
                              height={120}
                              src={thumbSrc}
                              width={120}
                              unoptimized={shouldBypassNextImageOptimizer(thumbSrc)}
                            />
                          </div>
                        </Link>

                        <div className="cart-item-content">
                          <div className="cart-item-heading">
                            <div className="cart-item-copy">
                              <Link
                                href={`/products/${(item.product as Product)?.slug}`}
                                className="cart-item-title-link"
                              >
                                <h3 className="cart-item-title">
                                  {product?.title}
                                </h3>
                              </Link>

                              {variantText && (
                                <p className="cart-item-variant">{variantText}</p>
                              )}

                              <p className="cart-item-purchase-type">
                                {getPurchaseTypeLabel(purchaseType)}
                              </p>
                            </div>

                            <DeleteItemButton item={item} />
                          </div>

                          <div className="cart-item-bottom">
                            <div className="cart-quantity-control">
                              <EditItemQuantityButton
                                item={item}
                                type="minus"
                                className="cart-quantity-button"
                              />

                              <span className="cart-quantity-value">
                                {item.quantity}
                              </span>

                              <EditItemQuantityButton
                                item={item}
                                type="plus"
                                className="cart-quantity-button"
                              />
                            </div>

                            {typeof price === 'number' && (
                              <Price
                                amount={price * (item.quantity || 1)}
                                className="cart-item-price"
                              />
                            )}
                          </div>
                        </div>
                      </li>
                    )
                  })}
                </ul>
              </div>

              <div className="cart-foot">
                <div className="cart-subtotal">
                  <span>Subtotal</span>
                  <Price amount={adjustedSubtotal} className="cart-subtotal-price" />
                </div>
                <p className="cart-shipping-note">
                  Shipping and taxes calculated at checkout.
                </p>

                <div className="cart-footer-actions">
                  <Link
                    href="/checkout"
                    className="cart-checkout-link"
                  >
                    Continue to checkout <ArrowRight aria-hidden="true" size={16} />
                  </Link>
                  <button
                    className="cart-continue-button"
                    onClick={() => setIsOpen(false)}
                    type="button"
                  >
                    Continue shopping
                  </button>
                </div>
              </div>
            </>
          )}
        </div>
      </SheetContent>

      <CartTimerModal
        open={showTimerModal}
        secondsLeft={secondsLeft || 0}
        title={settings?.modalTitle || ''}
        message={settings?.modalMessage || ''}
        confirmLabel={settings?.confirmButtonLabel || ''}
        extendLabel={settings?.extendButtonLabel || ''}
        footerText={settings?.footerText}
        onConfirm={() => {
          hasAcknowledgedWarningRef.current = true
          setShowTimerModal(false)
        }}
        onExtend={() => {
          const extendSeconds = Number(settings?.extendSeconds ?? 0)

          if (!extendSeconds || extendSeconds <= 0) {
            setShowTimerModal(false)
            return
          }

          hasAcknowledgedWarningRef.current = false
          setSecondsLeft((current) => (current ?? 0) + extendSeconds)
          setShowTimerModal(false)
        }}
      />
    </Sheet>
  )
}