// src/components/Footer/menu.tsx

import React from 'react'
import { CMSLink } from '@/components/Link'
import type { Footer } from '@/payload-types'

type Props = {
  menu: Footer['navItems']
}

export function FooterMenu({ menu }: Props) {
  if (!menu?.length) return null

  return (
    <>
      {menu.map(({ id, link }) => (
        <CMSLink
          key={id}
          {...link}
          appearance="inline"
        />
      ))}
    </>
  )
}