import type { Metadata } from 'next'

import { LoginForm } from '@/components/forms/LoginForm'
import { RenderParams } from '@/components/RenderParams'
import configPromise from '@payload-config'
import { getPayload } from 'payload'
import { headers as getHeaders } from 'next/headers'
import { redirect } from 'next/navigation'
import Link from 'next/link'
import '../auth-pages.css'

export default async function Login() {
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
          <p className="auth-visual-copy">Thoughtfully sourced. Expertly prepared.</p>
        </div>

        <section className="auth-card">
          <div className="auth-heading">
            <p className="auth-eyebrow">Welcome back</p>
            <h1>Sign in to your account</h1>
            <p>Enter your credentials to access your account.</p>
          </div>

          <div className="auth-form-content">
            <RenderParams />
            <LoginForm />
            <p className="auth-account-switch">
              New to Butcher&apos;s Craft?{' '}
              <Link
                href="/create-account"
              >
                Create an account
              </Link>
            </p>
          </div>
        </section>
      </div>
    </main>
  )
}

export const metadata: Metadata = {
  description: 'Login or create an account to get started.',
  openGraph: {
    title: 'Login',
    url: '/login',
  },
  title: 'Login',
}