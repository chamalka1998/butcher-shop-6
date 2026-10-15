'use client'
import { Button } from '@/components/ui/button'
import React, { useState } from 'react'
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from '@/components/ui/dialog'
import { AddressForm } from '@/components/forms/AddressForm'
import { Address } from '@/payload-types'
import { DefaultDocumentIDType } from 'payload'

type Props = {
  addressID?: DefaultDocumentIDType
  initialData?: Partial<Omit<Address, 'country'>> & { country?: string }
  buttonText?: string
  modalTitle?: string
  callback?: (address: Partial<Address>) => void
  skipSubmission?: boolean
  disabled?: boolean
  accountStyle?: boolean
  checkoutStyle?: boolean
}

export const CreateAddressModal: React.FC<Props> = ({
  addressID,
  initialData,
  buttonText = 'Add a new address',
  modalTitle = 'Add a new address',
  callback,
  skipSubmission,
  disabled,
  accountStyle = false,
  checkoutStyle = false,
}) => {
  const [open, setOpen] = useState(false)
  const handleOpenChange = (state: boolean) => {
    setOpen(state)
  }

  const closeModal = () => {
    setOpen(false)
  }

  const handleCallback = (data: Partial<Address>) => {
    closeModal()

    if (callback) {
      callback(data)
    }
  }

  return (
    <Dialog open={open} onOpenChange={handleOpenChange}  >
      <DialogTrigger asChild disabled={disabled}>
        <Button
          variant={accountStyle ? 'default' : 'outline'}
          className={accountStyle ? 'account-address-trigger' : undefined}
        >
          {buttonText}
        </Button>
      </DialogTrigger>
 
      <DialogContent className={`box-border w-[calc(100vw-2rem)] max-w-3xl overflow-x-hidden p-0 shadow-2xl sm:max-w-3xl ${accountStyle ? 'account-address-dialog border-[#DCD6CE] bg-[#FAF7F2] text-[#1A1A1A]' : checkoutStyle ? 'checkout-address-dialog border-[#DCD6CE] bg-[#FAF7F2] text-[#1A1A1A]' : 'border border-[#4b4235] bg-[#080b0a] text-[#efe4cf]'}`}>
        <div className="box-border px-6 py-8 sm:px-10 sm:py-12 lg:px-14 lg:py-14">
          <DialogHeader className="mb-10">
            <DialogTitle className={`text-4xl font-semibold tracking-tight ${accountStyle || checkoutStyle ? 'text-[#1A1A1A]' : 'text-[#f5c85b]'}`}>
              {modalTitle}
            </DialogTitle>
            <DialogDescription className={`mt-3 text-base ${accountStyle || checkoutStyle ? 'text-[#625D57]' : 'text-[#d8cbb7]'}`}>
              This address will be connected to your account.
            </DialogDescription>
          </DialogHeader>

          <AddressForm
            addressID={addressID}
            initialData={initialData}
            callback={handleCallback}
            skipSubmission={skipSubmission}
            accountStyle={accountStyle}
            checkoutStyle={checkoutStyle}
          />
        </div>
      </DialogContent>
    </Dialog>
  )
}
