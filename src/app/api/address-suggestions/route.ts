import { NextResponse } from 'next/server'

type SuggestionResponse = {
  results?: unknown
  detail?: string
}

export async function GET(request: Request) {
  const { searchParams } = new URL(request.url)
  const query = searchParams.get('q')?.trim() || ''
  const province = searchParams.get('province')?.trim()

  if (query.length < 2 || query.length > 80) {
    return NextResponse.json(
      { error: 'Address search must be between 2 and 80 characters.' },
      { status: 400 },
    )
  }

  const apiBaseURL = process.env.ADDRESS_AUTOCOMPLETE_API_URL?.trim()

  if (!apiBaseURL) {
    console.error('Address suggestions are unavailable: ADDRESS_AUTOCOMPLETE_API_URL is not set.')
    return NextResponse.json({ error: 'Address suggestions are not configured.' }, { status: 503 })
  }

  try {
    const apiURL = new URL(`${apiBaseURL.replace(/\/+$/, '')}/v1/addresses/suggest`)
    apiURL.searchParams.set('q', query)
    apiURL.searchParams.set('limit', '8')
    if (province) apiURL.searchParams.set('province', province)

    const headers = new Headers()
    const apiKey = process.env.ADDRESS_AUTOCOMPLETE_API_KEY?.trim()
    if (apiKey) headers.set('Authorization', `Bearer ${apiKey}`)

    const response = await fetch(apiURL, { headers, cache: 'no-store' })
    const body = (await response.json()) as SuggestionResponse

    if (!response.ok) {
      console.error('Address suggestions API returned an error:', response.status, body.detail)
      return NextResponse.json(
        { error: body.detail || 'Address suggestions are unavailable.' },
        { status: response.status === 422 ? 400 : 502 },
      )
    }

    if (!Array.isArray(body.results)) {
      console.error('Address suggestions API returned an invalid response.')
      return NextResponse.json(
        { error: 'Address suggestions returned an invalid response.' },
        { status: 502 },
      )
    }

    return NextResponse.json({ results: body.results })
  } catch (error) {
    console.error('Address suggestions API request failed:', error)
    return NextResponse.json(
      { error: 'Address suggestions are temporarily unavailable.' },
      { status: 502 },
    )
  }
}
