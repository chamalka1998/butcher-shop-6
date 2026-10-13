import type { Metadata } from 'next'

import { AccountForm } from '@/components/forms/AccountForm'
import { mergeOpenGraph } from '@/utilities/mergeOpenGraph'
import configPromise from '@payload-config'
import { headers as getHeaders } from 'next/headers.js'
import { redirect } from 'next/navigation'
import { getPayload } from 'payload'

import './account-settings.css'

export default async function AccountPage() {
  const headers = await getHeaders()
  const payload = await getPayload({ config: configPromise })
  const { user } = await payload.auth({ headers })

  if (!user) {
    redirect(
      `/login?warning=${encodeURIComponent('Please login to access your account settings.')}`,
    )
  }

  return (
    <div className="account-settings">
      <header className="account-settings-heading">
        <p className="account-settings-eyebrow">Your butcher&apos;s craft account</p>
        <h1>Account Settings</h1>
        <p className="account-settings-description">
          Manage your personal details, security, and account preferences.
        </p>
      </header>

      <section className="account-settings-section">
        <div className="account-section-heading">
          <span className="account-section-number">01</span>
          <h2>Security</h2>
        </div>
        <div className="account-settings-card account-security-card">
          <AccountForm />
        </div>
      </section>

      <section className="account-settings-section">
        <div className="account-section-heading">
          <span className="account-section-number">02</span>
          <h2>Notifications</h2>
        </div>

        <div className="account-settings-card account-notifications-card">
          <div className="account-notification-row">
            <div>
              <h3>Email Preferences</h3>
              <p>
                Receive artisanal updates and order confirmations.
              </p>
            </div>

            <label className="account-toggle">
              <input
                type="checkbox"
                name="emailNotifications"
                defaultChecked
                className="peer sr-only"
                aria-label="Email notifications"
              />
              <span className="account-toggle-track" />
              <span className="account-toggle-thumb" />
            </label>
          </div>

          <div className="account-notification-divider" />

          <div className="account-notification-row">
            <div>
              <h3>SMS Notifications</h3>
              <p>
                Real-time alerts for when your cut is ready for fulfillment.
              </p>
            </div>

            <label className="account-toggle">
              <input
                type="checkbox"
                name="smsNotifications"
                className="peer sr-only"
                aria-label="SMS notifications"
              />
              <span className="account-toggle-track" />
              <span className="account-toggle-thumb" />
            </label>
          </div>
        </div>
      </section>
    </div>
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