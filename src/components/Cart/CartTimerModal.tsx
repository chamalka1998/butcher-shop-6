'use client'

import { Hourglass } from 'lucide-react'
import { createPortal } from 'react-dom'

type Props = {
    open: boolean
    secondsLeft: number
    title: string
    message: string
    confirmLabel: string
    extendLabel: string
    footerText?: string
    onConfirm: () => void
    onExtend: () => void
}


export function CartTimerModal({
    open,
    secondsLeft,
    title,
    message,
    confirmLabel,
    extendLabel,
    footerText,
    onConfirm,
    onExtend,
}: Props) {
    if (!open) return null

    return createPortal(
        <div className="cart-freshness-overlay pointer-events-auto fixed inset-0 z-[99999] flex items-center justify-center bg-background/80 px-4 py-6 backdrop-blur-sm">
            <div className="cart-freshness-modal w-full max-w-[560px] border border-border bg-card px-10 py-12 text-center text-card-foreground shadow-2xl">
                <div className="cart-freshness-icon mx-auto flex h-16 w-16 items-center justify-center rounded-full">
                    <Hourglass size={34} />
                </div>

                <h2 className="cart-freshness-title mt-8 text-3xl font-black">
                    {title}
                </h2>

                <div className="cart-freshness-divider mx-auto mt-5 h-px w-14" />

                <p className="cart-freshness-message mx-auto mt-7 max-w-[420px]">
                    <span className="cart-freshness-countdown">{secondsLeft} seconds remaining.</span>{' '}
                    {message}
                </p>

                <div className="cart-freshness-actions mt-10 grid gap-4 sm:grid-cols-2">
                    <button
                        type="button"
                        onClick={onConfirm}
                        className="cart-freshness-confirm h-14 text-sm font-black uppercase tracking-[0.18em] transition-colors"
                    >
                        {confirmLabel}
                    </button>

                    <button
                        type="button"
                        onClick={onExtend}
                        className="cart-freshness-extend h-14 border bg-transparent text-sm font-black uppercase tracking-[0.18em] transition-colors"
                    >
                        {extendLabel}
                    </button>
                </div>

                {footerText && (
                    <p className="cart-freshness-footer mt-10 text-xs uppercase tracking-[0.35em]">
                        {footerText}
                    </p>
                )}
            </div>
        </div>,
    document.body
    )
}