'use client'

import { usePathname } from 'next/navigation'
import React from 'react'

export function FooterWrapper({ children }: { children: React.ReactNode }) {
  const pathname = usePathname()

  if (pathname === '/') {
    return null
  }

  return <>{children}</>
}
