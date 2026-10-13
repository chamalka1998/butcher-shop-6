'use client'

import React from 'react'
import { useAddresses } from '@payloadcms/plugin-ecommerce/client/react'
import { AddressItem } from '@/components/addresses/AddressItem'

export const AddressListing: React.FC = () => {
  const { addresses } = useAddresses()

  if (!addresses || addresses.length === 0) {
    return (
      <div className="account-addresses-list" data-address-list>
        <p className="account-addresses-empty">No addresses found.</p>
      </div>
    )
  }

  return (
    <div className="account-addresses-list" data-address-list>
      <ul className="flex flex-col gap-8">
        {addresses.map((address) => (
          <li
            key={address.id}
            className="border-b border-[#DCD6CE] pb-8 last:border-none last:pb-0"
          >
            <AddressItem address={address} accountStyle />
          </li>
        ))}
      </ul>
    </div>
  )
}
