import type { Metadata } from 'next'

import { mergeOpenGraph } from '@/utilities/mergeOpenGraph'
import React from 'react'
import Link from 'next/link'

import { ForgotPasswordForm } from '@/components/forms/ForgotPasswordForm'
import '../auth-pages.css'

export default async function ForgotPasswordPage() {
  return (
    <main className="auth-page-shell auth-recovery-shell">
      <section className="auth-card auth-recovery-card">
        <p className="auth-eyebrow">Account assistance</p>
        <ForgotPasswordForm />
        <Link className="auth-back-link" href="/login">
          Back to sign in
        </Link>
      </section>
    </main>
  )
}

export const metadata: Metadata = {
  description: 'Enter your email address to recover your password.',
  openGraph: mergeOpenGraph({
    title: 'Forgot Password',
    url: '/forgot-password',
  }),
  title: 'Forgot Password',
}
