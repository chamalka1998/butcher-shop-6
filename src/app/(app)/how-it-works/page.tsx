import type { Metadata } from 'next'
import Link from 'next/link'

import '../home.css'
import './how-it-works.css'

export const metadata: Metadata = {
  title: 'How It Works | The Butcher’s Craft',
  description:
    'Learn how The Butcher’s Craft makes it easy to choose premium cuts, arrange delivery, and enjoy quality meals at home.',
}

const steps = [
  {
    number: '01',
    title: 'Pick your cuts',
    description:
      'Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.',
    image:
      'https://images.unsplash.com/photo-1602470520998-f4a52199a3d6?auto=format&fit=crop&w=900&q=80',
    alt: 'A selection of premium butcher cuts',
    link: '/shop',
    linkText: 'Shop now',
  },
  {
    number: '02',
    title: 'Get your delivery',
    description:
      'We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.',
    image:
      'https://images.unsplash.com/photo-1607623814075-e51df1bdc82f?auto=format&fit=crop&w=900&q=80',
    alt: 'Freshly prepared cuts ready for delivery',
    link: '/contact-us',
    linkText: 'Ask us a question',
  },
  {
    number: '03',
    title: 'Cook, eat, enjoy',
    description:
      'Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.',
    image:
      'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=900&q=80',
    alt: 'A delicious meal prepared at home',
    link: '/shop',
    linkText: 'Explore the shop',
  },
]

const values = [
  {
    title: 'Quality',
    description:
      'Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.',
  },
  {
    title: 'Simplicity',
    description:
      'From curated boxes to flexible delivery, we make premium meat accessible without the hassle.',
  },
  {
    title: 'Flexibility',
    description:
      'We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.',
  },
  {
    title: 'Something for everyone',
    description:
      'Picky appetites and alternate dietary lifestyles welcome. Tell us what you like and we will recommend something delicious.',
  },
  {
    title: 'Stress-free',
    description:
      'Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.',
  },
]

const questions = [
  {
    question: 'Are there any commitments?',
    answer:
      'No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.',
  },
  {
    question: 'Can I select my cuts?',
    answer:
      'Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.',
  },
  {
    question: 'What if I am not home to accept my delivery?',
    answer:
      'Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.',
  },
  {
    question: 'How will my food stay cool?',
    answer:
      'We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.',
  },
  {
    question: 'What if I have dietary restrictions?',
    answer:
      'Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.',
  },
  {
    question: 'What if I do not want a delivery every week?',
    answer:
      'No worries! You can easily skip a delivery when you need to. Order only when it suits you.',
  },
]

export default function HowItWorksPage() {
  return (
    <article className="home-design how-it-works-page" id="how-it-works">
      <section className="how-hero">
        <div className="how-hero-copy">
          <div className="eyebrow">The process</div>
          <h1>From our counter to your table.</h1>
          <p>
            Premium cuts and curated boxes delivered to your door: simple,
            flexible, and stress-free.
          </p>
          <Link className="button" href="/shop">
            Start shopping <span aria-hidden="true">→</span>
          </Link>
        </div>
        <div className="how-hero-image">
          <img
            src="https://images.unsplash.com/photo-1607623814075-e51df1bdc82f?auto=format&fit=crop&w=1200&q=85"
            alt="Fresh premium cuts prepared by a butcher"
          />
          <span className="how-photo-label">Fresh from our counter</span>
        </div>
      </section>

      <section className="section cream">
        <div className="section-inner">
          <div className="how-section-heading">
            <div className="eyebrow">The process</div>
            <h2>Three simple steps to a better meal.</h2>
            <p>
              From selection to your table, we make it easy to enjoy exceptional
              ingredients at home.
            </p>
          </div>
          <div className="how-steps">
            {steps.map((step) => (
              <article className="how-step" key={step.number}>
                <div className="how-step-image">
                  <img src={step.image} alt={step.alt} />
                </div>
                <div className="how-step-body">
                  <span className="how-step-number">{step.number}</span>
                  <h3>{step.title}</h3>
                  <p>{step.description}</p>
                  <Link className="how-text-link" href={step.link}>
                    {step.linkText} <span aria-hidden="true">↗</span>
                  </Link>
                </div>
              </article>
            ))}
          </div>
        </div>
      </section>

      <section className="section">
        <div className="section-inner how-values">
          <div className="how-values-image">
            <img
              src="https://images.unsplash.com/photo-1603048297172-c92544798d5a?auto=format&fit=crop&w=1200&q=85"
              alt="A butcher carefully choosing and preparing quality cuts"
            />
          </div>
          <div className="how-values-copy">
            <div className="eyebrow">Our values</div>
            <h2>Why choose us?</h2>
            <p>
              We bring butcher-shop care to every order, with quality, choice,
              and flexibility built around your table.
            </p>
            <div className="how-value-list">
              {values.map((value) => (
                <div className="how-value" key={value.title}>
                  <h3>{value.title}</h3>
                  <p>{value.description}</p>
                </div>
              ))}
            </div>
          </div>
        </div>
      </section>

      <section className="section cream">
        <div className="how-faq">
          <div className="eyebrow">Good to know</div>
          <h2>Frequently asked questions</h2>
          <div className="how-faq-list">
            {questions.map((item) => (
              <details key={item.question}>
                <summary>{item.question}</summary>
                <p>{item.answer}</p>
              </details>
            ))}
          </div>
        </div>
      </section>

      <section className="how-cta">
        <div className="how-cta-inner">
          <div>
            <h2>Ready to find your next favourite cut?</h2>
            <p>Browse the counter and choose what’s right for your table.</p>
          </div>
          <Link className="button" href="/shop">
            Explore the shop <span aria-hidden="true">→</span>
          </Link>
        </div>
      </section>
    </article>
  )
}