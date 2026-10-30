import { decryptSecret } from '../secrets'

export type LightspeedConnection = {
  accessToken?: string | null
  branch?: unknown
  cashierId?: string | null
  catalogCursor?: string | null
  id: number | string
  paymentTypeId?: string | null
  storePrefix?: string | null
  taxId?: string | null
  tenant?: unknown
  webhookSecret?: string | null
}

type RequestOptions = {
  body?: unknown
  method?: 'GET' | 'POST' | 'PUT'
  query?: Record<string, string | number | undefined>
}

export class LightspeedError extends Error {
  constructor(message: string) {
    super(message)
    this.name = 'LightspeedError'
  }
}

export const lightspeedRequest = async (
  connection: LightspeedConnection,
  path: string,
  options: RequestOptions = {},
): Promise<unknown> => {
  const prefix = String(connection.storePrefix || '').trim()
  const stored = String(connection.accessToken || '')
  if (!prefix || !stored) {
    throw new LightspeedError('The POS connection needs a store prefix and a token.')
  }

  let token = stored
  try {
    token = decryptSecret(stored)
  } catch (error) {
    throw new LightspeedError(error instanceof Error ? error.message : 'Saved Lightspeed token is unreadable.')
  }

  const url = new URL(`https://${prefix}.retail.lightspeed.app/api/2.0/${path.replace(/^\//, '')}`)
  for (const [key, value] of Object.entries(options.query || {})) {
    if (value !== undefined && value !== '') url.searchParams.set(key, String(value))
  }

  const response = await fetch(url, {
    body: options.body === undefined ? undefined : JSON.stringify(options.body),
    headers: {
      Accept: 'application/json',
      Authorization: `Bearer ${token}`,
      'Content-Type': 'application/json',
    },
    method: options.method || 'GET',
  })

  const text = await response.text()
  if (!response.ok) {
    throw new LightspeedError(`Lightspeed ${response.status} on ${path}: ${text.slice(0, 400)}`)
  }
  if (!text) return null
  try {
    return JSON.parse(text) as unknown
  } catch {
    throw new LightspeedError(`Lightspeed returned a non-JSON body for ${path}.`)
  }
}

export const asRecord = (value: unknown): Record<string, unknown> | null => {
  if (!value || typeof value !== 'object' || Array.isArray(value)) return null
  return value as Record<string, unknown>
}

export const asList = (body: unknown): Record<string, unknown>[] => {
  const record = asRecord(body)
  const data = record && 'data' in record ? record.data : body
  if (!Array.isArray(data)) return []
  return data.map(asRecord).filter((item): item is Record<string, unknown> => Boolean(item))
}

export const asObject = (body: unknown): Record<string, unknown> | null => {
  const record = asRecord(body)
  if (!record) return null
  if ('data' in record) {
    const data = record.data
    if (Array.isArray(data)) return asRecord(data[0])
    return asRecord(data) || record
  }
  return record
}
