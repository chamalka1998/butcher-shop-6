import { createCipheriv, createDecipheriv, createHash, randomBytes } from 'crypto'
import type { FieldHook } from 'payload'

const keyFor = (): Buffer => {
  const secret = process.env.PAYLOAD_SECRET
  if (!secret) throw new Error('PAYLOAD_SECRET is required to store a Lightspeed token.')
  return createHash('sha256').update(`pos-secret:${secret}`).digest()
}

export const encryptSecret = (plain: string): string => {
  const iv = randomBytes(12)
  const cipher = createCipheriv('aes-256-gcm', keyFor(), iv)
  const encrypted = Buffer.concat([cipher.update(plain, 'utf8'), cipher.final()])
  const tag = cipher.getAuthTag()
  return `v1:${iv.toString('base64url')}:${tag.toString('base64url')}:${encrypted.toString('base64url')}`
}

export const decryptSecret = (stored: string): string => {
  const [version, iv, tag, encrypted] = stored.split(':')
  if (version !== 'v1' || !iv || !tag || !encrypted) {
    throw new Error('Saved Lightspeed secret is unreadable. Paste it again.')
  }
  const decipher = createDecipheriv('aes-256-gcm', keyFor(), Buffer.from(iv, 'base64url'))
  decipher.setAuthTag(Buffer.from(tag, 'base64url'))
  const plain = Buffer.concat([
    decipher.update(Buffer.from(encrypted, 'base64url')),
    decipher.final(),
  ])
  return plain.toString('utf8')
}

/** Keep a saved secret when the admin leaves the field blank. Never return it to the browser. */
export const secretFieldHooks = (name: 'accessToken' | 'webhookSecret'): { beforeChange: FieldHook[]; afterRead: FieldHook[] } => ({
  beforeChange: [
    ({ value, originalDoc }) => {
      if (typeof value !== 'string' || value.trim() === '') {
        const previous = originalDoc && typeof originalDoc === 'object' ? originalDoc[name] : null
        return typeof previous === 'string' ? previous : null
      }
      const trimmed = value.trim()
      if (trimmed.startsWith('v1:')) return trimmed
      return encryptSecret(trimmed)
    },
  ],
  afterRead: [
    ({ req, value }) => {
      if (req.context?.readPosSecrets) return value
      return ''
    },
  ],
})
