import type { Metadata } from 'next'

import { mergeOpenGraph } from '@/utilities/mergeOpenGraph'
import { headers as getHeaders } from 'next/headers.js'
import configPromise from '@payload-config'
import { getPayload } from 'payload'
import { redirect } from 'next/navigation'
import { AddressListing } from '@/components/addresses/AddressListing'
import { CreateAddressModal } from '@/components/addresses/CreateAddressModal'

import './addresses.css'

export default async function AddressesPage() {
  const headers = await getHeaders()
  const payload = await getPayload({ config: configPromise })
  const { user } = await payload.auth({ headers })

  if (!user) {
    redirect(
      `/login?warning=${encodeURIComponent('Please login to access your account settings.')}`,
    )
  }

  return (
    <div className="account-addresses">
      <header className="account-addresses-heading">
        <p className="account-addresses-eyebrow">Your butcher&apos;s craft account</p>
        <h1>Address Book</h1>
        <p className="account-addresses-description">
          Manage the delivery details for your orders.
        </p>
      </header>

      <section className="account-addresses-section">
        <div className="account-addresses-section-heading">
          <span>01</span>
          <h2>Shipping Address</h2>
        </div>

        <div className="account-addresses-card">
          <AddressListing />

          <div className="account-addresses-add">
            <CreateAddressModal accountStyle />
          </div>
        </div>
      </section>
    </div>
  )
}

export const metadata: Metadata = {
  description: 'Manage your addresses.',
  openGraph: mergeOpenGraph({
    title: 'Addresses',
    url: '/account/addresses',
  }),
  title: 'Addresses',
}