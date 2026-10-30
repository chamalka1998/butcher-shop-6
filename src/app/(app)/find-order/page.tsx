import type { Metadata } from 'next'

import { mergeOpenGraph } from '@/utilities/mergeOpenGraph'
import React from 'react'
import { FindOrderForm } from '@/components/forms/FindOrderForm'
import { getPayload } from 'payload'
import { headers as getHeaders } from 'next/headers.js'
import configPromise from '@payload-config'
import './find-order.css'

export default async function FindOrderPage() {
  const headers = await getHeaders()
  const payload = await getPayload({ config: configPromise })
  const { user } = await payload.auth({ headers })

  return (
    <main className="find-order-page">
      <FindOrderForm initialEmail={user?.email} />
    </main>
  )
}

export const metadata: Metadata = {
  description: 'Find your order using your email and order ID.',
  openGraph: mergeOpenGraph({
    title: 'Find order',
    url: '/find-order',
  }),
  title: 'Find order',
}
