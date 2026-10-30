import type { Metadata } from 'next'

import { RenderParams } from '@/components/RenderParams'
import { mergeOpenGraph } from '@/utilities/mergeOpenGraph'
import React from 'react'
import { headers as getHeaders } from 'next/headers'
import configPromise from '@payload-config'
import { getPayload } from 'payload'

import { CreateAccountForm } from '@/components/forms/CreateAccountForm'
import { redirect } from 'next/navigation'
import '../auth-pages.css'

export default async function CreateAccount() {
  const headers = await getHeaders()
  const payload = await getPayload({ config: configPromise })
  const { user } = await payload.auth({ headers })

  if (user) {
    redirect(`/account?warning=${encodeURIComponent('You are already logged in.')}`)
  }

  return (
    <main className="auth-page-shell">
      <div className="auth-split-layout">
        <div className="auth-visual-panel">
          <p className="auth-visual-kicker">The Butcher&apos;s Craft</p>
          <p className="auth-visual-copy">A better table begins with a better cut.</p>
        </div>

        <section className="auth-card">
          <div className="auth-heading">
            <p className="auth-eyebrow">Join our table</p>
            <h1>Create your account</h1>
            <p>Save your details and keep your orders close at hand.</p>
          </div>
          <div className="auth-form-content">
            <RenderParams />
            <CreateAccountForm />
          </div>
        </section>
      </div>
    </main>
  )
}

export const metadata: Metadata = {
  description: 'Create an account or log in to your existing account.',
  openGraph: mergeOpenGraph({
    title: 'Account',
    url: '/account',
  }),
  title: 'Account',
}
