'use client'

import { useAuth } from '@/providers/Auth'
import Link from 'next/link'
import React, { Fragment, useEffect, useState } from 'react'

export const LogoutPage: React.FC = () => {
  const { logout } = useAuth()
  const [success, setSuccess] = useState('')
  const [error, setError] = useState('')

  useEffect(() => {
    const performLogout = async () => {
      try {
        await logout()
        setSuccess('Logged out successfully.')
      } catch {
        setError('You are already logged out.')
      }
    }

    void performLogout()
  }, [logout])

  return (
    <main aria-live="polite" className="logout-page">
      <section className="logout-card">
        <p className={`logout-status ${error ? 'logout-status-error' : success ? 'logout-status-success' : 'logout-status-pending'}`}>
          {error || success || 'Signing you out...'}
        </p>
        <p className="auth-eyebrow">The Butcher&apos;s Craft · Your account</p>
        <h1>{error ? 'You’re already signed out.' : success ? 'Until next time.' : 'Signing out'}</h1>
        <p className="logout-description">
          {error
            ? 'Your account session has already ended. You can sign in again or continue browsing our shop.'
            : success
              ? 'You have been securely signed out. Thank you for stopping by.'
              : 'Your account session is being securely closed.'}
        </p>
        <div className="logout-actions">
          <Link href="/search" className="logout-shop-link">
            Click here to shop
          </Link>
          <Link href="/login" className="logout-login-link">
            To log back in, click here <span aria-hidden="true">→</span>
          </Link>
        </div>
      </section>
    </main>
  )
}