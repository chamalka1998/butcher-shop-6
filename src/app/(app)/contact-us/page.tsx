import { Clock3, MapPin } from 'lucide-react'
import type { Metadata } from 'next'
import Link from 'next/link'
import { getPayload } from 'payload'

import { FormBlock } from '@/blocks/Form/Component'
import type { ContactPageBlock as ContactPageBlockType } from '@/payload-types'
import configPromise from '@payload-config'
import type { Form as FormType } from '@payloadcms/plugin-form-builder/types'

import '../home.css'
import './contact-us.css'

export const metadata: Metadata = {
  title: 'Contact Us | The Butcher’s Craft',
  description:
    'Contact The Butcher’s Craft about custom cuts, orders, and private events. Our Toronto team will be glad to help.',
}

const storeHours = [
  { day: 'Monday – Friday', time: '09:00 – 19:00' },
  { day: 'Saturday', time: '08:00 – 18:00' },
  { day: 'Sunday', time: '10:00 – 16:00' },
]

export default async function ContactUsPage() {
  const payload = await getPayload({ config: configPromise })
  const result = await payload.find({
    collection: 'pages',
    depth: 3,
    limit: 1,
    pagination: false,
    where: {
      and: [{ slug: { equals: 'contact-us' } }, { _status: { equals: 'published' } }],
    },
  })

  const contactBlock = result.docs[0]?.layout.find(
    (block): block is ContactPageBlockType => block.blockType === 'contactPage',
  )
  const form =
    contactBlock?.form && typeof contactBlock.form === 'object'
      ? ({
          ...contactBlock.form,
          submitButtonLabel: 'Send message',
          fields: contactBlock.form.fields?.map((field) => {
            const label = 'label' in field ? field.label : undefined

            return {
              ...field,
              ...(label ? { label: label.endsWith('*') ? label : `${label} *` } : {}),
              required: true,
              ...(label?.toLowerCase().includes('email') ? { blockType: 'email' } : {}),
            }
          }),
        } as unknown as FormType)
      : null

  return (
    <article className="home-design contact-us-page" id="contact">
      <section className="contact-hero">
        <div className="eyebrow">Contact us</div>
        <h1>Get in touch.</h1>
        <p>
          Whether you are seeking a custom cut for a special occasion or looking to partner with the
          finest purveyor in Toronto, we are here to serve.
        </p>
      </section>

      <section className="contact-main">
        <aside className="contact-panel">
          <h2>Visit the atelier</h2>
          <p>
            Questions about cuts, custom orders, or private events? Our team will respond within one
            business day.
          </p>

          <div className="contact-block">
            <span className="contact-label">Store hours</span>
            <Clock3 aria-hidden="true" className="contact-icon" size={18} />
            <div className="contact-hours">
              {storeHours.map((item) => (
                <div className="contact-hours-row" key={item.day}>
                  <b>{item.day}</b>
                  <span>{item.time}</span>
                </div>
              ))}
            </div>
          </div>

          <div className="contact-block">
            <span className="contact-label">Correspondence</span>
            <strong>Email our team</strong>
            <a href="mailto:orders@butcherscraft.com">orders@butcherscraft.com</a>
          </div>

          <div className="contact-location">
            <MapPin aria-hidden="true" className="contact-location-pin" size={25} />
            <div className="contact-location-copy">
              <strong>Toronto</strong>
              <span>123 Queen Street West · Toronto, ON M5H 2N2</span>
            </div>
          </div>
        </aside>

        <section className="contact-form-panel" aria-labelledby="contact-form-title">
          <h2 id="contact-form-title">Send an inquiry</h2>
          <p className="contact-subcopy">
            Complete the form below and we’ll get back to you within one business day. Fields marked
            * are required.
          </p>
          {form ? (
            <div className="contact-form-root">
              <FormBlock form={form} enableIntro={false} />
            </div>
          ) : (
            <p className="contact-form-unavailable" role="status">
              Our contact form is temporarily unavailable. Please email us at{' '}
              <a href="mailto:orders@butcherscraft.com">orders@butcherscraft.com</a>.
            </p>
          )}
        </section>
      </section>

      <div className="contact-follow">
        <span>Need product inspiration first? Browse the butcher’s counter.</span>
        <Link href="/shop">
          Explore our cuts <span aria-hidden="true">↗</span>
        </Link>
      </div>
    </article>
  )
}
