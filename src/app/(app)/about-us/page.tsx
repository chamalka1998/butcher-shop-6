import type { Metadata } from 'next'
import Link from 'next/link'
import { Clock3, Heart, Sparkles } from 'lucide-react'

import '../home.css'
import './about-us.css'

export const metadata: Metadata = {
  title: 'Our Story | The Butcher’s Craft',
  description:
    'Discover the story of The Butcher’s Craft, built on craftsmanship, patient aging, and a dedication to quality cuts.',
}

const craftPoints = [
  {
    Icon: Sparkles,
    title: 'Hand-selected quality',
    description:
      'Our master butchers choose each cut with care, looking for the quality and character worth bringing to your kitchen.',
  },
  {
    Icon: Clock3,
    title: 'Time and patience',
    description:
      'We give selected cuts time to develop remarkable depth of flavour through careful aging.',
  },
  {
    Icon: Heart,
    title: 'Made for your table',
    description:
      'From everyday meals to special occasions, we help you find something delicious to share.',
  },
]

export default function AboutUsPage() {
  return (
    <article className="home-design about-us-page">
      <section className="about-hero">
        <div className="about-hero-copy">
          <div className="eyebrow">Our story</div>
          <h1>
            Good craft.
            <br />
            Great cuts.
            <br />
            A table worth sharing.
          </h1>
          <p>
            A story of craftsmanship, patience, and a relentless dedication to
            quality.
          </p>
          <Link className="button" href="#story">
            Discover our journey <span aria-hidden="true">↓</span>
          </Link>
        </div>
        <div className="about-hero-image">
          <img
            src="https://images.unsplash.com/photo-1603048297172-c92544798d5a?auto=format&fit=crop&w=1200&q=85"
            alt="A butcher preparing quality cuts by hand"
          />
          <div className="about-image-note">
            <strong>Care in every cut.</strong>
            <span>Craftsmanship you can taste.</span>
          </div>
        </div>
      </section>

      <section className="section cream" id="story">
        <div className="section-inner about-story">
          <div className="about-story-photo">
            <img
              src="https://images.unsplash.com/photo-1607623814075-e51df1bdc82f?auto=format&fit=crop&w=1200&q=85"
              alt="Carefully selected premium steak cuts"
            />
          </div>
          <div className="about-story-copy">
            <div className="eyebrow">The legacy of excellence</div>
            <h2>
              Rooted in tradition.
              <br />
              Made for today.
            </h2>
            <p>
              Founded in 1982, The Butcher&apos;s Craft began as a small family
              atelier dedicated to the pursuit of the perfect steak.
            </p>
            <p>
              Our master butchers hand-select every cut, aging them with
              patience and precision to achieve remarkable depth of flavor.
              That same attention carries through to every order we prepare for
              your table.
            </p>
            <div className="about-signature">The Butcher&apos;s Craft</div>
            <Link className="button" href="/shop">
              Explore our cuts <span aria-hidden="true">→</span>
            </Link>
          </div>
        </div>
      </section>

      <section className="about-heritage" aria-label="Our heritage">
        <div className="about-heritage-inner">
          <div className="about-heritage-item">
            <strong>Since 1982</strong>
            <span>A family tradition of careful butchery</span>
          </div>
          <div className="about-heritage-item">
            <strong>Selected by our butchers</strong>
            <span>Every cut chosen with care</span>
          </div>
          <div className="about-heritage-item">
            <strong>Patience makes the difference</strong>
            <span>Thoughtful aging for deeper flavour</span>
          </div>
        </div>
      </section>

      <section className="section">
        <div className="section-inner">
          <div className="about-craft-heading">
            <div className="eyebrow">Excellence in every cut</div>
            <h2>Craftsmanship you can taste.</h2>
            <p>
              We believe great food starts with good ingredients and the
              knowledge to prepare them well.
            </p>
          </div>
          <div className="about-craft-points">
            {craftPoints.map(({ Icon, title, description }) => (
              <article className="about-craft-point" key={title}>
                <div className="about-craft-icon">
                  <Icon aria-hidden="true" size={20} strokeWidth={1.7} />
                </div>
                <h3>{title}</h3>
                <p>{description}</p>
              </article>
            ))}
          </div>
        </div>
      </section>

      <section className="about-cta">
        <div className="about-cta-inner">
          <div>
            <h2>Bring the butcher&apos;s craft to your table.</h2>
            <p>
              Explore premium cuts and find something worth gathering around.
            </p>
          </div>
          <Link className="button" href="/shop">
            Explore the shop <span aria-hidden="true">→</span>
          </Link>
        </div>
      </section>
    </article>
  )
}