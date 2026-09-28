--
-- PostgreSQL database dump
--

\restrict VflkE3sC9ouCrF9y5ZYLr9ejhxRsLbvYHqsvFqZ6hfbMlvNG7bMEXithgbI28pn

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS '';


--
-- Name: enum__pages_v_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


--
-- Name: enum__pages_v_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_archive_relation_to AS ENUM (
    'products'
);


--
-- Name: enum__pages_v_blocks_banner_style; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_banner_style AS ENUM (
    'info',
    'warning',
    'error',
    'success'
);


--
-- Name: enum__pages_v_blocks_carousel_populate_by; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_carousel_populate_by AS ENUM (
    'collection',
    'selection'
);


--
-- Name: enum__pages_v_blocks_carousel_relation_to; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_carousel_relation_to AS ENUM (
    'products'
);


--
-- Name: enum__pages_v_blocks_contact_cards_items_icon; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_contact_cards_items_icon AS ENUM (
    'map-pin',
    'phone',
    'mail',
    'clock-3'
);


--
-- Name: enum__pages_v_blocks_contact_page_cards_icon; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_contact_page_cards_icon AS ENUM (
    'map-pin',
    'phone',
    'mail'
);


--
-- Name: enum__pages_v_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


--
-- Name: enum__pages_v_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_blocks_visit_section_image_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_visit_section_image_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_blocks_visit_section_image_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_visit_section_image_links_link_type AS ENUM (
    'custom',
    'reference'
);


--
-- Name: enum__pages_v_version_hero_carousel_settings_height; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_hero_carousel_settings_height AS ENUM (
    'medium',
    'large',
    'fullScreen'
);


--
-- Name: enum__pages_v_version_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_version_hero_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_version_hero_slides_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_hero_slides_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_version_hero_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_hero_type AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact',
    'carousel'
);


--
-- Name: enum__pages_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum__products_v_version_aging_process; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_aging_process AS ENUM (
    'dry-aged',
    'wet-aged'
);


--
-- Name: enum__products_v_version_cut_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_cut_type AS ENUM (
    'prime-rib',
    'wagyu-strips',
    'filet-mignon',
    'tomahawk'
);


--
-- Name: enum__products_v_version_flavor; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_flavor AS ENUM (
    'plain',
    'spicy',
    'bbq',
    'herb'
);


--
-- Name: enum__products_v_version_meat_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_meat_type AS ENUM (
    'beef',
    'chicken',
    'pork',
    'lamb',
    'seafood',
    'turkey',
    'processed'
);


--
-- Name: enum__products_v_version_origin; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_origin AS ENUM (
    'japanese-heritage',
    'black-angus-heritage',
    'midwest-corn-fed'
);


--
-- Name: enum__products_v_version_preparation_style; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_preparation_style AS ENUM (
    'curry-cut',
    'bbq',
    'stir-fry',
    'soup',
    'ready'
);


--
-- Name: enum__products_v_version_quality; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_quality AS ENUM (
    'organic',
    'free-range',
    'grass-fed',
    'antibiotic-free',
    'halal'
);


--
-- Name: enum__products_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum__products_v_version_storage_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_storage_type AS ENUM (
    'fresh',
    'frozen',
    'chilled',
    'marinated'
);


--
-- Name: enum__products_v_version_tags; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__products_v_version_tags AS ENUM (
    'best-seller',
    'top-rated',
    'new'
);


--
-- Name: enum__variants_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__variants_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_addresses_country; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_addresses_country AS ENUM (
    'US',
    'GB',
    'CA',
    'AU',
    'AT',
    'BE',
    'BR',
    'BG',
    'CY',
    'CZ',
    'DK',
    'EE',
    'FI',
    'FR',
    'DE',
    'GR',
    'HK',
    'HU',
    'IN',
    'IE',
    'IT',
    'JP',
    'LV',
    'LT',
    'LU',
    'MY',
    'MT',
    'MX',
    'NL',
    'NZ',
    'NO',
    'PL',
    'PT',
    'RO',
    'SG',
    'SK',
    'SI',
    'ES',
    'SE',
    'CH'
);


--
-- Name: enum_branch_holidays_service_types; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_branch_holidays_service_types AS ENUM (
    'pickup',
    'delivery'
);


--
-- Name: enum_branch_inventory_stock_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_branch_inventory_stock_status AS ENUM (
    'instock',
    'outofstock',
    'backorder'
);


--
-- Name: enum_carts_currency; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_carts_currency AS ENUM (
    'USD'
);


--
-- Name: enum_footer_nav_items_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_footer_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_footer_social_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_footer_social_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_forms_confirmation_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_forms_confirmation_type AS ENUM (
    'message',
    'redirect'
);


--
-- Name: enum_fulfillment_schedules_service_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_fulfillment_schedules_service_type AS ENUM (
    'delivery',
    'pickup'
);


--
-- Name: enum_fulfillment_schedules_weekly_days; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_fulfillment_schedules_weekly_days AS ENUM (
    'monday',
    'tuesday',
    'wednesday',
    'thursday',
    'friday',
    'saturday',
    'sunday'
);


--
-- Name: enum_header_nav_items_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_header_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_orders_currency; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_orders_currency AS ENUM (
    'USD'
);


--
-- Name: enum_orders_fulfillment_service_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_orders_fulfillment_service_type AS ENUM (
    'pickup',
    'delivery'
);


--
-- Name: enum_orders_purchase_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_orders_purchase_type AS ENUM (
    'one_time',
    'weekly',
    'monthly'
);


--
-- Name: enum_orders_purchase_types_purchase_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_orders_purchase_types_purchase_type AS ENUM (
    'one_time',
    'weekly',
    'monthly'
);


--
-- Name: enum_orders_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_orders_status AS ENUM (
    'processing',
    'completed',
    'cancelled',
    'refunded'
);


--
-- Name: enum_pages_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


--
-- Name: enum_pages_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_archive_relation_to AS ENUM (
    'products'
);


--
-- Name: enum_pages_blocks_banner_style; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_banner_style AS ENUM (
    'info',
    'warning',
    'error',
    'success'
);


--
-- Name: enum_pages_blocks_carousel_populate_by; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_carousel_populate_by AS ENUM (
    'collection',
    'selection'
);


--
-- Name: enum_pages_blocks_carousel_relation_to; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_carousel_relation_to AS ENUM (
    'products'
);


--
-- Name: enum_pages_blocks_contact_cards_items_icon; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_contact_cards_items_icon AS ENUM (
    'map-pin',
    'phone',
    'mail',
    'clock-3'
);


--
-- Name: enum_pages_blocks_contact_page_cards_icon; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_contact_page_cards_icon AS ENUM (
    'map-pin',
    'phone',
    'mail'
);


--
-- Name: enum_pages_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


--
-- Name: enum_pages_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_blocks_visit_section_image_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_visit_section_image_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_blocks_visit_section_image_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_visit_section_image_links_link_type AS ENUM (
    'custom',
    'reference'
);


--
-- Name: enum_pages_hero_carousel_settings_height; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_hero_carousel_settings_height AS ENUM (
    'medium',
    'large',
    'fullScreen'
);


--
-- Name: enum_pages_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_hero_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_hero_slides_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_hero_slides_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_hero_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_hero_type AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact',
    'carousel'
);


--
-- Name: enum_pages_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_products_aging_process; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_aging_process AS ENUM (
    'dry-aged',
    'wet-aged'
);


--
-- Name: enum_products_cut_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_cut_type AS ENUM (
    'prime-rib',
    'wagyu-strips',
    'filet-mignon',
    'tomahawk'
);


--
-- Name: enum_products_flavor; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_flavor AS ENUM (
    'plain',
    'spicy',
    'bbq',
    'herb'
);


--
-- Name: enum_products_meat_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_meat_type AS ENUM (
    'beef',
    'chicken',
    'pork',
    'lamb',
    'seafood',
    'turkey',
    'processed'
);


--
-- Name: enum_products_origin; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_origin AS ENUM (
    'japanese-heritage',
    'black-angus-heritage',
    'midwest-corn-fed'
);


--
-- Name: enum_products_preparation_style; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_preparation_style AS ENUM (
    'curry-cut',
    'bbq',
    'stir-fry',
    'soup',
    'ready'
);


--
-- Name: enum_products_quality; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_quality AS ENUM (
    'organic',
    'free-range',
    'grass-fed',
    'antibiotic-free',
    'halal'
);


--
-- Name: enum_products_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_products_storage_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_storage_type AS ENUM (
    'fresh',
    'frozen',
    'chilled',
    'marinated'
);


--
-- Name: enum_products_tags; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_products_tags AS ENUM (
    'best-seller',
    'top-rated',
    'new'
);


--
-- Name: enum_transactions_currency; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_transactions_currency AS ENUM (
    'USD'
);


--
-- Name: enum_transactions_payment_method; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_transactions_payment_method AS ENUM (
    'stripe'
);


--
-- Name: enum_transactions_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_transactions_status AS ENUM (
    'pending',
    'succeeded',
    'failed',
    'cancelled',
    'expired',
    'refunded'
);


--
-- Name: enum_users_roles; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_users_roles AS ENUM (
    'admin',
    'customer'
);


--
-- Name: enum_variants_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_variants_status AS ENUM (
    'draft',
    'published'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _pages_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_published_on timestamp(3) with time zone,
    version_hero_type public.enum__pages_v_version_hero_type DEFAULT 'lowImpact'::public.enum__pages_v_version_hero_type,
    version_hero_rich_text jsonb,
    version_hero_media_id integer,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_generate_slug boolean DEFAULT true,
    version_slug character varying,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__pages_v_version_status DEFAULT 'draft'::public.enum__pages_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean,
    version_hero_eyebrow character varying,
    version_hero_heading character varying,
    version_hero_description character varying,
    version_hero_carousel_settings_autoplay boolean DEFAULT true,
    version_hero_carousel_settings_autoplay_delay numeric DEFAULT 5000,
    version_hero_carousel_settings_show_dots boolean DEFAULT true,
    version_hero_carousel_settings_show_arrows boolean DEFAULT true,
    version_hero_carousel_settings_height public.enum__pages_v_version_hero_carousel_settings_height DEFAULT 'large'::public.enum__pages_v_version_hero_carousel_settings_height
);


--
-- Name: _pages_v_blocks_about_story; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_about_story (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    title character varying DEFAULT 'The Legacy of Excellence'::character varying,
    lead character varying DEFAULT 'Founded in 1982, The Butcher''s Craft began as a small family atelier dedicated to the pursuit of the perfect steak.'::character varying,
    body character varying DEFAULT 'Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.'::character varying,
    cta_label character varying DEFAULT 'Explore Our Cuts'::character varying,
    cta_url character varying DEFAULT '/shop'::character varying,
    image_id integer,
    _uuid character varying,
    block_name character varying,
    page_intro_eyebrow character varying DEFAULT 'Our story'::character varying,
    page_intro_heading character varying DEFAULT 'Our Journey'::character varying,
    page_intro_description character varying DEFAULT 'A story of craftsmanship, patience, and a relentless dedication to quality.'::character varying,
    page_intro_hero_image_id integer
);


--
-- Name: _pages_v_blocks_about_story_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_about_story_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_about_story_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_about_story_id_seq OWNED BY public._pages_v_blocks_about_story.id;


--
-- Name: _pages_v_blocks_archive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    intro_content jsonb,
    populate_by public.enum__pages_v_blocks_archive_populate_by DEFAULT 'collection'::public.enum__pages_v_blocks_archive_populate_by,
    relation_to public.enum__pages_v_blocks_archive_relation_to DEFAULT 'products'::public.enum__pages_v_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_archive_id_seq OWNED BY public._pages_v_blocks_archive.id;


--
-- Name: _pages_v_blocks_banner; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_banner (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    style public.enum__pages_v_blocks_banner_style DEFAULT 'info'::public.enum__pages_v_blocks_banner_style,
    content jsonb,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_banner_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_banner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_banner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_banner_id_seq OWNED BY public._pages_v_blocks_banner.id;


--
-- Name: _pages_v_blocks_carousel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_carousel (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    populate_by public.enum__pages_v_blocks_carousel_populate_by DEFAULT 'collection'::public.enum__pages_v_blocks_carousel_populate_by,
    relation_to public.enum__pages_v_blocks_carousel_relation_to DEFAULT 'products'::public.enum__pages_v_blocks_carousel_relation_to,
    "limit" numeric DEFAULT 10,
    populated_docs_total numeric,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_carousel_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_carousel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_carousel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_carousel_id_seq OWNED BY public._pages_v_blocks_carousel.id;


--
-- Name: _pages_v_blocks_contact_cards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_contact_cards (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    title character varying DEFAULT 'Get In Touch'::character varying,
    subtitle character varying DEFAULT 'Reservations & Inquiries'::character varying,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_contact_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_contact_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_contact_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_contact_cards_id_seq OWNED BY public._pages_v_blocks_contact_cards.id;


--
-- Name: _pages_v_blocks_contact_cards_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_contact_cards_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    icon public.enum__pages_v_blocks_contact_cards_items_icon DEFAULT 'map-pin'::public.enum__pages_v_blocks_contact_cards_items_icon,
    title character varying,
    line1 character varying,
    line2 character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_contact_cards_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_contact_cards_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_contact_cards_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_contact_cards_items_id_seq OWNED BY public._pages_v_blocks_contact_cards_items.id;


--
-- Name: _pages_v_blocks_contact_page; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_contact_page (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    form_title character varying DEFAULT 'Send An Inquiry'::character varying,
    form_id integer,
    map_image_id integer,
    map_label character varying DEFAULT 'The Butcher''s Craft Atelier'::character varying,
    _uuid character varying,
    block_name character varying,
    map_embed_url character varying,
    store_note character varying,
    map_title character varying DEFAULT 'Toronto'::character varying
);


--
-- Name: _pages_v_blocks_contact_page_cards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_contact_page_cards (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    icon public.enum__pages_v_blocks_contact_page_cards_icon DEFAULT 'map-pin'::public.enum__pages_v_blocks_contact_page_cards_icon,
    title character varying,
    line1 character varying,
    line2 character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_contact_page_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_contact_page_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_contact_page_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_contact_page_cards_id_seq OWNED BY public._pages_v_blocks_contact_page_cards.id;


--
-- Name: _pages_v_blocks_contact_page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_contact_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_contact_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_contact_page_id_seq OWNED BY public._pages_v_blocks_contact_page.id;


--
-- Name: _pages_v_blocks_contact_page_store_hours; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_contact_page_store_hours (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    day character varying,
    "time" character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_contact_page_store_hours_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_contact_page_store_hours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_contact_page_store_hours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_contact_page_store_hours_id_seq OWNED BY public._pages_v_blocks_contact_page_store_hours.id;


--
-- Name: _pages_v_blocks_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_content_columns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    size public.enum__pages_v_blocks_content_columns_size DEFAULT 'oneThird'::public.enum__pages_v_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum__pages_v_blocks_content_columns_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_content_columns_link_appearance,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_content_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_content_columns_id_seq OWNED BY public._pages_v_blocks_content_columns.id;


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_content_id_seq OWNED BY public._pages_v_blocks_content.id;


--
-- Name: _pages_v_blocks_cta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    rich_text jsonb,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_cta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_cta_id_seq OWNED BY public._pages_v_blocks_cta.id;


--
-- Name: _pages_v_blocks_cta_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_blocks_cta_links_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_cta_links_link_appearance,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_cta_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_cta_links_id_seq OWNED BY public._pages_v_blocks_cta_links.id;


--
-- Name: _pages_v_blocks_featured_cuts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_featured_cuts (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    title character varying DEFAULT 'Monthly Menu'::character varying,
    intro character varying,
    _uuid character varying,
    block_name character varying,
    eyebrow character varying DEFAULT 'EXCLUSIVE SELECTION'::character varying
);


--
-- Name: _pages_v_blocks_featured_cuts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_featured_cuts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_featured_cuts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_featured_cuts_id_seq OWNED BY public._pages_v_blocks_featured_cuts.id;


--
-- Name: _pages_v_blocks_featured_cuts_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_featured_cuts_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    name character varying,
    description character varying,
    price character varying,
    image_id integer,
    _uuid character varying,
    tag character varying,
    product_id integer
);


--
-- Name: _pages_v_blocks_featured_cuts_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_featured_cuts_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_featured_cuts_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_featured_cuts_items_id_seq OWNED BY public._pages_v_blocks_featured_cuts_items.id;


--
-- Name: _pages_v_blocks_form_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_form_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    form_id integer,
    enable_intro boolean,
    intro_content jsonb,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_form_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_form_block_id_seq OWNED BY public._pages_v_blocks_form_block.id;


--
-- Name: _pages_v_blocks_how_it_works; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_how_it_works (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    steps_eyebrow character varying DEFAULT 'The Process'::character varying,
    steps_title character varying DEFAULT 'How It Works'::character varying,
    steps_intro character varying DEFAULT 'Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.'::character varying,
    values_eyebrow character varying DEFAULT 'Our Values'::character varying,
    values_title character varying DEFAULT 'Why Choose Us'::character varying,
    faq_title character varying DEFAULT 'Frequently Asked Questions'::character varying,
    faq_link_label character varying DEFAULT 'See all FAQs'::character varying,
    faq_link_url character varying DEFAULT '/contact-us'::character varying,
    bottom_cta_label character varying DEFAULT 'Start Shopping'::character varying,
    bottom_cta_url character varying DEFAULT '/shop'::character varying,
    _uuid character varying,
    block_name character varying,
    values_background_image_id integer,
    bottom_cta_background_image_id integer
);


--
-- Name: _pages_v_blocks_how_it_works_faqs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_how_it_works_faqs (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    question character varying,
    answer character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_how_it_works_faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_how_it_works_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_how_it_works_faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_how_it_works_faqs_id_seq OWNED BY public._pages_v_blocks_how_it_works_faqs.id;


--
-- Name: _pages_v_blocks_how_it_works_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_how_it_works_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_how_it_works_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_how_it_works_id_seq OWNED BY public._pages_v_blocks_how_it_works.id;


--
-- Name: _pages_v_blocks_how_it_works_steps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_how_it_works_steps (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    step_number numeric,
    title character varying,
    description character varying,
    image_id integer,
    cta_label character varying,
    cta_url character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_how_it_works_steps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_how_it_works_steps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_how_it_works_steps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_how_it_works_steps_id_seq OWNED BY public._pages_v_blocks_how_it_works_steps.id;


--
-- Name: _pages_v_blocks_how_it_works_values; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_how_it_works_values (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    title character varying,
    description character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_how_it_works_values_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_how_it_works_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_how_it_works_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_how_it_works_values_id_seq OWNED BY public._pages_v_blocks_how_it_works_values.id;


--
-- Name: _pages_v_blocks_info_section; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_info_section (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    eyebrow character varying DEFAULT 'SINCE 1984'::character varying,
    title character varying DEFAULT 'Our House'::character varying,
    image_id integer,
    _uuid character varying,
    block_name character varying,
    description character varying,
    quote character varying,
    link_label character varying DEFAULT 'OUR STORY'::character varying,
    link_url character varying DEFAULT '/our-story'::character varying
);


--
-- Name: _pages_v_blocks_info_section_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_info_section_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_info_section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_info_section_id_seq OWNED BY public._pages_v_blocks_info_section.id;


--
-- Name: _pages_v_blocks_media_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    media_id integer,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_media_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_media_block_id_seq OWNED BY public._pages_v_blocks_media_block.id;


--
-- Name: _pages_v_blocks_product_grid; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_product_grid (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    title character varying DEFAULT 'The Shop'::character varying,
    description character varying DEFAULT 'Curated selections of the world''s finest prime cuts.'::character varying,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_product_grid_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_product_grid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_product_grid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_product_grid_id_seq OWNED BY public._pages_v_blocks_product_grid.id;


--
-- Name: _pages_v_blocks_social_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_social_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    title character varying DEFAULT 'Join the Inner Circle'::character varying,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_social_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_social_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_social_links_id_seq OWNED BY public._pages_v_blocks_social_links.id;


--
-- Name: _pages_v_blocks_social_links_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_social_links_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    label character varying,
    url character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_social_links_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_social_links_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_social_links_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_social_links_items_id_seq OWNED BY public._pages_v_blocks_social_links_items.id;


--
-- Name: _pages_v_blocks_testimonials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_testimonials (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    title character varying DEFAULT 'What Our Customers Say'::character varying,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_testimonials_id_seq OWNED BY public._pages_v_blocks_testimonials.id;


--
-- Name: _pages_v_blocks_testimonials_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_testimonials_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    quote character varying,
    name character varying,
    role character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_testimonials_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_testimonials_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_testimonials_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_testimonials_items_id_seq OWNED BY public._pages_v_blocks_testimonials_items.id;


--
-- Name: _pages_v_blocks_three_item_grid; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_three_item_grid (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_three_item_grid_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_three_item_grid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_three_item_grid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_three_item_grid_id_seq OWNED BY public._pages_v_blocks_three_item_grid.id;


--
-- Name: _pages_v_blocks_visit_section; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_visit_section (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    title character varying DEFAULT 'Visit Us'::character varying,
    description character varying DEFAULT 'Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.'::character varying,
    location_label character varying DEFAULT 'New York'::character varying,
    map_image_id integer,
    _uuid character varying,
    block_name character varying,
    storefront_image_id integer,
    image_eyebrow character varying,
    image_heading character varying,
    image_description character varying
);


--
-- Name: _pages_v_blocks_visit_section_hours; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_visit_section_hours (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    label character varying,
    value character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_visit_section_hours_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_visit_section_hours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_visit_section_hours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_visit_section_hours_id_seq OWNED BY public._pages_v_blocks_visit_section_hours.id;


--
-- Name: _pages_v_blocks_visit_section_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_visit_section_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_visit_section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_visit_section_id_seq OWNED BY public._pages_v_blocks_visit_section.id;


--
-- Name: _pages_v_blocks_visit_section_image_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_visit_section_image_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_blocks_visit_section_image_links_link_type DEFAULT 'custom'::public.enum__pages_v_blocks_visit_section_image_links_link_type,
    link_label character varying,
    link_url character varying,
    link_appearance public.enum__pages_v_blocks_visit_section_image_links_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_visit_section_image_links_link_appearance,
    link_new_tab boolean DEFAULT false,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_visit_section_image_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_visit_section_image_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_visit_section_image_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_visit_section_image_links_id_seq OWNED BY public._pages_v_blocks_visit_section_image_links.id;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_id_seq OWNED BY public._pages_v.id;


--
-- Name: _pages_v_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    categories_id integer,
    products_id integer
);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_rels_id_seq OWNED BY public._pages_v_rels.id;


--
-- Name: _pages_v_version_hero_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_version_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_version_hero_links_link_type DEFAULT 'reference'::public.enum__pages_v_version_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_version_hero_links_link_appearance DEFAULT 'default'::public.enum__pages_v_version_hero_links_link_appearance,
    _uuid character varying
);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_version_hero_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_version_hero_links_id_seq OWNED BY public._pages_v_version_hero_links.id;


--
-- Name: _pages_v_version_hero_slides; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_version_hero_slides (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    heading character varying,
    description character varying,
    media_id integer,
    link_type public.enum__pages_v_version_hero_slides_link_type DEFAULT 'reference'::public.enum__pages_v_version_hero_slides_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    _uuid character varying
);


--
-- Name: _pages_v_version_hero_slides_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_version_hero_slides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_version_hero_slides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_version_hero_slides_id_seq OWNED BY public._pages_v_version_hero_slides.id;


--
-- Name: _products_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._products_v (
    id integer NOT NULL,
    parent_id integer,
    version_enable_variants boolean,
    version_price_in_u_s_d_enabled boolean,
    version_price_in_u_s_d numeric,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version_deleted_at timestamp(3) with time zone,
    version__status public.enum__products_v_version_status DEFAULT 'draft'::public.enum__products_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean,
    version_eyebrow character varying DEFAULT 'Curated Collection'::character varying,
    version_primary_c_t_a_label character varying DEFAULT 'Subscribe Now'::character varying,
    version_primary_c_t_a_url character varying DEFAULT '#'::character varying,
    version_reviews_heading character varying DEFAULT 'Reviews'::character varying,
    version_reviews_summary character varying DEFAULT '4.9 Based on 128 Reviews'::character varying,
    version_title character varying,
    version_generate_slug boolean DEFAULT true,
    version_slug character varying,
    version_shop_card_label character varying DEFAULT 'Chef’s Selection'::character varying,
    version_shop_card_short_description character varying,
    version_cut_type public.enum__products_v_version_cut_type,
    version_aging_process public.enum__products_v_version_aging_process,
    version_origin public.enum__products_v_version_origin,
    version_sort_priority numeric DEFAULT 0,
    version_featured_in_shop boolean DEFAULT true,
    version_card_button_label character varying DEFAULT 'Add to Atelier Box'::character varying,
    version_meat_type public.enum__products_v_version_meat_type,
    version_weight numeric,
    version_storage_type public.enum__products_v_version_storage_type,
    version_preparation_style public.enum__products_v_version_preparation_style,
    version_flavor public.enum__products_v_version_flavor,
    version_in_stock boolean DEFAULT true,
    version_purchase_frequencies_one_time_enabled boolean DEFAULT true,
    version_purchase_frequencies_one_time_price_override character varying,
    version_purchase_frequencies_monthly_enabled boolean DEFAULT true,
    version_purchase_frequencies_monthly_price_override character varying,
    version_purchase_frequencies_monthly_savings_text character varying
);


--
-- Name: _products_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._products_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _products_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._products_v_id_seq OWNED BY public._products_v.id;


--
-- Name: _products_v_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._products_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    variant_types_id integer
);


--
-- Name: _products_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._products_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _products_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._products_v_rels_id_seq OWNED BY public._products_v_rels.id;


--
-- Name: _products_v_version_badges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._products_v_version_badges (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    label character varying,
    _uuid character varying
);


--
-- Name: _products_v_version_badges_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._products_v_version_badges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _products_v_version_badges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._products_v_version_badges_id_seq OWNED BY public._products_v_version_badges.id;


--
-- Name: _products_v_version_product_gallery; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._products_v_version_product_gallery (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    image_id integer,
    _uuid character varying
);


--
-- Name: _products_v_version_product_gallery_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._products_v_version_product_gallery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _products_v_version_product_gallery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._products_v_version_product_gallery_id_seq OWNED BY public._products_v_version_product_gallery.id;


--
-- Name: _products_v_version_quality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._products_v_version_quality (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum__products_v_version_quality,
    id integer NOT NULL
);


--
-- Name: _products_v_version_quality_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._products_v_version_quality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _products_v_version_quality_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._products_v_version_quality_id_seq OWNED BY public._products_v_version_quality.id;


--
-- Name: _products_v_version_reviews; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._products_v_version_reviews (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    name character varying,
    role character varying,
    body character varying,
    rating numeric DEFAULT 5,
    _uuid character varying
);


--
-- Name: _products_v_version_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._products_v_version_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _products_v_version_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._products_v_version_reviews_id_seq OWNED BY public._products_v_version_reviews.id;


--
-- Name: _products_v_version_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._products_v_version_tags (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum__products_v_version_tags,
    id integer NOT NULL
);


--
-- Name: _products_v_version_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._products_v_version_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _products_v_version_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._products_v_version_tags_id_seq OWNED BY public._products_v_version_tags.id;


--
-- Name: _products_v_version_whats_inside; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._products_v_version_whats_inside (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    quantity character varying,
    label character varying,
    _uuid character varying
);


--
-- Name: _products_v_version_whats_inside_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._products_v_version_whats_inside_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _products_v_version_whats_inside_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._products_v_version_whats_inside_id_seq OWNED BY public._products_v_version_whats_inside.id;


--
-- Name: _variants_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._variants_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_product_id integer,
    version_inventory numeric DEFAULT 0,
    version_price_in_u_s_d_enabled boolean,
    version_price_in_u_s_d numeric,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version_deleted_at timestamp(3) with time zone,
    version__status public.enum__variants_v_version_status DEFAULT 'draft'::public.enum__variants_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean
);


--
-- Name: _variants_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._variants_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _variants_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._variants_v_id_seq OWNED BY public._variants_v.id;


--
-- Name: _variants_v_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._variants_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    variant_options_id integer
);


--
-- Name: _variants_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._variants_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _variants_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._variants_v_rels_id_seq OWNED BY public._variants_v_rels.id;


--
-- Name: addresses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    customer_id integer,
    title character varying,
    first_name character varying,
    last_name character varying,
    company character varying,
    address_line1 character varying,
    address_line2 character varying,
    city character varying,
    state character varying,
    postal_code character varying,
    country public.enum_addresses_country NOT NULL,
    phone character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: branch_holidays; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.branch_holidays (
    id integer NOT NULL,
    title character varying NOT NULL,
    branch_id integer NOT NULL,
    date timestamp(3) with time zone NOT NULL,
    message character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: branch_holidays_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.branch_holidays_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: branch_holidays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.branch_holidays_id_seq OWNED BY public.branch_holidays.id;


--
-- Name: branch_holidays_service_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.branch_holidays_service_types (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum_branch_holidays_service_types,
    id integer NOT NULL
);


--
-- Name: branch_holidays_service_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.branch_holidays_service_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: branch_holidays_service_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.branch_holidays_service_types_id_seq OWNED BY public.branch_holidays_service_types.id;


--
-- Name: branch_inventory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.branch_inventory (
    id integer NOT NULL,
    branch_id integer NOT NULL,
    product_id integer NOT NULL,
    sku character varying,
    manage_stock boolean DEFAULT true,
    stock_quantity numeric DEFAULT 0,
    stock_status public.enum_branch_inventory_stock_status DEFAULT 'instock'::public.enum_branch_inventory_stock_status,
    allow_backorders boolean DEFAULT false,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    max_pickup_orders_per_day numeric,
    max_delivery_orders_per_day numeric
);


--
-- Name: branch_inventory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.branch_inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: branch_inventory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.branch_inventory_id_seq OWNED BY public.branch_inventory.id;


--
-- Name: branches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.branches (
    id integer NOT NULL,
    name character varying NOT NULL,
    code character varying NOT NULL,
    address character varying,
    phone character varying,
    email character varying,
    is_active boolean DEFAULT true,
    opening_hours jsonb,
    holiday_message character varying DEFAULT 'This branch is closed today.'::character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: branches_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.branches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: branches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.branches_id_seq OWNED BY public.branches.id;


--
-- Name: cart_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_settings (
    id integer NOT NULL,
    enabled boolean DEFAULT true,
    timer_seconds numeric DEFAULT 120 NOT NULL,
    warning_seconds numeric DEFAULT 30 NOT NULL,
    extend_seconds numeric DEFAULT 30 NOT NULL,
    modal_title character varying DEFAULT 'Preserving Freshness'::character varying NOT NULL,
    modal_message character varying DEFAULT 'Our artisanal selections are limited. Your cart is about to be cleared to ensure other patrons can enjoy these prime cuts.'::character varying NOT NULL,
    confirm_button_label character varying DEFAULT 'OK'::character varying NOT NULL,
    extend_button_label character varying DEFAULT 'Add 30 sec more'::character varying NOT NULL,
    footer_text character varying DEFAULT 'The Butcher''s Craft — Est. 1982'::character varying,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


--
-- Name: cart_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cart_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cart_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cart_settings_id_seq OWNED BY public.cart_settings.id;


--
-- Name: carts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.carts (
    id integer NOT NULL,
    secret character varying,
    customer_id integer,
    purchased_at timestamp(3) with time zone,
    subtotal numeric,
    currency public.enum_carts_currency DEFAULT 'USD'::public.enum_carts_currency,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.carts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;


--
-- Name: carts_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.carts_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    product_id integer,
    variant_id integer,
    quantity numeric DEFAULT 1 NOT NULL
);


--
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    title character varying NOT NULL,
    generate_slug boolean DEFAULT true,
    slug character varying NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: cut_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cut_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: cut_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cut_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cut_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cut_types_id_seq OWNED BY public.cut_types.id;


--
-- Name: flavors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.flavors (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: flavors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.flavors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: flavors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.flavors_id_seq OWNED BY public.flavors.id;


--
-- Name: footer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.footer (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone,
    brand_name character varying NOT NULL,
    description character varying,
    contact_email character varying,
    contact_phone character varying,
    address character varying,
    bottom_bar_legal_text character varying,
    bottom_bar_location_text character varying,
    bottom_bar_credit_label character varying,
    bottom_bar_credit_url character varying,
    logo_id integer
);


--
-- Name: footer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.footer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.footer_id_seq OWNED BY public.footer.id;


--
-- Name: footer_nav_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.footer_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_nav_items_link_type DEFAULT 'reference'::public.enum_footer_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


--
-- Name: footer_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.footer_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer
);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.footer_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: footer_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.footer_rels_id_seq OWNED BY public.footer_rels.id;


--
-- Name: footer_social_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.footer_social_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_social_links_link_type DEFAULT 'reference'::public.enum_footer_social_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


--
-- Name: form_submissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.form_submissions (
    id integer NOT NULL,
    form_id integer NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: form_submissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.form_submissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: form_submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.form_submissions_id_seq OWNED BY public.form_submissions.id;


--
-- Name: form_submissions_submission_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.form_submissions_submission_data (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    field character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: forms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms (
    id integer NOT NULL,
    title character varying NOT NULL,
    submit_button_label character varying,
    confirmation_type public.enum_forms_confirmation_type DEFAULT 'message'::public.enum_forms_confirmation_type,
    confirmation_message jsonb,
    redirect_url character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: forms_blocks_checkbox; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_checkbox (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    default_value boolean,
    block_name character varying
);


--
-- Name: forms_blocks_country; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_country (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_email; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_email (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_message; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_message (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    message jsonb,
    block_name character varying
);


--
-- Name: forms_blocks_number; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_number (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value numeric,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_select; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_select (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    placeholder character varying,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_select_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_select_options (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    label character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: forms_blocks_state; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_state (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_text; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_text (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_textarea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_textarea (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


--
-- Name: forms_emails; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_emails (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    email_to character varying,
    cc character varying,
    bcc character varying,
    reply_to character varying,
    email_from character varying,
    subject character varying DEFAULT 'You''ve received a new message.'::character varying NOT NULL,
    message jsonb
);


--
-- Name: forms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.forms_id_seq OWNED BY public.forms.id;


--
-- Name: fulfillment_schedules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_schedules (
    id integer NOT NULL,
    name character varying NOT NULL,
    is_active boolean DEFAULT true,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    service_type public.enum_fulfillment_schedules_service_type DEFAULT 'delivery'::public.enum_fulfillment_schedules_service_type NOT NULL,
    shipping_charge numeric DEFAULT 0
);


--
-- Name: fulfillment_schedules_available_dates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_schedules_available_dates (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    date timestamp(3) with time zone NOT NULL
);


--
-- Name: fulfillment_schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fulfillment_schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fulfillment_schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fulfillment_schedules_id_seq OWNED BY public.fulfillment_schedules.id;


--
-- Name: fulfillment_schedules_postal_codes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_schedules_postal_codes (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    code character varying
);


--
-- Name: fulfillment_schedules_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_schedules_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    branches_id integer,
    products_id integer
);


--
-- Name: fulfillment_schedules_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fulfillment_schedules_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fulfillment_schedules_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fulfillment_schedules_rels_id_seq OWNED BY public.fulfillment_schedules_rels.id;


--
-- Name: fulfillment_schedules_time_slots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_schedules_time_slots (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    label character varying NOT NULL
);


--
-- Name: fulfillment_schedules_weekly_days; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_schedules_weekly_days (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum_fulfillment_schedules_weekly_days,
    id integer NOT NULL
);


--
-- Name: fulfillment_schedules_weekly_days_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fulfillment_schedules_weekly_days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fulfillment_schedules_weekly_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fulfillment_schedules_weekly_days_id_seq OWNED BY public.fulfillment_schedules_weekly_days.id;


--
-- Name: header; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.header (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone,
    logo_id integer
);


--
-- Name: header_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: header_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.header_id_seq OWNED BY public.header.id;


--
-- Name: header_nav_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.header_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_header_nav_items_link_type DEFAULT 'reference'::public.enum_header_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


--
-- Name: header_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.header_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer
);


--
-- Name: header_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.header_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: header_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.header_rels_id_seq OWNED BY public.header_rels.id;


--
-- Name: meat_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.meat_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: meat_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.meat_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: meat_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.meat_types_id_seq OWNED BY public.meat_types.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.media (
    id integer NOT NULL,
    alt character varying NOT NULL,
    caption jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    url character varying,
    thumbnail_u_r_l character varying,
    filename character varying,
    mime_type character varying,
    filesize numeric,
    width numeric,
    height numeric,
    focal_x numeric,
    focal_y numeric
);


--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: newsletter_promo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.newsletter_promo (
    id integer NOT NULL,
    image_id integer,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


--
-- Name: newsletter_promo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.newsletter_promo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: newsletter_promo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.newsletter_promo_id_seq OWNED BY public.newsletter_promo.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    shipping_address_title character varying,
    shipping_address_first_name character varying,
    shipping_address_last_name character varying,
    shipping_address_company character varying,
    shipping_address_address_line1 character varying,
    shipping_address_address_line2 character varying,
    shipping_address_city character varying,
    shipping_address_state character varying,
    shipping_address_postal_code character varying,
    shipping_address_country character varying,
    shipping_address_phone character varying,
    customer_id integer,
    customer_email character varying,
    status public.enum_orders_status DEFAULT 'processing'::public.enum_orders_status,
    amount numeric,
    currency public.enum_orders_currency DEFAULT 'USD'::public.enum_orders_currency,
    access_token character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    fulfillment_branch_id integer,
    fulfillment_service_type public.enum_orders_fulfillment_service_type,
    fulfillment_date timestamp(3) with time zone,
    fulfillment_time_slot character varying,
    fulfillment_postal_code character varying,
    fulfillment_notes character varying,
    fulfillment_shipping_charge numeric,
    purchase_type public.enum_orders_purchase_type DEFAULT 'one_time'::public.enum_orders_purchase_type,
    stripe_subscription_i_d character varying,
    inventory_reduced boolean DEFAULT false
);


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: orders_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orders_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    product_id integer,
    variant_id integer,
    quantity numeric DEFAULT 1 NOT NULL
);


--
-- Name: orders_purchase_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orders_purchase_types (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    product_id integer NOT NULL,
    variant character varying,
    purchase_type public.enum_orders_purchase_types_purchase_type DEFAULT 'one_time'::public.enum_orders_purchase_types_purchase_type NOT NULL
);


--
-- Name: orders_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orders_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    transactions_id integer
);


--
-- Name: orders_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.orders_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orders_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.orders_rels_id_seq OWNED BY public.orders_rels.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying,
    published_on timestamp(3) with time zone,
    hero_type public.enum_pages_hero_type DEFAULT 'lowImpact'::public.enum_pages_hero_type,
    hero_rich_text jsonb,
    hero_media_id integer,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    generate_slug boolean DEFAULT true,
    slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_pages_status DEFAULT 'draft'::public.enum_pages_status,
    hero_eyebrow character varying,
    hero_heading character varying,
    hero_description character varying,
    hero_carousel_settings_autoplay boolean DEFAULT true,
    hero_carousel_settings_autoplay_delay numeric DEFAULT 5000,
    hero_carousel_settings_show_dots boolean DEFAULT true,
    hero_carousel_settings_show_arrows boolean DEFAULT true,
    hero_carousel_settings_height public.enum_pages_hero_carousel_settings_height DEFAULT 'large'::public.enum_pages_hero_carousel_settings_height
);


--
-- Name: pages_blocks_about_story; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_about_story (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    title character varying DEFAULT 'The Legacy of Excellence'::character varying,
    lead character varying DEFAULT 'Founded in 1982, The Butcher''s Craft began as a small family atelier dedicated to the pursuit of the perfect steak.'::character varying,
    body character varying DEFAULT 'Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.'::character varying,
    cta_label character varying DEFAULT 'Explore Our Cuts'::character varying,
    cta_url character varying DEFAULT '/shop'::character varying,
    image_id integer,
    block_name character varying,
    page_intro_eyebrow character varying DEFAULT 'Our story'::character varying,
    page_intro_heading character varying DEFAULT 'Our Journey'::character varying,
    page_intro_description character varying DEFAULT 'A story of craftsmanship, patience, and a relentless dedication to quality.'::character varying,
    page_intro_hero_image_id integer
);


--
-- Name: pages_blocks_archive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    intro_content jsonb,
    populate_by public.enum_pages_blocks_archive_populate_by DEFAULT 'collection'::public.enum_pages_blocks_archive_populate_by,
    relation_to public.enum_pages_blocks_archive_relation_to DEFAULT 'products'::public.enum_pages_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    block_name character varying
);


--
-- Name: pages_blocks_banner; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_banner (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    style public.enum_pages_blocks_banner_style DEFAULT 'info'::public.enum_pages_blocks_banner_style,
    content jsonb,
    block_name character varying
);


--
-- Name: pages_blocks_carousel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_carousel (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    populate_by public.enum_pages_blocks_carousel_populate_by DEFAULT 'collection'::public.enum_pages_blocks_carousel_populate_by,
    relation_to public.enum_pages_blocks_carousel_relation_to DEFAULT 'products'::public.enum_pages_blocks_carousel_relation_to,
    "limit" numeric DEFAULT 10,
    populated_docs_total numeric,
    block_name character varying
);


--
-- Name: pages_blocks_contact_cards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_contact_cards (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    title character varying DEFAULT 'Get In Touch'::character varying,
    subtitle character varying DEFAULT 'Reservations & Inquiries'::character varying,
    block_name character varying
);


--
-- Name: pages_blocks_contact_cards_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_contact_cards_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    icon public.enum_pages_blocks_contact_cards_items_icon DEFAULT 'map-pin'::public.enum_pages_blocks_contact_cards_items_icon,
    title character varying,
    line1 character varying,
    line2 character varying
);


--
-- Name: pages_blocks_contact_page; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_contact_page (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    form_title character varying DEFAULT 'Send An Inquiry'::character varying,
    form_id integer,
    map_image_id integer,
    map_label character varying DEFAULT 'The Butcher''s Craft Atelier'::character varying,
    block_name character varying,
    map_embed_url character varying,
    store_note character varying,
    map_title character varying DEFAULT 'Toronto'::character varying
);


--
-- Name: pages_blocks_contact_page_cards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_contact_page_cards (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    icon public.enum_pages_blocks_contact_page_cards_icon DEFAULT 'map-pin'::public.enum_pages_blocks_contact_page_cards_icon,
    title character varying,
    line1 character varying,
    line2 character varying
);


--
-- Name: pages_blocks_contact_page_store_hours; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_contact_page_store_hours (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    day character varying,
    "time" character varying
);


--
-- Name: pages_blocks_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_blocks_content_columns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    size public.enum_pages_blocks_content_columns_size DEFAULT 'oneThird'::public.enum_pages_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum_pages_blocks_content_columns_link_type DEFAULT 'reference'::public.enum_pages_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum_pages_blocks_content_columns_link_appearance
);


--
-- Name: pages_blocks_cta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    rich_text jsonb,
    block_name character varying
);


--
-- Name: pages_blocks_cta_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_blocks_cta_links_link_type DEFAULT 'reference'::public.enum_pages_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum_pages_blocks_cta_links_link_appearance
);


--
-- Name: pages_blocks_featured_cuts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_featured_cuts (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    title character varying DEFAULT 'Monthly Menu'::character varying,
    intro character varying,
    block_name character varying,
    eyebrow character varying DEFAULT 'EXCLUSIVE SELECTION'::character varying
);


--
-- Name: pages_blocks_featured_cuts_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_featured_cuts_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    name character varying,
    description character varying,
    price character varying,
    image_id integer,
    tag character varying,
    product_id integer
);


--
-- Name: pages_blocks_form_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_form_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    form_id integer,
    enable_intro boolean,
    intro_content jsonb,
    block_name character varying
);


--
-- Name: pages_blocks_how_it_works; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_how_it_works (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    steps_eyebrow character varying DEFAULT 'The Process'::character varying,
    steps_title character varying DEFAULT 'How It Works'::character varying,
    steps_intro character varying DEFAULT 'Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.'::character varying,
    values_eyebrow character varying DEFAULT 'Our Values'::character varying,
    values_title character varying DEFAULT 'Why Choose Us'::character varying,
    faq_title character varying DEFAULT 'Frequently Asked Questions'::character varying,
    faq_link_label character varying DEFAULT 'See all FAQs'::character varying,
    faq_link_url character varying DEFAULT '/contact-us'::character varying,
    bottom_cta_label character varying DEFAULT 'Start Shopping'::character varying,
    bottom_cta_url character varying DEFAULT '/shop'::character varying,
    block_name character varying,
    values_background_image_id integer,
    bottom_cta_background_image_id integer
);


--
-- Name: pages_blocks_how_it_works_faqs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_how_it_works_faqs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    question character varying,
    answer character varying
);


--
-- Name: pages_blocks_how_it_works_steps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_how_it_works_steps (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    step_number numeric,
    title character varying,
    description character varying,
    image_id integer,
    cta_label character varying,
    cta_url character varying
);


--
-- Name: pages_blocks_how_it_works_values; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_how_it_works_values (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    title character varying,
    description character varying
);


--
-- Name: pages_blocks_info_section; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_info_section (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    eyebrow character varying DEFAULT 'SINCE 1984'::character varying,
    title character varying DEFAULT 'Our House'::character varying,
    image_id integer,
    block_name character varying,
    description character varying,
    quote character varying,
    link_label character varying DEFAULT 'OUR STORY'::character varying,
    link_url character varying DEFAULT '/our-story'::character varying
);


--
-- Name: pages_blocks_media_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    media_id integer,
    block_name character varying
);


--
-- Name: pages_blocks_product_grid; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_product_grid (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    title character varying DEFAULT 'The Shop'::character varying,
    description character varying DEFAULT 'Curated selections of the world''s finest prime cuts.'::character varying,
    block_name character varying
);


--
-- Name: pages_blocks_social_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_social_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    title character varying DEFAULT 'Join the Inner Circle'::character varying,
    block_name character varying
);


--
-- Name: pages_blocks_social_links_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_social_links_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    label character varying,
    url character varying
);


--
-- Name: pages_blocks_testimonials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_testimonials (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    title character varying DEFAULT 'What Our Customers Say'::character varying,
    block_name character varying
);


--
-- Name: pages_blocks_testimonials_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_testimonials_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    quote character varying,
    name character varying,
    role character varying
);


--
-- Name: pages_blocks_three_item_grid; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_three_item_grid (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_blocks_visit_section; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_visit_section (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    title character varying DEFAULT 'Visit Us'::character varying,
    description character varying DEFAULT 'Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.'::character varying,
    location_label character varying DEFAULT 'New York'::character varying,
    map_image_id integer,
    block_name character varying,
    storefront_image_id integer,
    image_eyebrow character varying,
    image_heading character varying,
    image_description character varying
);


--
-- Name: pages_blocks_visit_section_hours; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_visit_section_hours (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    label character varying,
    value character varying
);


--
-- Name: pages_blocks_visit_section_image_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_visit_section_image_links (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_blocks_visit_section_image_links_link_type DEFAULT 'custom'::public.enum_pages_blocks_visit_section_image_links_link_type,
    link_label character varying,
    link_url character varying,
    link_appearance public.enum_pages_blocks_visit_section_image_links_link_appearance DEFAULT 'default'::public.enum_pages_blocks_visit_section_image_links_link_appearance,
    link_new_tab boolean DEFAULT false
);


--
-- Name: pages_hero_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_hero_links_link_type DEFAULT 'reference'::public.enum_pages_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_hero_links_link_appearance DEFAULT 'default'::public.enum_pages_hero_links_link_appearance
);


--
-- Name: pages_hero_slides; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_hero_slides (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    heading character varying,
    description character varying,
    media_id integer,
    link_type public.enum_pages_hero_slides_link_type DEFAULT 'reference'::public.enum_pages_hero_slides_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying
);


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    categories_id integer,
    products_id integer
);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_rels_id_seq OWNED BY public.pages_rels.id;


--
-- Name: payload_kv; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_kv (
    id integer NOT NULL,
    key character varying NOT NULL,
    data jsonb NOT NULL
);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_kv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_kv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_kv_id_seq OWNED BY public.payload_kv.id;


--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents (
    id integer NOT NULL,
    global_slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_id_seq OWNED BY public.payload_locked_documents.id;


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer,
    pages_id integer,
    categories_id integer,
    media_id integer,
    forms_id integer,
    form_submissions_id integer,
    addresses_id integer,
    variants_id integer,
    variant_types_id integer,
    variant_options_id integer,
    products_id integer,
    carts_id integer,
    orders_id integer,
    transactions_id integer,
    meat_types_id integer,
    cut_types_id integer,
    qualities_id integer,
    flavors_id integer,
    branches_id integer,
    branch_inventory_id integer,
    fulfillment_schedules_id integer,
    branch_holidays_id integer
);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNED BY public.payload_locked_documents_rels.id;


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_migrations (
    id integer NOT NULL,
    name character varying,
    batch numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_migrations_id_seq OWNED BY public.payload_migrations.id;


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences (
    id integer NOT NULL,
    key character varying,
    value jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_id_seq OWNED BY public.payload_preferences.id;


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer
);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNED BY public.payload_preferences_rels.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products (
    id integer NOT NULL,
    enable_variants boolean,
    price_in_u_s_d_enabled boolean,
    price_in_u_s_d numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp(3) with time zone,
    _status public.enum_products_status DEFAULT 'draft'::public.enum_products_status,
    eyebrow character varying DEFAULT 'Curated Collection'::character varying,
    primary_c_t_a_label character varying DEFAULT 'Subscribe Now'::character varying,
    primary_c_t_a_url character varying DEFAULT '#'::character varying,
    reviews_heading character varying DEFAULT 'Reviews'::character varying,
    reviews_summary character varying DEFAULT '4.9 Based on 128 Reviews'::character varying,
    title character varying,
    generate_slug boolean DEFAULT true,
    slug character varying,
    shop_card_label character varying DEFAULT 'Chef’s Selection'::character varying,
    shop_card_short_description character varying,
    cut_type public.enum_products_cut_type,
    aging_process public.enum_products_aging_process,
    origin public.enum_products_origin,
    sort_priority numeric DEFAULT 0,
    featured_in_shop boolean DEFAULT true,
    card_button_label character varying DEFAULT 'Add to Atelier Box'::character varying,
    meat_type public.enum_products_meat_type,
    weight numeric,
    storage_type public.enum_products_storage_type,
    preparation_style public.enum_products_preparation_style,
    flavor public.enum_products_flavor,
    in_stock boolean DEFAULT true,
    purchase_frequencies_one_time_enabled boolean DEFAULT true,
    purchase_frequencies_one_time_price_override character varying,
    purchase_frequencies_monthly_enabled boolean DEFAULT true,
    purchase_frequencies_monthly_price_override character varying,
    purchase_frequencies_monthly_savings_text character varying
);


--
-- Name: products_badges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_badges (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    label character varying
);


--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: products_product_gallery; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_product_gallery (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    image_id integer
);


--
-- Name: products_quality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_quality (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum_products_quality,
    id integer NOT NULL
);


--
-- Name: products_quality_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_quality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_quality_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.products_quality_id_seq OWNED BY public.products_quality.id;


--
-- Name: products_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    variant_types_id integer
);


--
-- Name: products_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.products_rels_id_seq OWNED BY public.products_rels.id;


--
-- Name: products_reviews; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_reviews (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    name character varying,
    role character varying,
    body character varying,
    rating numeric DEFAULT 5
);


--
-- Name: products_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_tags (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum_products_tags,
    id integer NOT NULL
);


--
-- Name: products_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.products_tags_id_seq OWNED BY public.products_tags.id;


--
-- Name: products_whats_inside; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products_whats_inside (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    quantity character varying,
    label character varying
);


--
-- Name: qualities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.qualities (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: qualities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.qualities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: qualities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.qualities_id_seq OWNED BY public.qualities.id;


--
-- Name: shop_luxury_page; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shop_luxury_page (
    id integer NOT NULL,
    eyebrow character varying,
    title character varying,
    sort_label character varying,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


--
-- Name: shop_luxury_page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shop_luxury_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shop_luxury_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shop_luxury_page_id_seq OWNED BY public.shop_luxury_page.id;


--
-- Name: shop_page; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shop_page (
    id integer NOT NULL,
    title character varying DEFAULT 'Shop By Categories'::character varying,
    intro_text character varying DEFAULT 'Our ready-to-eat meals are crafted with fresh, high-quality ingredients and fully cooked for your convenience—just heat and enjoy a wholesome, delicious meal anytime.'::character varying,
    empty_state_text character varying DEFAULT 'No products found. Please try different filters.'::character varying,
    sort_label character varying DEFAULT 'Sort by'::character varying,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone,
    results_label_single character varying DEFAULT 'result'::character varying,
    results_label_plural character varying DEFAULT 'results'::character varying,
    filters_cut_type_label character varying DEFAULT 'Cut Type'::character varying,
    filters_aging_process_label character varying DEFAULT 'Aging Process'::character varying,
    filters_origin_label character varying DEFAULT 'Origin'::character varying,
    filters_price_range_label character varying DEFAULT 'Price Range'::character varying
);


--
-- Name: shop_page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shop_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shop_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shop_page_id_seq OWNED BY public.shop_page.id;


--
-- Name: transactions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.transactions (
    id integer NOT NULL,
    payment_method public.enum_transactions_payment_method,
    stripe_customer_i_d character varying,
    stripe_payment_intent_i_d character varying,
    billing_address_title character varying,
    billing_address_first_name character varying,
    billing_address_last_name character varying,
    billing_address_company character varying,
    billing_address_address_line1 character varying,
    billing_address_address_line2 character varying,
    billing_address_city character varying,
    billing_address_state character varying,
    billing_address_postal_code character varying,
    billing_address_country character varying,
    billing_address_phone character varying,
    status public.enum_transactions_status DEFAULT 'pending'::public.enum_transactions_status NOT NULL,
    customer_id integer,
    customer_email character varying,
    order_id integer,
    cart_id integer,
    amount numeric,
    currency public.enum_transactions_currency DEFAULT 'USD'::public.enum_transactions_currency,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- Name: transactions_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.transactions_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    product_id integer,
    variant_id integer,
    quantity numeric DEFAULT 1 NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    email character varying NOT NULL,
    reset_password_token character varying,
    reset_password_expiration timestamp(3) with time zone,
    salt character varying,
    hash character varying,
    login_attempts numeric DEFAULT 0,
    lock_until timestamp(3) with time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_roles (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum_users_roles,
    id integer NOT NULL
);


--
-- Name: users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_roles_id_seq OWNED BY public.users_roles.id;


--
-- Name: users_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_sessions (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    created_at timestamp(3) with time zone,
    expires_at timestamp(3) with time zone NOT NULL
);


--
-- Name: variant_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variant_options (
    id integer NOT NULL,
    _variantoptions_options_order character varying,
    variant_type_id integer NOT NULL,
    label character varying NOT NULL,
    value character varying NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp(3) with time zone
);


--
-- Name: variant_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.variant_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variant_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.variant_options_id_seq OWNED BY public.variant_options.id;


--
-- Name: variant_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variant_types (
    id integer NOT NULL,
    label character varying NOT NULL,
    name character varying NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp(3) with time zone
);


--
-- Name: variant_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.variant_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variant_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.variant_types_id_seq OWNED BY public.variant_types.id;


--
-- Name: variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variants (
    id integer NOT NULL,
    title character varying,
    product_id integer,
    inventory numeric DEFAULT 0,
    price_in_u_s_d_enabled boolean,
    price_in_u_s_d numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp(3) with time zone,
    _status public.enum_variants_status DEFAULT 'draft'::public.enum_variants_status
);


--
-- Name: variants_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.variants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.variants_id_seq OWNED BY public.variants.id;


--
-- Name: variants_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variants_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    variant_options_id integer
);


--
-- Name: variants_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.variants_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variants_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.variants_rels_id_seq OWNED BY public.variants_rels.id;


--
-- Name: _pages_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v ALTER COLUMN id SET DEFAULT nextval('public._pages_v_id_seq'::regclass);


--
-- Name: _pages_v_blocks_about_story id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_about_story ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_about_story_id_seq'::regclass);


--
-- Name: _pages_v_blocks_archive id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_archive ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_archive_id_seq'::regclass);


--
-- Name: _pages_v_blocks_banner id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_banner ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_banner_id_seq'::regclass);


--
-- Name: _pages_v_blocks_carousel id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_carousel ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_carousel_id_seq'::regclass);


--
-- Name: _pages_v_blocks_contact_cards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_cards ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_contact_cards_id_seq'::regclass);


--
-- Name: _pages_v_blocks_contact_cards_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_cards_items ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_contact_cards_items_id_seq'::regclass);


--
-- Name: _pages_v_blocks_contact_page id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_contact_page_id_seq'::regclass);


--
-- Name: _pages_v_blocks_contact_page_cards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page_cards ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_contact_page_cards_id_seq'::regclass);


--
-- Name: _pages_v_blocks_contact_page_store_hours id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page_store_hours ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_contact_page_store_hours_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content_columns id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_columns_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_links_id_seq'::regclass);


--
-- Name: _pages_v_blocks_featured_cuts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_featured_cuts ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_featured_cuts_id_seq'::regclass);


--
-- Name: _pages_v_blocks_featured_cuts_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_featured_cuts_items ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_featured_cuts_items_id_seq'::regclass);


--
-- Name: _pages_v_blocks_form_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_form_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_form_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_how_it_works id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_how_it_works_id_seq'::regclass);


--
-- Name: _pages_v_blocks_how_it_works_faqs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works_faqs ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_how_it_works_faqs_id_seq'::regclass);


--
-- Name: _pages_v_blocks_how_it_works_steps id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works_steps ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_how_it_works_steps_id_seq'::regclass);


--
-- Name: _pages_v_blocks_how_it_works_values id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works_values ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_how_it_works_values_id_seq'::regclass);


--
-- Name: _pages_v_blocks_info_section id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_info_section ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_info_section_id_seq'::regclass);


--
-- Name: _pages_v_blocks_media_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_media_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_product_grid id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_product_grid ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_product_grid_id_seq'::regclass);


--
-- Name: _pages_v_blocks_social_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_social_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_social_links_id_seq'::regclass);


--
-- Name: _pages_v_blocks_social_links_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_social_links_items ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_social_links_items_id_seq'::regclass);


--
-- Name: _pages_v_blocks_testimonials id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_testimonials_id_seq'::regclass);


--
-- Name: _pages_v_blocks_testimonials_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_items ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_testimonials_items_id_seq'::regclass);


--
-- Name: _pages_v_blocks_three_item_grid id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_three_item_grid ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_three_item_grid_id_seq'::regclass);


--
-- Name: _pages_v_blocks_visit_section id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_visit_section_id_seq'::regclass);


--
-- Name: _pages_v_blocks_visit_section_hours id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section_hours ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_visit_section_hours_id_seq'::regclass);


--
-- Name: _pages_v_blocks_visit_section_image_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section_image_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_visit_section_image_links_id_seq'::regclass);


--
-- Name: _pages_v_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels ALTER COLUMN id SET DEFAULT nextval('public._pages_v_rels_id_seq'::regclass);


--
-- Name: _pages_v_version_hero_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_version_hero_links_id_seq'::regclass);


--
-- Name: _pages_v_version_hero_slides id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_slides ALTER COLUMN id SET DEFAULT nextval('public._pages_v_version_hero_slides_id_seq'::regclass);


--
-- Name: _products_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v ALTER COLUMN id SET DEFAULT nextval('public._products_v_id_seq'::regclass);


--
-- Name: _products_v_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_rels ALTER COLUMN id SET DEFAULT nextval('public._products_v_rels_id_seq'::regclass);


--
-- Name: _products_v_version_badges id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_badges ALTER COLUMN id SET DEFAULT nextval('public._products_v_version_badges_id_seq'::regclass);


--
-- Name: _products_v_version_product_gallery id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_product_gallery ALTER COLUMN id SET DEFAULT nextval('public._products_v_version_product_gallery_id_seq'::regclass);


--
-- Name: _products_v_version_quality id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_quality ALTER COLUMN id SET DEFAULT nextval('public._products_v_version_quality_id_seq'::regclass);


--
-- Name: _products_v_version_reviews id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_reviews ALTER COLUMN id SET DEFAULT nextval('public._products_v_version_reviews_id_seq'::regclass);


--
-- Name: _products_v_version_tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_tags ALTER COLUMN id SET DEFAULT nextval('public._products_v_version_tags_id_seq'::regclass);


--
-- Name: _products_v_version_whats_inside id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_whats_inside ALTER COLUMN id SET DEFAULT nextval('public._products_v_version_whats_inside_id_seq'::regclass);


--
-- Name: _variants_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._variants_v ALTER COLUMN id SET DEFAULT nextval('public._variants_v_id_seq'::regclass);


--
-- Name: _variants_v_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._variants_v_rels ALTER COLUMN id SET DEFAULT nextval('public._variants_v_rels_id_seq'::regclass);


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: branch_holidays id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_holidays ALTER COLUMN id SET DEFAULT nextval('public.branch_holidays_id_seq'::regclass);


--
-- Name: branch_holidays_service_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_holidays_service_types ALTER COLUMN id SET DEFAULT nextval('public.branch_holidays_service_types_id_seq'::regclass);


--
-- Name: branch_inventory id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_inventory ALTER COLUMN id SET DEFAULT nextval('public.branch_inventory_id_seq'::regclass);


--
-- Name: branches id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branches ALTER COLUMN id SET DEFAULT nextval('public.branches_id_seq'::regclass);


--
-- Name: cart_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_settings ALTER COLUMN id SET DEFAULT nextval('public.cart_settings_id_seq'::regclass);


--
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: cut_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cut_types ALTER COLUMN id SET DEFAULT nextval('public.cut_types_id_seq'::regclass);


--
-- Name: flavors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.flavors ALTER COLUMN id SET DEFAULT nextval('public.flavors_id_seq'::regclass);


--
-- Name: footer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer ALTER COLUMN id SET DEFAULT nextval('public.footer_id_seq'::regclass);


--
-- Name: footer_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_rels ALTER COLUMN id SET DEFAULT nextval('public.footer_rels_id_seq'::regclass);


--
-- Name: form_submissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_submissions ALTER COLUMN id SET DEFAULT nextval('public.form_submissions_id_seq'::regclass);


--
-- Name: forms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms ALTER COLUMN id SET DEFAULT nextval('public.forms_id_seq'::regclass);


--
-- Name: fulfillment_schedules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules ALTER COLUMN id SET DEFAULT nextval('public.fulfillment_schedules_id_seq'::regclass);


--
-- Name: fulfillment_schedules_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_rels ALTER COLUMN id SET DEFAULT nextval('public.fulfillment_schedules_rels_id_seq'::regclass);


--
-- Name: fulfillment_schedules_weekly_days id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_weekly_days ALTER COLUMN id SET DEFAULT nextval('public.fulfillment_schedules_weekly_days_id_seq'::regclass);


--
-- Name: header id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header ALTER COLUMN id SET DEFAULT nextval('public.header_id_seq'::regclass);


--
-- Name: header_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_rels ALTER COLUMN id SET DEFAULT nextval('public.header_rels_id_seq'::regclass);


--
-- Name: meat_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.meat_types ALTER COLUMN id SET DEFAULT nextval('public.meat_types_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: newsletter_promo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.newsletter_promo ALTER COLUMN id SET DEFAULT nextval('public.newsletter_promo_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: orders_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_rels ALTER COLUMN id SET DEFAULT nextval('public.orders_rels_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels ALTER COLUMN id SET DEFAULT nextval('public.pages_rels_id_seq'::regclass);


--
-- Name: payload_kv id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_kv ALTER COLUMN id SET DEFAULT nextval('public.payload_kv_id_seq'::regclass);


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_id_seq'::regclass);


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_rels_id_seq'::regclass);


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations ALTER COLUMN id SET DEFAULT nextval('public.payload_migrations_id_seq'::regclass);


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_id_seq'::regclass);


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_rels_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: products_quality id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_quality ALTER COLUMN id SET DEFAULT nextval('public.products_quality_id_seq'::regclass);


--
-- Name: products_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_rels ALTER COLUMN id SET DEFAULT nextval('public.products_rels_id_seq'::regclass);


--
-- Name: products_tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_tags ALTER COLUMN id SET DEFAULT nextval('public.products_tags_id_seq'::regclass);


--
-- Name: qualities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.qualities ALTER COLUMN id SET DEFAULT nextval('public.qualities_id_seq'::regclass);


--
-- Name: shop_luxury_page id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shop_luxury_page ALTER COLUMN id SET DEFAULT nextval('public.shop_luxury_page_id_seq'::regclass);


--
-- Name: shop_page id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shop_page ALTER COLUMN id SET DEFAULT nextval('public.shop_page_id_seq'::regclass);


--
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: users_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_roles ALTER COLUMN id SET DEFAULT nextval('public.users_roles_id_seq'::regclass);


--
-- Name: variant_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_options ALTER COLUMN id SET DEFAULT nextval('public.variant_options_id_seq'::regclass);


--
-- Name: variant_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_types ALTER COLUMN id SET DEFAULT nextval('public.variant_types_id_seq'::regclass);


--
-- Name: variants id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants ALTER COLUMN id SET DEFAULT nextval('public.variants_id_seq'::regclass);


--
-- Name: variants_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants_rels ALTER COLUMN id SET DEFAULT nextval('public.variants_rels_id_seq'::regclass);


--
-- Data for Name: _pages_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v (id, parent_id, version_title, version_published_on, version_hero_type, version_hero_rich_text, version_hero_media_id, version_meta_title, version_meta_image_id, version_meta_description, version_generate_slug, version_slug, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave, version_hero_eyebrow, version_hero_heading, version_hero_description, version_hero_carousel_settings_autoplay, version_hero_carousel_settings_autoplay_delay, version_hero_carousel_settings_show_dots, version_hero_carousel_settings_show_arrows, version_hero_carousel_settings_height) FROM stdin;
71	6	\N	\N	lowImpact	\N	\N	\N	\N	\N	t	\N	2026-05-02 01:38:03.184+05:30	2026-05-02 01:38:03.184+05:30	draft	2026-05-02 01:38:03.335+05:30	2026-05-02 01:38:03.335+05:30	f	f	\N	\N	\N	t	5000	t	t	large
38	3	Shop	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	Categories	\N	\N	f	shop	2026-04-28 00:39:19.112+05:30	2026-04-23 15:57:56.179+05:30	draft	2026-04-23 21:33:04.626+05:30	2026-04-28 00:39:19.112+05:30	f	t	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
37	3	Shop	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	Categories	\N	\N	f	the-shop	2026-04-23 21:33:04.342+05:30	2026-04-23 15:57:56.179+05:30	published	2026-04-23 21:33:04.384+05:30	2026-04-23 21:33:04.384+05:30	f	f	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
31	3	Categories	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	\N	\N	\N	f	/categories	2026-04-23 19:48:23.559+05:30	2026-04-23 15:57:56.179+05:30	published	2026-04-23 19:48:23.903+05:30	2026-04-23 19:48:23.903+05:30	f	f	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
27	3	Prime Cuts	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	\N	\N	\N	f	shop	2026-04-23 19:44:13.374+05:30	2026-04-23 15:57:56.179+05:30	published	2026-04-23 19:44:13.473+05:30	2026-04-23 19:44:13.473+05:30	f	f	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
26	3	Shop	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	\N	\N	\N	f	shop	2026-04-23 16:00:31.16+05:30	2026-04-23 15:57:56.179+05:30	published	2026-04-23 16:00:31.245+05:30	2026-04-23 16:00:31.245+05:30	f	f	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
97	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 16:23:45.064+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-30 16:23:45.254+05:30	2026-05-30 16:23:45.254+05:30	t	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	fullScreen
117	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 11:39:41.327+05:30	2026-06-09 10:39:28.276+05:30	published	2026-06-09 11:39:41.407+05:30	2026-06-09 11:39:41.407+05:30	f	f	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
32	3	Categories	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	Categories	\N	\N	f	/categories	2026-04-23 19:49:28.949+05:30	2026-04-23 15:57:56.179+05:30	draft	2026-04-23 19:49:28.949+05:30	2026-04-23 19:49:28.949+05:30	f	t	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
72	6	\N	\N	lowImpact	\N	\N	\N	\N	\N	t	\N	2026-05-02 01:38:27.716+05:30	2026-05-02 01:38:03.184+05:30	draft	2026-05-02 01:38:22.639+05:30	2026-05-02 01:38:27.716+05:30	t	t	\N	\N	\N	t	5000	t	t	large
73	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	21	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-18 03:06:36.761+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-18 03:06:17.133+05:30	2026-05-18 03:06:36.761+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
29	3	Categories	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	\N	\N	\N	f	/categories	2026-04-23 19:47:37.684+05:30	2026-04-23 15:57:56.179+05:30	published	2026-04-23 19:47:37.713+05:30	2026-04-23 19:47:37.713+05:30	f	f	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
28	3	Categories	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	\N	\N	\N	f	shop	2026-04-23 19:47:31.045+05:30	2026-04-23 15:57:56.179+05:30	published	2026-04-23 19:47:31.135+05:30	2026-04-23 19:47:31.135+05:30	f	f	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
24	3	Shop	2026-04-23 15:58:17.958+05:30	lowImpact	\N	\N	\N	\N	\N	f	shop	2026-04-23 15:58:17.962+05:30	2026-04-23 15:57:56.179+05:30	published	2026-04-23 15:58:18.069+05:30	2026-04-23 15:58:18.069+05:30	f	f	\N	\N	\N	t	5000	t	t	large
66	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	18	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-29 21:33:54.418+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-04-29 21:33:38.888+05:30	2026-04-29 21:33:54.418+05:30	f	t	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
67	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	18	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-29 21:33:56.362+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-29 21:33:56.599+05:30	2026-04-29 21:33:56.599+05:30	f	f	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
23	3	Shop	\N	lowImpact	\N	\N	\N	\N	\N	t	shop	2026-04-23 15:58:16.041+05:30	2026-04-23 15:57:56.179+05:30	draft	2026-04-23 15:58:01.405+05:30	2026-04-23 15:58:16.041+05:30	f	t	\N	\N	\N	t	5000	t	t	large
33	3	Categories	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	Categories	\N	\N	f	/categories	2026-04-23 19:49:33.082+05:30	2026-04-23 15:57:56.179+05:30	published	2026-04-23 19:49:33.163+05:30	2026-04-23 19:49:33.163+05:30	f	f	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
80	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-25 10:30:58.016+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-25 10:30:26.793+05:30	2026-05-25 10:30:58.016+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
55	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-28 00:31:56.481+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-28 00:31:56.628+05:30	2026-04-28 00:31:56.628+05:30	f	f		GET IN TOUCH	Whether you are seeking a custom cut for a special occasion or looking to partner with the finest purveyor in Toronto, we are here to serve.	t	5000	t	t	large
118	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 11:49:55.086+05:30	2026-06-09 10:39:28.276+05:30	published	2026-06-09 11:49:55.171+05:30	2026-06-09 11:49:55.171+05:30	t	f	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
59	3	Shop	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	Categories	\N	\N	f	shop	2026-04-28 00:39:23.696+05:30	2026-04-23 15:57:56.179+05:30	published	2026-04-28 00:39:23.744+05:30	2026-04-28 00:39:23.744+05:30	t	f	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
22	3	\N	\N	lowImpact	\N	\N	\N	\N	\N	t	\N	2026-04-23 15:57:56.183+05:30	2026-04-23 15:57:56.179+05:30	draft	2026-04-23 15:57:56.248+05:30	2026-04-23 15:57:56.248+05:30	f	f	\N	\N	\N	t	5000	t	t	large
36	3	Shop	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	Categories	\N	\N	f	shop	2026-04-23 21:32:58.575+05:30	2026-04-23 15:57:56.179+05:30	draft	2026-04-23 21:32:29.953+05:30	2026-04-23 21:32:58.575+05:30	f	t	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
35	3	Categories	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	Categories	\N	\N	f	categories	2026-04-23 20:00:06.914+05:30	2026-04-23 15:57:56.179+05:30	published	2026-04-23 20:00:06.947+05:30	2026-04-23 20:00:06.947+05:30	f	f	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
34	3	Categories	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	Categories	\N	\N	f	categories	2026-04-23 20:00:05.765+05:30	2026-04-23 15:57:56.179+05:30	draft	2026-04-23 20:00:05.765+05:30	2026-04-23 20:00:05.765+05:30	f	t	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
30	3	Categories	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	\N	\N	\N	f	/categories	2026-04-23 19:48:11.483+05:30	2026-04-23 15:57:56.179+05:30	draft	2026-04-23 19:48:11.483+05:30	2026-04-23 19:48:11.483+05:30	f	t	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
25	3	Shop	2026-04-23 15:58:17.958+05:30	highImpact	\N	\N	\N	\N	\N	f	shop	2026-04-23 15:59:40.939+05:30	2026-04-23 15:57:56.179+05:30	draft	2026-04-23 15:59:01.458+05:30	2026-04-23 15:59:40.939+05:30	f	t	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
68	5	\N	\N	lowImpact	\N	\N	\N	\N	\N	t	\N	2026-04-30 19:48:56.489+05:30	2026-04-30 19:48:56.486+05:30	draft	2026-04-30 19:48:56.586+05:30	2026-04-30 19:48:56.586+05:30	t	f	\N	\N	\N	t	5000	t	t	large
40	4	\N	\N	lowImpact	\N	\N	\N	\N	\N	t	\N	2026-04-27 19:10:43.729+05:30	2026-04-27 19:10:43.725+05:30	draft	2026-04-27 19:10:43.907+05:30	2026-04-27 19:10:43.907+05:30	f	f	\N	\N	\N	t	5000	t	t	large
20	2	About Us	2026-04-23 15:18:04.777+05:30	highImpact	\N	9	\N	\N	\N	f	about-us	2026-04-23 15:35:53.895+05:30	2026-04-23 14:57:48.157+05:30	published	2026-04-23 15:35:53.968+05:30	2026-04-23 15:35:53.968+05:30	f	f	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
19	2	About Us	2026-04-23 15:18:04.777+05:30	highImpact	\N	9	\N	\N	\N	f	about-us	2026-04-23 15:35:46.886+05:30	2026-04-23 14:57:48.157+05:30	published	2026-04-23 15:35:47.013+05:30	2026-04-23 15:35:47.013+05:30	f	f	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
18	2	About Us	2026-04-23 15:18:04.777+05:30	highImpact	\N	9	\N	\N	\N	f	about-us	2026-04-23 15:35:37.717+05:30	2026-04-23 14:57:48.157+05:30	published	2026-04-23 15:35:37.83+05:30	2026-04-23 15:35:37.83+05:30	f	f	The Art of the Cut	Our Journey 2	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
17	2	About Us	2026-04-23 15:18:04.777+05:30	highImpact	\N	9	\N	\N	\N	f	about-us	2026-04-23 15:18:04.792+05:30	2026-04-23 14:57:48.157+05:30	published	2026-04-23 15:18:04.992+05:30	2026-04-23 15:18:04.992+05:30	f	f	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
75	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	21	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-18 03:10:44.233+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-18 03:09:32.82+05:30	2026-05-18 03:10:44.233+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
70	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	18	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-01 22:11:15.65+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-01 22:11:15.764+05:30	2026-05-01 22:11:15.764+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
11	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	2	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-23 00:54:58.067+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-04-23 00:48:55.202+05:30	2026-04-23 00:54:58.067+05:30	f	t	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
13	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	2	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-23 01:12:44.793+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-04-23 01:08:28.637+05:30	2026-04-23 01:12:44.793+05:30	f	t	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
6	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	1	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-22 21:35:08.045+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-04-22 21:34:56.267+05:30	2026-04-22 21:35:08.045+05:30	f	t	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
79	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	21	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-25 10:29:56.615+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-25 10:30:00.501+05:30	2026-05-25 10:30:00.501+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
78	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	21	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-21 19:15:29.643+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-21 19:15:33.81+05:30	2026-05-21 19:15:33.81+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
96	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 16:22:29.971+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-30 16:19:23.774+05:30	2026-05-30 16:22:29.971+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	fullScreen
90	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 14:08:12.42+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-30 14:07:16.455+05:30	2026-05-30 14:08:12.42+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	fullScreen
86	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 14:04:05.15+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-30 14:04:05.15+05:30	2026-05-30 14:04:05.15+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
85	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 14:03:19.369+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-30 14:03:19.709+05:30	2026-05-30 14:03:19.709+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
39	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	2	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-23 22:48:23.92+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-23 22:48:24.121+05:30	2026-04-23 22:48:24.121+05:30	f	f	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
76	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	21	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-18 03:10:52.179+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-18 03:10:55.716+05:30	2026-05-18 03:10:55.716+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
89	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 14:04:58.537+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-30 14:04:58.605+05:30	2026-05-30 14:04:58.605+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	fullScreen
65	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	18	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-29 21:12:08.075+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-29 21:12:08.177+05:30	2026-04-29 21:12:08.177+05:30	f	f	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
4	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	\N	\N	\N	\N	f	home	2026-04-22 21:29:37.472+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-04-22 21:28:15.529+05:30	2026-04-22 21:29:37.472+05:30	f	t	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
46	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	\N	\N	\N	f	contact-us	2026-04-27 19:35:43.715+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-27 19:35:43.85+05:30	2026-04-27 19:35:43.85+05:30	f	f		\N	\N	t	5000	t	t	large
95	2	About Us	2026-04-23 15:18:04.777+05:30	carousel	\N	9	\N	\N	\N	f	about-us	2026-05-30 15:28:16.238+05:30	2026-04-23 14:57:48.157+05:30	published	2026-05-30 15:28:16.331+05:30	2026-05-30 15:28:16.331+05:30	f	f	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
101	2	About Us	2026-04-23 15:18:04.777+05:30	carousel	\N	9	\N	\N	\N	f	about-us	2026-06-04 00:23:29.018+05:30	2026-04-23 14:57:48.157+05:30	draft	2026-06-04 00:22:14.044+05:30	2026-06-04 00:23:29.018+05:30	f	t	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
12	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	2	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-23 00:55:06.768+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-23 00:55:06.856+05:30	2026-04-23 00:55:06.856+05:30	f	f	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
83	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 13:59:28.985+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-30 13:59:29.109+05:30	2026-05-30 13:59:29.109+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
63	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	18	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-29 21:11:25.58+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-29 21:11:25.939+05:30	2026-04-29 21:11:25.939+05:30	f	f	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
14	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	2	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-23 01:12:54.43+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-23 01:12:54.546+05:30	2026-04-23 01:12:54.546+05:30	f	f	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
1	1	\N	\N	lowImpact	\N	\N	\N	\N	\N	t	\N	2026-04-22 19:06:40.332+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-04-22 19:06:40.349+05:30	2026-04-22 19:06:40.349+05:30	f	f	\N	\N	\N	t	5000	t	t	large
77	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	21	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-21 19:15:29.967+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-21 19:15:17.026+05:30	2026-05-21 19:15:29.967+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
69	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	18	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-01 22:09:41.94+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-01 22:09:42.071+05:30	2026-05-01 22:09:42.071+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
92	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 14:23:20.203+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-30 14:22:45.547+05:30	2026-05-30 14:23:20.203+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	fullScreen
74	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	21	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-18 03:07:27.519+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-18 03:07:31.678+05:30	2026-05-18 03:07:31.678+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
10	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	2	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-22 23:26:30.405+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-22 23:26:30.44+05:30	2026-04-22 23:26:30.44+05:30	f	f	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
84	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 14:03:17.674+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-30 13:59:47.972+05:30	2026-05-30 14:03:17.674+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
93	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 14:23:35.142+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-30 14:23:35.208+05:30	2026-05-30 14:23:35.208+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	fullScreen
87	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 14:04:09.631+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-30 14:04:09.709+05:30	2026-05-30 14:04:09.709+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
88	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 14:04:52.62+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-30 14:04:10.245+05:30	2026-05-30 14:04:52.62+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
5	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	1	\N	\N	\N	f	home	2026-04-22 21:33:33.301+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-22 21:33:33.473+05:30	2026-04-22 21:33:33.473+05:30	f	f	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
62	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	\N	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-29 21:11:04.694+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-04-29 21:11:04.694+05:30	2026-04-29 21:11:04.694+05:30	f	t	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
8	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	2	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-22 23:20:29.65+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-04-22 21:45:12.485+05:30	2026-04-22 23:20:29.65+05:30	f	t	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
91	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 14:10:05.67+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-30 14:10:05.793+05:30	2026-05-30 14:10:05.793+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	fullScreen
81	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-25 10:31:19.383+05:30	2026-04-22 19:06:40.331+05:30	published	2026-05-25 10:31:22.913+05:30	2026-05-25 10:31:22.913+05:30	f	f	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
2	1	Home	\N	highImpact	\N	\N	\N	\N	\N	t	home	2026-04-22 20:30:08.773+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-04-22 19:06:48.504+05:30	2026-04-22 20:30:08.773+05:30	f	t	\N	\N	\N	t	5000	t	t	large
64	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	18	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-29 21:11:28.399+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-04-29 21:11:28.399+05:30	2026-04-29 21:11:28.399+05:30	f	t	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
7	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	1	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-22 21:35:12.909+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-22 21:35:12.978+05:30	2026-04-22 21:35:12.978+05:30	f	f	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
82	1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 13:59:23.816+05:30	2026-04-22 19:06:40.331+05:30	draft	2026-05-30 13:59:23.816+05:30	2026-05-30 13:59:23.816+05:30	f	t	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
9	1	Home	2026-04-22 21:17:19.09+05:30	highImpact	\N	2	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-04-22 23:20:57.679+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-22 23:20:57.782+05:30	2026-04-22 23:20:57.782+05:30	f	f	ARTISAN BUTCHERS	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	large
3	1	Home	2026-04-22 21:17:19.09+05:30	none	\N	\N	\N	\N	\N	f	home	2026-04-22 21:17:19.111+05:30	2026-04-22 19:06:40.331+05:30	published	2026-04-22 21:17:19.27+05:30	2026-04-22 21:17:19.27+05:30	f	f	\N	\N	\N	t	5000	t	t	large
107	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:52:26.834+05:30	2026-06-09 10:39:28.276+05:30	draft	2026-06-09 10:52:11.397+05:30	2026-06-09 10:52:26.834+05:30	f	t	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
104	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	36	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:39:28.284+05:30	2026-06-09 10:39:28.276+05:30	published	2026-06-09 10:39:28.354+05:30	2026-06-09 10:39:28.354+05:30	f	f	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
99	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-06-04 00:15:15.397+05:30	2026-04-27 19:10:43.725+05:30	published	2026-06-04 00:15:16.043+05:30	2026-06-04 00:15:16.043+05:30	t	f	Contact Us	GET IN TOUCH	Whether you are seeking a custom cut for a special occasion or looking to partner with the finest purveyor in Toronto, we are here to serve.	t	5000	t	t	large
51	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-27 23:52:34.368+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-27 23:52:34.505+05:30	2026-04-27 23:52:34.505+05:30	f	f		\N	\N	t	5000	t	t	large
52	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-27 23:53:43.011+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-27 23:53:43.201+05:30	2026-04-27 23:53:43.201+05:30	f	f	GET IN TOUCH	\N	\N	t	5000	t	t	large
47	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	\N	\N	\N	f	contact-us	2026-04-27 19:35:52.359+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-27 19:35:52.644+05:30	2026-04-27 19:35:52.644+05:30	f	f		\N	\N	t	5000	t	t	large
43	4	GET IN TOUCH	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	\N	\N	\N	f	contact-us	2026-04-27 19:19:05.413+05:30	2026-04-27 19:10:43.725+05:30	draft	2026-04-27 19:19:05.413+05:30	2026-04-27 19:19:05.413+05:30	f	t		\N	\N	t	5000	t	t	large
41	4	GET IN TOUCH	\N	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	\N	\N	\N	\N	t	get-in-touch	2026-04-27 19:13:50.946+05:30	2026-04-27 19:10:43.725+05:30	draft	2026-04-27 19:10:54.735+05:30	2026-04-27 19:13:50.946+05:30	f	t		\N	\N	t	5000	t	t	large
57	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-28 00:32:41.657+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-28 00:32:41.704+05:30	2026-04-28 00:32:41.704+05:30	f	f		GET IN TOUCH	Whether you are seeking a custom cut for a special occasion or looking to partner with the finest purveyor in Toronto, we are here to serve.	t	5000	t	t	large
50	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-27 23:52:21.747+05:30	2026-04-27 19:10:43.725+05:30	draft	2026-04-27 20:38:46.787+05:30	2026-04-27 23:52:21.747+05:30	f	t		\N	\N	t	5000	t	t	large
53	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-27 23:54:01.856+05:30	2026-04-27 19:10:43.725+05:30	draft	2026-04-27 23:53:55.088+05:30	2026-04-27 23:54:01.856+05:30	f	t		GET IN TOUCH	Whether you are seeking a custom cut for a special occasion or looking to partner with the finest purveyor in Toronto, we are here to serve.	t	5000	t	t	large
98	2	About Us	2026-04-23 15:18:04.777+05:30	carousel	\N	9	\N	\N	\N	f	about-us	2026-06-03 23:45:02.923+05:30	2026-04-23 14:57:48.157+05:30	published	2026-06-03 23:45:03.372+05:30	2026-06-03 23:45:03.372+05:30	f	f	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
15	2	\N	\N	lowImpact	\N	\N	\N	\N	\N	t	\N	2026-04-23 14:57:48.158+05:30	2026-04-23 14:57:48.157+05:30	draft	2026-04-23 14:57:48.199+05:30	2026-04-23 14:57:48.199+05:30	f	f	\N	\N	\N	t	5000	t	t	large
49	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-27 19:44:14.53+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-27 19:44:14.659+05:30	2026-04-27 19:44:14.659+05:30	f	f		\N	\N	t	5000	t	t	large
56	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-28 00:32:25.818+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-28 00:32:25.959+05:30	2026-04-28 00:32:25.959+05:30	f	f		GET IN TOUCH	Whether you are seeking a custom cut for a special occasion or looking to partner with the finest purveyor in Toronto, we are here to serve.	t	5000	t	t	large
58	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-28 00:32:50.246+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-28 00:32:50.342+05:30	2026-04-28 00:32:50.342+05:30	f	f		GET IN TOUCH	Whether you are seeking a custom cut for a special occasion or looking to partner with the finest purveyor in Toronto, we are here to serve.	t	5000	t	t	large
44	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	\N	\N	\N	f	contact-us	2026-04-27 19:19:34.361+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-27 19:19:34.436+05:30	2026-04-27 19:19:34.436+05:30	f	f		\N	\N	t	5000	t	t	large
45	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	\N	\N	\N	f	contact-us	2026-04-27 19:35:38.563+05:30	2026-04-27 19:10:43.725+05:30	draft	2026-04-27 19:19:37.715+05:30	2026-04-27 19:35:38.563+05:30	f	t		\N	\N	t	5000	t	t	large
48	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-27 19:44:12.78+05:30	2026-04-27 19:10:43.725+05:30	draft	2026-04-27 19:44:12.78+05:30	2026-04-27 19:44:12.78+05:30	f	t		\N	\N	t	5000	t	t	large
42	4	GET IN TOUCH	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	\N	\N	\N	f	get-in-touch	2026-04-27 19:16:58.527+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-27 19:16:58.686+05:30	2026-04-27 19:16:58.686+05:30	f	f		\N	\N	t	5000	t	t	large
54	4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-04-27 23:54:15.958+05:30	2026-04-27 19:10:43.725+05:30	published	2026-04-27 23:54:16.104+05:30	2026-04-27 23:54:16.104+05:30	f	f		GET IN TOUCH	Whether you are seeking a custom cut for a special occasion or looking to partner with the finest purveyor in Toronto, we are here to serve.	t	5000	t	t	large
108	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:52:29.17+05:30	2026-06-09 10:39:28.276+05:30	published	2026-06-09 10:52:29.267+05:30	2026-06-09 10:52:29.267+05:30	f	f	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
109	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:53:11.597+05:30	2026-06-09 10:39:28.276+05:30	draft	2026-06-09 10:52:53.251+05:30	2026-06-09 10:53:11.597+05:30	f	t	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
102	2	About Us	2026-04-23 15:18:04.777+05:30	carousel	\N	9	\N	\N	\N	f	about-us	2026-06-04 00:23:31.81+05:30	2026-04-23 14:57:48.157+05:30	published	2026-06-04 00:23:32.105+05:30	2026-06-04 00:23:32.105+05:30	t	f	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
100	2	About Us	2026-04-23 15:18:04.777+05:30	carousel	\N	9	\N	\N	\N	f	about-us	2026-06-04 00:15:26.959+05:30	2026-04-23 14:57:48.157+05:30	published	2026-06-04 00:15:27.027+05:30	2026-06-04 00:15:27.027+05:30	f	f	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
60	2	About Us	2026-04-23 15:18:04.777+05:30	highImpact	\N	9	\N	\N	\N	f	about-us	2026-04-29 19:47:19.347+05:30	2026-04-23 14:57:48.157+05:30	published	2026-04-29 19:47:19.766+05:30	2026-04-29 19:47:19.766+05:30	f	f	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
61	2	About Us	2026-04-23 15:18:04.777+05:30	highImpact	\N	9	\N	\N	\N	f	about-us	2026-04-29 19:50:47.163+05:30	2026-04-23 14:57:48.157+05:30	published	2026-04-29 19:50:47.282+05:30	2026-04-29 19:50:47.282+05:30	f	f	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
21	2	About Us	2026-04-23 15:18:04.777+05:30	highImpact	\N	9	\N	\N	\N	f	about-us	2026-04-23 15:36:02.998+05:30	2026-04-23 14:57:48.157+05:30	published	2026-04-23 15:36:03.199+05:30	2026-04-23 15:36:03.199+05:30	f	f	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
16	2	About Us	\N	highImpact	\N	\N	\N	\N	\N	f	about-us	2026-04-23 15:15:16.958+05:30	2026-04-23 14:57:48.157+05:30	draft	2026-04-23 15:12:54.79+05:30	2026-04-23 15:15:16.958+05:30	f	t	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
106	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	36	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:52:03.357+05:30	2026-06-09 10:39:28.276+05:30	published	2026-06-09 10:52:03.592+05:30	2026-06-09 10:52:03.592+05:30	f	f	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
105	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	36	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:51:48.646+05:30	2026-06-09 10:39:28.276+05:30	draft	2026-06-09 10:50:50.443+05:30	2026-06-09 10:51:48.646+05:30	f	t	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
110	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:53:26.813+05:30	2026-06-09 10:39:28.276+05:30	published	2026-06-09 10:53:26.876+05:30	2026-06-09 10:53:26.876+05:30	f	f	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
115	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:54:31.626+05:30	2026-06-09 10:39:28.276+05:30	draft	2026-06-09 10:54:31.626+05:30	2026-06-09 10:54:31.626+05:30	f	t	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
111	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:53:54.317+05:30	2026-06-09 10:39:28.276+05:30	draft	2026-06-09 10:53:54.317+05:30	2026-06-09 10:53:54.317+05:30	f	t	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
114	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:54:28.272+05:30	2026-06-09 10:39:28.276+05:30	published	2026-06-09 10:54:28.38+05:30	2026-06-09 10:54:28.38+05:30	f	f	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
116	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:54:34.625+05:30	2026-06-09 10:39:28.276+05:30	published	2026-06-09 10:54:34.68+05:30	2026-06-09 10:54:34.68+05:30	f	f	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
112	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:54:07.286+05:30	2026-06-09 10:39:28.276+05:30	published	2026-06-09 10:54:07.595+05:30	2026-06-09 10:54:07.595+05:30	f	f	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
113	8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 10:54:10.906+05:30	2026-06-09 10:39:28.276+05:30	draft	2026-06-09 10:54:10.906+05:30	2026-06-09 10:54:10.906+05:30	f	t	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
\.


--
-- Data for Name: _pages_v_blocks_about_story; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_about_story (_order, _parent_id, _path, id, title, lead, body, cta_label, cta_url, image_id, _uuid, block_name, page_intro_eyebrow, page_intro_heading, page_intro_description, page_intro_hero_image_id) FROM stdin;
1	16	version.layout	4	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	\N	69e9ea18d2d6ab763b97ecb3	\N	Our story	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	17	version.layout	5	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	\N	69e9ea18d2d6ab763b97ecb3	\N	Our story	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	18	version.layout	6	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	\N	69e9ea18d2d6ab763b97ecb3	\N	Our story	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	19	version.layout	7	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	\N	69e9ea18d2d6ab763b97ecb3	\N	Our story	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	20	version.layout	8	The Legacy of Excellence 12	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	\N	69e9ea18d2d6ab763b97ecb3	\N	Our story	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	21	version.layout	9	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	\N	69e9ea18d2d6ab763b97ecb3	\N	Our story	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	60	version.layout	10	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	17	69e9ea18d2d6ab763b97ecb3	\N	Our story	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	61	version.layout	11	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	17	69e9ea18d2d6ab763b97ecb3	\N	Our story	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	95	version.layout	13	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	17	69e9ea18d2d6ab763b97ecb3	\N	Our story	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	98	version.layout	14	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	17	69e9ea18d2d6ab763b97ecb3	\N	Our story	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	100	version.layout	15	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	17	69e9ea18d2d6ab763b97ecb3	\N	About Us	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	101	version.layout	18	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	17	69e9ea18d2d6ab763b97ecb3	\N	About Us	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
1	102	version.layout	19	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	17	69e9ea18d2d6ab763b97ecb3	\N	About Us	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
\.


--
-- Data for Name: _pages_v_blocks_archive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_banner; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_banner (_order, _parent_id, _path, id, style, content, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_carousel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_carousel (_order, _parent_id, _path, id, populate_by, relation_to, "limit", populated_docs_total, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_contact_cards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_contact_cards (_order, _parent_id, _path, id, title, subtitle, _uuid, block_name) FROM stdin;
2	16	version.layout	2	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	17	version.layout	3	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	18	version.layout	4	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	19	version.layout	5	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	20	version.layout	6	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	21	version.layout	7	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
1	41	version.layout	8	Get In Touch	Reservations & Inquiries	69ef6813f075ed7edf3d3457	\N
1	42	version.layout	9	Get In Touch	Reservations & Inquiries	69ef6813f075ed7edf3d3457	\N
1	43	version.layout	10	Get In Touch	Reservations & Inquiries	69ef6813f075ed7edf3d3457	\N
1	44	version.layout	11	Get In Touch	Reservations & Inquiries	69ef6813f075ed7edf3d3457	\N
1	45	version.layout	13	Get In Touch	Reservations & Inquiries	69ef6813f075ed7edf3d3457	\N
1	46	version.layout	14	Get In Touch	Reservations & Inquiries	69ef6813f075ed7edf3d3457	\N
1	47	version.layout	15	Get In Touch	Reservations & Inquiries	69ef6813f075ed7edf3d3457	\N
1	48	version.layout	16	Get In Touch	Reservations & Inquiries	69ef6813f075ed7edf3d3457	\N
1	49	version.layout	17	Get In Touch	Reservations & Inquiries	69ef6813f075ed7edf3d3457	\N
2	60	version.layout	18	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	61	version.layout	19	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	95	version.layout	21	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	98	version.layout	22	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	100	version.layout	23	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	101	version.layout	26	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
2	102	version.layout	27	Get In Touch	Reservations & Inquiries	69e9ea23d2d6ab763b97ecb5	\N
\.


--
-- Data for Name: _pages_v_blocks_contact_cards_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_contact_cards_items (_order, _parent_id, id, icon, title, line1, line2, _uuid) FROM stdin;
1	2	4	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	2	5	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	2	6	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	3	7	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	3	8	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	3	9	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	4	10	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	4	11	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	4	12	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	5	13	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	5	14	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	5	15	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	6	16	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	6	17	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	6	18	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	7	19	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	7	20	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	7	21	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	8	22	map-pin	THE BUTCHER'S CRAFT	1245 Gourmet Boulevard	Culinary District, NY 10012	69ef6814bb449351404ccf88
2	8	23	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69ef6814bb449351404ccf89
3	8	24	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69ef6814bb449351404ccf8a
1	9	25	map-pin	THE BUTCHER'S CRAFT	1245 Gourmet Boulevard	Culinary District, NY 10012	69ef6814bb449351404ccf88
2	9	26	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69ef6814bb449351404ccf89
3	9	27	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69ef6814bb449351404ccf8a
1	10	28	map-pin	THE BUTCHER'S CRAFT	1245 Gourmet Boulevard	Culinary District, NY 10012	69ef6814bb449351404ccf88
2	10	29	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69ef6814bb449351404ccf89
3	10	30	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69ef6814bb449351404ccf8a
1	11	31	map-pin	THE BUTCHER'S CRAFT	1245 Gourmet Boulevard	Culinary District, NY 10012	69ef6814bb449351404ccf88
2	11	32	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69ef6814bb449351404ccf89
3	11	33	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69ef6814bb449351404ccf8a
1	13	37	map-pin	THE BUTCHER'S CRAFT	1245 Gourmet Boulevard	Culinary District, NY 10012	69ef6814bb449351404ccf88
2	13	38	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69ef6814bb449351404ccf89
3	13	39	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69ef6814bb449351404ccf8a
1	14	40	map-pin	THE BUTCHER'S CRAFT	1245 Gourmet Boulevard	Culinary District, NY 10012	69ef6814bb449351404ccf88
2	14	41	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69ef6814bb449351404ccf89
3	14	42	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69ef6814bb449351404ccf8a
1	15	43	map-pin	THE BUTCHER'S CRAFT	1245 Gourmet Boulevard	Culinary District, NY 10012	69ef6814bb449351404ccf88
2	15	44	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69ef6814bb449351404ccf89
3	15	45	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69ef6814bb449351404ccf8a
1	16	46	map-pin	THE BUTCHER'S CRAFT	1245 Gourmet Boulevard	Culinary District, NY 10012	69ef6814bb449351404ccf88
2	16	47	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69ef6814bb449351404ccf89
3	16	48	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69ef6814bb449351404ccf8a
1	17	49	map-pin	THE BUTCHER'S CRAFT	1245 Gourmet Boulevard	Culinary District, NY 10012	69ef6814bb449351404ccf88
2	17	50	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69ef6814bb449351404ccf89
3	17	51	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69ef6814bb449351404ccf8a
1	18	52	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	18	53	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	18	54	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	19	55	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	19	56	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	19	57	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	21	61	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	21	62	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	21	63	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	22	64	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	22	65	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	22	66	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	23	67	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	23	68	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	23	69	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	26	76	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	26	77	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	26	78	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
1	27	79	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012	69e9ea23e96ca70f80ef180d
2	27	80	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm	69e9ea23e96ca70f80ef180e
3	27	81	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com	69e9ea23e96ca70f80ef180f
\.


--
-- Data for Name: _pages_v_blocks_contact_page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_contact_page (_order, _parent_id, _path, id, form_title, form_id, map_image_id, map_label, _uuid, block_name, map_embed_url, store_note, map_title) FROM stdin;
1	50	version.layout	25	Send An Inquiry	1	\N	The Butcher's Craft Atelier	69ef7c01a3158557d18be6e8	\N	\N	\N	Toronto
1	51	version.layout	26	Send An Inquiry	1	\N	The Butcher's Craft Atelier	69ef7c01a3158557d18be6e8	\N	\N	\N	Toronto
1	52	version.layout	27	Send An Inquiry	1	\N	The Butcher's Craft Atelier	69ef7c01a3158557d18be6e8	\N	\N	\N	Toronto
1	53	version.layout	29	Send An Inquiry	1	\N	The Butcher's Craft Atelier	69ef7c01a3158557d18be6e8	\N	\N	\N	Toronto
1	54	version.layout	30	Send An Inquiry	1	\N	The Butcher's Craft Atelier	69ef7c01a3158557d18be6e8	\N	\N	\N	Toronto
1	55	version.layout	31	Send An Inquiry	1	\N	The Butcher's Craft Atelier	69ef7c01a3158557d18be6e8	\N	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d178788.19616476033!2d-73.8766812183727!3d45.559064207424456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc91a541c64b70d%3A0x654e3138211fefef!2sMontreal%2C%20QC%2C%20Canada!5e0!3m2!1sen!2slk!4v1777316510766!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>	\N	Toronto
1	56	version.layout	32	Send An Inquiry	1	\N	The Butcher's Craft Atelier	69ef7c01a3158557d18be6e8	\N	https://maps.app.goo.gl/7ALbeZ9MFxicZxJ68	\N	Toronto
1	57	version.layout	33	Send An Inquiry	1	\N	The Butcher's Craft Atelier	69ef7c01a3158557d18be6e8	\N	https://maps.app.goo.gl/7ALbeZ9MFxicZxJ68	\N	Toronto
1	58	version.layout	34	Send An Inquiry	1	\N		69ef7c01a3158557d18be6e8	\N	https://maps.app.goo.gl/7ALbeZ9MFxicZxJ68	\N	Toronto
1	72	version.layout	36	Send An Inquiry	\N	\N	The Butcher's Craft Atelier	69f50833f9653789cf2df3d0	\N	\N	\N	Toronto
1	99	version.layout	37	Send An Inquiry	1	\N		69ef7c01a3158557d18be6e8	\N	https://maps.app.goo.gl/7ALbeZ9MFxicZxJ68	\N	Toronto
\.


--
-- Data for Name: _pages_v_blocks_contact_page_cards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_contact_page_cards (_order, _parent_id, id, icon, title, line1, line2, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_contact_page_store_hours; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_contact_page_store_hours (_order, _parent_id, id, day, "time", _uuid) FROM stdin;
1	25	11	Monday - Friday →	09:00 - 19:00 	69efa92ba3158557d18be6f0
2	25	12	Saturday →	08:00 - 18:00 	69efa93fa3158557d18be6f2
3	25	13	Sunday → 	10:00 - 16:00	69efa953a3158557d18be6f4
1	26	14	Monday - Friday →	09:00 - 19:00 	69efa92ba3158557d18be6f0
2	26	15	Saturday →	08:00 - 18:00 	69efa93fa3158557d18be6f2
3	26	16	Sunday → 	10:00 - 16:00	69efa953a3158557d18be6f4
1	27	17	Monday - Friday →	09:00 - 19:00 	69efa92ba3158557d18be6f0
2	27	18	Saturday →	08:00 - 18:00 	69efa93fa3158557d18be6f2
3	27	19	Sunday → 	10:00 - 16:00	69efa953a3158557d18be6f4
1	29	23	Monday - Friday →	09:00 - 19:00 	69efa92ba3158557d18be6f0
2	29	24	Saturday →	08:00 - 18:00 	69efa93fa3158557d18be6f2
3	29	25	Sunday → 	10:00 - 16:00	69efa953a3158557d18be6f4
1	30	26	Monday - Friday →	09:00 - 19:00 	69efa92ba3158557d18be6f0
2	30	27	Saturday →	08:00 - 18:00 	69efa93fa3158557d18be6f2
3	30	28	Sunday → 	10:00 - 16:00	69efa953a3158557d18be6f4
1	31	29	Monday - Friday →	09:00 - 19:00 	69efa92ba3158557d18be6f0
2	31	30	Saturday →	08:00 - 18:00 	69efa93fa3158557d18be6f2
3	31	31	Sunday → 	10:00 - 16:00	69efa953a3158557d18be6f4
1	32	32	Monday - Friday →	09:00 - 19:00 	69efa92ba3158557d18be6f0
2	32	33	Saturday →	08:00 - 18:00 	69efa93fa3158557d18be6f2
3	32	34	Sunday → 	10:00 - 16:00	69efa953a3158557d18be6f4
1	33	35	Monday - Friday →	09:00 - 19:00 	69efa92ba3158557d18be6f0
2	33	36	Saturday →	08:00 - 18:00 	69efa93fa3158557d18be6f2
3	33	37	Sunday → 	10:00 - 16:00	69efa953a3158557d18be6f4
1	34	38	Monday - Friday →	09:00 - 19:00 	69efa92ba3158557d18be6f0
2	34	39	Saturday →	08:00 - 18:00 	69efa93fa3158557d18be6f2
3	34	40	Sunday → 	10:00 - 16:00	69efa953a3158557d18be6f4
1	37	41	Monday - Friday →	09:00 - 19:00 	69efa92ba3158557d18be6f0
2	37	42	Saturday →	08:00 - 18:00 	69efa93fa3158557d18be6f2
3	37	43	Sunday → 	10:00 - 16:00	69efa953a3158557d18be6f4
\.


--
-- Data for Name: _pages_v_blocks_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_content (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
1	2	version.layout	4	69e8cf1d43ec6a2175b2f12b	\N
1	3	version.layout	5	69e8cf1d43ec6a2175b2f12b	\N
1	4	version.layout	9	69e8cf1d43ec6a2175b2f12b	\N
1	5	version.layout	10	69e8cf1d43ec6a2175b2f12b	\N
1	6	version.layout	14	69e8cf1d43ec6a2175b2f12b	\N
1	7	version.layout	15	69e8cf1d43ec6a2175b2f12b	\N
\.


--
-- Data for Name: _pages_v_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	4	3	oneThird	\N	\N	reference	\N	\N	\N	default	69e8cf2043ec6a2175b2f12d
1	5	4	oneThird	\N	\N	reference	\N	\N	\N	default	69e8cf2043ec6a2175b2f12d
1	9	8	oneThird	\N	\N	reference	\N	\N	\N	default	69e8cf2043ec6a2175b2f12d
1	10	9	oneThird	\N	\N	reference	\N	\N	\N	default	69e8cf2043ec6a2175b2f12d
1	14	13	oneThird	\N	\N	reference	\N	\N	\N	default	69e8cf2043ec6a2175b2f12d
1	15	14	oneThird	\N	\N	reference	\N	\N	\N	default	69e8cf2043ec6a2175b2f12d
\.


--
-- Data for Name: _pages_v_blocks_cta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_cta (_order, _parent_id, _path, id, rich_text, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_featured_cuts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_featured_cuts (_order, _parent_id, _path, id, title, intro, _uuid, block_name, eyebrow) FROM stdin;
2	11	version.layout	20	Monthly Menu	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	12	version.layout	21	Monthly Menu	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	13	version.layout	26	Monthly Menu	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	14	version.layout	27	Monthly Menu	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	39	version.layout	28	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	62	version.layout	29	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	63	version.layout	30	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	64	version.layout	31	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	65	version.layout	32	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	66	version.layout	34	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	67	version.layout	35	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	69	version.layout	36	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	70	version.layout	37	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	73	version.layout	39	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	74	version.layout	40	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	75	version.layout	44	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	76	version.layout	45	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	77	version.layout	48	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	78	version.layout	49	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	79	version.layout	50	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	80	version.layout	52	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	81	version.layout	53	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	82	version.layout	54	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	83	version.layout	55	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	84	version.layout	62	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	85	version.layout	63	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	86	version.layout	64	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	87	version.layout	65	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	88	version.layout	71	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	89	version.layout	72	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	90	version.layout	80	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	91	version.layout	81	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	92	version.layout	83	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	93	version.layout	84	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	96	version.layout	86	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
2	97	version.layout	87	The Passion for True Taste	\N	69e91f2fbf6785f2edfda212	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
\.


--
-- Data for Name: _pages_v_blocks_featured_cuts_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_featured_cuts_items (_order, _parent_id, id, name, description, price, image_id, _uuid, tag, product_id) FROM stdin;
1	20	29	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	20	30	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	20	31	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	21	32	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	21	33	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	21	34	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	26	47	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	26	48	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	26	49	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	27	50	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	27	51	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	27	52	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	28	53	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	28	54	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	28	55	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	29	56	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	29	57	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	29	58	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	30	59	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	30	60	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	30	61	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	31	62	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	31	63	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	31	64	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	32	65	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	32	66	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	32	67	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	34	71	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	34	72	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	34	73	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	35	74	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	35	75	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	35	76	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	36	77	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	36	78	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	36	79	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	37	80	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	37	81	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	37	82	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	39	86	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	39	87	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	39	88	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	40	89	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	40	90	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	40	91	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	7	69e9206bbf6785f2edfda218	\N	\N
1	44	101	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	44	102	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	44	103	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	45	104	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185€/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	45	105	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78€/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	45	106	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42€/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	48	113	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	48	114	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	48	115	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	49	116	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	49	117	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	49	118	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	50	119	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	50	120	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	50	121	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	52	125	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	52	126	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	52	127	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	53	128	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	53	129	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	53	130	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	54	131	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	54	132	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	54	133	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	55	134	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	55	135	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	55	136	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	62	155	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	62	156	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	62	157	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	63	158	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	63	159	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	63	160	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	64	161	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	64	162	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	64	163	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	65	164	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	65	165	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	65	166	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	71	182	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	71	183	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	71	184	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	72	185	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	72	186	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	72	187	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	80	209	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	80	210	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	80	211	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	81	212	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	81	213	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	81	214	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	83	218	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	83	219	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	83	220	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	84	221	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	84	222	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	84	223	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	86	227	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	86	228	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	86	229	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
1	87	230	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	69e91f66bf6785f2edfda214	\N	\N
2	87	231	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	69e91fb4bf6785f2edfda216	\N	\N
3	87	232	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	69e9206bbf6785f2edfda218	\N	\N
\.


--
-- Data for Name: _pages_v_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, _uuid, block_name) FROM stdin;
2	45	version.layout	1	\N	\N	\N	69ef6d2ff075ed7edf3d3459	\N
2	46	version.layout	2	1	f	\N	69ef6d2ff075ed7edf3d3459	\N
2	47	version.layout	3	1	t	\N	69ef6d2ff075ed7edf3d3459	\N
2	48	version.layout	4	1	t	\N	69ef6d2ff075ed7edf3d3459	\N
2	49	version.layout	5	1	t	\N	69ef6d2ff075ed7edf3d3459	\N
\.


--
-- Data for Name: _pages_v_blocks_how_it_works; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_how_it_works (_order, _parent_id, _path, id, steps_eyebrow, steps_title, steps_intro, values_eyebrow, values_title, faq_title, faq_link_label, faq_link_url, bottom_cta_label, bottom_cta_url, _uuid, block_name, values_background_image_id, bottom_cta_background_image_id) FROM stdin;
1	104	version.layout	2	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions	See all FAQs	/contact-us	Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	105	version.layout	4	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions	See all FAQs	/contact-us	Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	106	version.layout	5	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions	See all FAQs	/contact-us	Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	107	version.layout	7	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions	See all FAQs	/contact-us	Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	108	version.layout	8	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions	See all FAQs	/contact-us	Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	109	version.layout	10	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions	See all FAQs	/contact-us	Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	110	version.layout	11	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions	See all FAQs	/contact-us	Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	111	version.layout	12	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions	See all FAQs	/contact-us	Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	112	version.layout	13	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions	See all FAQs	/contact-us	Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	113	version.layout	14	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions	See all FAQs	/contact-us	Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	114	version.layout	15	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions			Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	115	version.layout	16	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions			Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	116	version.layout	17	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions			Start Shopping	/shop	6a27a00815d32a348873148c	\N	\N	\N
1	117	version.layout	18	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions			Start Shopping	/shop	6a27a00815d32a348873148c	\N	42	\N
1	118	version.layout	19	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions			Start Shopping	/shop	6a27a00815d32a348873148c	\N	42	43
\.


--
-- Data for Name: _pages_v_blocks_how_it_works_faqs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_how_it_works_faqs (_order, _parent_id, id, question, answer, _uuid) FROM stdin;
1	2	7	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	2	8	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	2	9	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	2	10	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	2	11	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	2	12	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	4	19	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	4	20	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	4	21	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	4	22	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	4	23	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	4	24	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	5	25	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	5	26	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	5	27	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	5	28	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	5	29	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	5	30	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	7	37	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	7	38	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	7	39	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	7	40	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	7	41	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	7	42	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	8	43	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	8	44	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	8	45	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	8	46	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	8	47	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	8	48	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	10	55	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	10	56	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	10	57	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	10	58	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	10	59	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	10	60	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	11	61	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	11	62	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	11	63	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	11	64	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	11	65	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	11	66	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	12	67	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	12	68	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	12	69	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	12	70	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	12	71	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	12	72	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	13	73	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	13	74	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	13	75	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	13	76	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	13	77	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	13	78	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	14	79	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	14	80	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	14	81	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	14	82	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	14	83	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	14	84	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	15	85	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	15	86	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	15	87	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	15	88	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	15	89	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	15	90	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	16	91	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	16	92	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	16	93	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	16	94	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	16	95	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	16	96	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	17	97	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	17	98	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	17	99	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	17	100	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	17	101	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	17	102	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	18	103	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	18	104	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	18	105	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	18	106	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	18	107	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	18	108	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
1	19	109	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.	6a27a00815d32a3488731486
2	19	110	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.	6a27a00815d32a3488731487
3	19	111	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.	6a27a00815d32a3488731488
4	19	112	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.	6a27a00815d32a3488731489
5	19	113	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.	6a27a00815d32a348873148a
6	19	114	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.	6a27a00815d32a348873148b
\.


--
-- Data for Name: _pages_v_blocks_how_it_works_steps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_how_it_works_steps (_order, _parent_id, id, step_number, title, description, image_id, cta_label, cta_url, _uuid) FROM stdin;
1	2	4	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	36	Shop Now	/shop	6a27a00815d32a348873147e
2	2	5	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	36	Contact Us	/contact-us	6a27a00815d32a348873147f
3	2	6	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	36	Explore Shop	/shop	6a27a00815d32a3488731480
1	4	10	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	4	11	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	36	Contact Us	/contact-us	6a27a00815d32a348873147f
3	4	12	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	36	Explore Shop	/shop	6a27a00815d32a3488731480
1	5	13	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	5	14	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	36	Contact Us	/contact-us	6a27a00815d32a348873147f
3	5	15	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	36	Explore Shop	/shop	6a27a00815d32a3488731480
1	7	19	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	7	20	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	36	Contact Us	/contact-us	6a27a00815d32a348873147f
3	7	21	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	36	Explore Shop	/shop	6a27a00815d32a3488731480
1	8	22	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	8	23	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	36	Contact Us	/contact-us	6a27a00815d32a348873147f
3	8	24	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	36	Explore Shop	/shop	6a27a00815d32a3488731480
1	10	28	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	10	29	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us	6a27a00815d32a348873147f
3	10	30	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	36	Explore Shop	/shop	6a27a00815d32a3488731480
1	11	31	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	11	32	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us	6a27a00815d32a348873147f
3	11	33	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	36	Explore Shop	/shop	6a27a00815d32a3488731480
1	12	34	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	12	35	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us	6a27a00815d32a348873147f
3	12	36	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	\N	Explore Shop	/shop	6a27a00815d32a3488731480
1	13	37	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	13	38	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us	6a27a00815d32a348873147f
3	13	39	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	40	Explore Shop	/shop	6a27a00815d32a3488731480
1	14	40	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	14	41	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us	6a27a00815d32a348873147f
3	14	42	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	40	Explore Shop	/shop	6a27a00815d32a3488731480
1	15	43	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	15	44	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us	6a27a00815d32a348873147f
3	15	45	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	40	Explore Shop	/shop	6a27a00815d32a3488731480
1	16	46	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	16	47	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us	6a27a00815d32a348873147f
3	16	48	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	40	Explore Shop	/shop	6a27a00815d32a3488731480
1	17	49	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	17	50	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us	6a27a00815d32a348873147f
3	17	51	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	40	Explore Shop	/shop	6a27a00815d32a3488731480
1	18	52	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	18	53	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us	6a27a00815d32a348873147f
3	18	54	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	40	Explore Shop	/shop	6a27a00815d32a3488731480
1	19	55	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop	6a27a00815d32a348873147e
2	19	56	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us	6a27a00815d32a348873147f
3	19	57	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	40	Explore Shop	/shop	6a27a00815d32a3488731480
\.


--
-- Data for Name: _pages_v_blocks_how_it_works_values; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_how_it_works_values (_order, _parent_id, id, title, description, _uuid) FROM stdin;
1	2	6	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	2	7	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	2	8	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	2	9	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	2	10	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	4	16	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	4	17	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	4	18	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	4	19	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	4	20	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	5	21	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	5	22	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	5	23	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	5	24	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	5	25	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	7	31	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	7	32	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	7	33	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	7	34	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	7	35	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	8	36	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	8	37	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	8	38	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	8	39	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	8	40	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	10	46	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	10	47	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	10	48	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	10	49	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	10	50	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	11	51	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	11	52	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	11	53	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	11	54	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	11	55	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	12	56	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	12	57	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	12	58	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	12	59	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	12	60	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	13	61	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	13	62	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	13	63	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	13	64	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	13	65	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	14	66	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	14	67	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	14	68	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	14	69	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	14	70	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	15	71	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	15	72	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	15	73	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	15	74	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	15	75	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	16	76	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	16	77	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	16	78	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	16	79	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	16	80	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	17	81	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	17	82	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	17	83	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	17	84	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	17	85	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	18	86	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	18	87	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	18	88	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	18	89	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	18	90	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
1	19	91	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.	6a27a00815d32a3488731481
2	19	92	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.	6a27a00815d32a3488731482
3	19	93	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.	6a27a00815d32a3488731483
4	19	94	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.	6a27a00815d32a3488731484
5	19	95	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.	6a27a00815d32a3488731485
\.


--
-- Data for Name: _pages_v_blocks_info_section; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_info_section (_order, _parent_id, _path, id, eyebrow, title, image_id, _uuid, block_name, description, quote, link_label, link_url) FROM stdin;
3	13	version.layout	5	SINCE 1984	Our House	8	69e924755bb90a7bceae2c85	\N	More than just a butchery, Filet Gourmet is an institution dedicated to the art of meat. Our philosophy is based on respect for the animal and the ancestral know-how of the cut.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	14	version.layout	6	SINCE 1984	Our House	8	69e924755bb90a7bceae2c85	\N	More than just a butchery, Filet Gourmet is an institution dedicated to the art of meat. Our philosophy is based on respect for the animal and the ancestral know-how of the cut.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	39	version.layout	7	SINCE 1984	Our House	8	69e924755bb90a7bceae2c85	\N	More than just a butchery, Filet Gourmet is an institution dedicated to the art of meat. Our philosophy is based on respect for the animal and the ancestral know-how of the cut.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	62	version.layout	8	SINCE 1984	Our House	8	69e924755bb90a7bceae2c85	\N	More than just a butchery, Filet Gourmet is an institution dedicated to the art of meat. Our philosophy is based on respect for the animal and the ancestral know-how of the cut.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	63	version.layout	9	SINCE 1984	Our House	8	69e924755bb90a7bceae2c85	\N	More than just a butchery, Filet Gourmet is an institution dedicated to the art of meat. Our philosophy is based on respect for the animal and the ancestral know-how of the cut.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	64	version.layout	10	SINCE 1984	Our House	8	69e924755bb90a7bceae2c85	\N	More than just a butchery, Filet Gourmet is an institution dedicated to the art of meat. Our philosophy is based on respect for the animal and the ancestral know-how of the cut.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	65	version.layout	11	SINCE 1984	Our House	8	69e924755bb90a7bceae2c85	\N	More than just a butchery, Filet Gourmet is an institution dedicated to the art of meat. Our philosophy is based on respect for the animal and the ancestral know-how of the cut.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	66	version.layout	13	SINCE 1984	Our House	19	69e924755bb90a7bceae2c85	\N	More than just a butchery, Filet Gourmet is an institution dedicated to the art of meat. Our philosophy is based on respect for the animal and the ancestral know-how of the cut.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	67	version.layout	14	SINCE 1984	Our House	19	69e924755bb90a7bceae2c85	\N	More than just a butchery, Filet Gourmet is an institution dedicated to the art of meat. Our philosophy is based on respect for the animal and the ancestral know-how of the cut.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	69	version.layout	15	SINCE 1984	Our House	19	69e924755bb90a7bceae2c85	\N	More than just a butchery, Filet Gourmet is an institution dedicated to the art of meat. Our philosophy is based on respect for the animal and the ancestral know-how of the cut.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	70	version.layout	16	SINCE 1984	Our House	19	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	73	version.layout	18	SINCE 1984	Our House	19	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	74	version.layout	19	SINCE 1984	Our House	19	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	75	version.layout	23	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	76	version.layout	24	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	77	version.layout	27	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	78	version.layout	28	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	79	version.layout	29	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	80	version.layout	31	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	81	version.layout	32	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	82	version.layout	33	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	83	version.layout	34	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	84	version.layout	41	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	85	version.layout	42	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	86	version.layout	43	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	87	version.layout	44	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	88	version.layout	50	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	89	version.layout	51	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	90	version.layout	59	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	91	version.layout	60	SINCE 1984	Our House	23	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	92	version.layout	62	SINCE 1984	Our House	33	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	93	version.layout	63	SINCE 1984	Our House	33	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	96	version.layout	65	SINCE 1984	Our House	33	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
3	97	version.layout	66	SINCE 1984	Our House	33	69e924755bb90a7bceae2c85	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
\.


--
-- Data for Name: _pages_v_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_media_block (_order, _parent_id, _path, id, media_id, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_product_grid; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_product_grid (_order, _parent_id, _path, id, title, description, _uuid, block_name) FROM stdin;
1	23	version.layout	1	The Shop	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	24	version.layout	2	The Shop	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	25	version.layout	6	The Shop	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	26	version.layout	7	The Shop	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	27	version.layout	8	The Shop	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	28	version.layout	9	The Shop	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	29	version.layout	10	The Shop	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	30	version.layout	11	Shop Categories	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	31	version.layout	12	Shop Categories	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	32	version.layout	13	Shop Categories	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	33	version.layout	14	Shop Categories	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	34	version.layout	15	Shop Categories	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	35	version.layout	16	Shop Categories	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	36	version.layout	19	Shop Categories	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	37	version.layout	20	Shop Categories	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	38	version.layout	25	Shop Categories	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
1	59	version.layout	26	Shop Categories	Curated selections of the world's finest prime cuts.	69e9f43d45eb900ba53c4818	\N
\.


--
-- Data for Name: _pages_v_blocks_social_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_social_links (_order, _parent_id, _path, id, title, _uuid, block_name) FROM stdin;
4	17	version.layout	1	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	18	version.layout	2	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	19	version.layout	3	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	20	version.layout	4	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	21	version.layout	5	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	60	version.layout	6	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	61	version.layout	7	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	95	version.layout	9	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	98	version.layout	10	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	100	version.layout	11	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	101	version.layout	14	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
4	102	version.layout	15	Join the Inner Circle	69e9ea2ed2d6ab763b97ecb9	\N
\.


--
-- Data for Name: _pages_v_blocks_social_links_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_social_links_items (_order, _parent_id, id, label, url, _uuid) FROM stdin;
1	1	1	Instagram	#	69e9ea2ee96ca70f80ef1813
2	1	2	Facebook	#	69e9ea2ee96ca70f80ef1814
3	1	3	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	1	4	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	2	5	Instagram	#	69e9ea2ee96ca70f80ef1813
2	2	6	Facebook	#	69e9ea2ee96ca70f80ef1814
3	2	7	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	2	8	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	3	9	Instagram	#	69e9ea2ee96ca70f80ef1813
2	3	10	Facebook	#	69e9ea2ee96ca70f80ef1814
3	3	11	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	3	12	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	4	13	Instagram	#	69e9ea2ee96ca70f80ef1813
2	4	14	Facebook	#	69e9ea2ee96ca70f80ef1814
3	4	15	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	4	16	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	5	17	Instagram	#	69e9ea2ee96ca70f80ef1813
2	5	18	Facebook	#	69e9ea2ee96ca70f80ef1814
3	5	19	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	5	20	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	6	21	Instagram	#	69e9ea2ee96ca70f80ef1813
2	6	22	Facebook	#	69e9ea2ee96ca70f80ef1814
3	6	23	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	6	24	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	7	25	Instagram	#	69e9ea2ee96ca70f80ef1813
2	7	26	Facebook	#	69e9ea2ee96ca70f80ef1814
3	7	27	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	7	28	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	9	33	Instagram	#	69e9ea2ee96ca70f80ef1813
2	9	34	Facebook	#	69e9ea2ee96ca70f80ef1814
3	9	35	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	9	36	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	10	37	Instagram	#	69e9ea2ee96ca70f80ef1813
2	10	38	Facebook	#	69e9ea2ee96ca70f80ef1814
3	10	39	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	10	40	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	11	41	Instagram	#	69e9ea2ee96ca70f80ef1813
2	11	42	Facebook	#	69e9ea2ee96ca70f80ef1814
3	11	43	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	11	44	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	14	53	Instagram	#	69e9ea2ee96ca70f80ef1813
2	14	54	Facebook	#	69e9ea2ee96ca70f80ef1814
3	14	55	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	14	56	Pinterest	#	69e9ea2ee96ca70f80ef1816
1	15	57	Instagram	#	69e9ea2ee96ca70f80ef1813
2	15	58	Facebook	#	69e9ea2ee96ca70f80ef1814
3	15	59	LinkedIn	#	69e9ea2ee96ca70f80ef1815
4	15	60	Pinterest	#	69e9ea2ee96ca70f80ef1816
\.


--
-- Data for Name: _pages_v_blocks_testimonials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_testimonials (_order, _parent_id, _path, id, title, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_testimonials_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_testimonials_items (_order, _parent_id, id, quote, name, role, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_three_item_grid; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_three_item_grid (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
1	8	version.layout	3	69e90199fbbb7528ca24e007	\N
1	9	version.layout	4	69e90199fbbb7528ca24e007	\N
1	10	version.layout	5	69e90199fbbb7528ca24e007	\N
1	11	version.layout	27	69e90199fbbb7528ca24e007	\N
1	12	version.layout	28	69e90199fbbb7528ca24e007	\N
1	13	version.layout	33	69e90199fbbb7528ca24e007	\N
1	14	version.layout	34	69e90199fbbb7528ca24e007	\N
1	39	version.layout	35	69e90199fbbb7528ca24e007	\N
1	62	version.layout	36	69e90199fbbb7528ca24e007	\N
1	63	version.layout	37	69e90199fbbb7528ca24e007	\N
1	64	version.layout	38	69e90199fbbb7528ca24e007	\N
1	65	version.layout	39	69e90199fbbb7528ca24e007	\N
1	66	version.layout	41	69e90199fbbb7528ca24e007	\N
1	67	version.layout	42	69e90199fbbb7528ca24e007	\N
1	69	version.layout	43	69e90199fbbb7528ca24e007	\N
1	70	version.layout	44	69e90199fbbb7528ca24e007	\N
1	73	version.layout	46	69e90199fbbb7528ca24e007	\N
1	74	version.layout	47	69e90199fbbb7528ca24e007	\N
1	75	version.layout	51	69e90199fbbb7528ca24e007	\N
1	76	version.layout	52	69e90199fbbb7528ca24e007	\N
1	77	version.layout	55	69e90199fbbb7528ca24e007	\N
1	78	version.layout	56	69e90199fbbb7528ca24e007	\N
1	79	version.layout	57	69e90199fbbb7528ca24e007	\N
1	80	version.layout	59	69e90199fbbb7528ca24e007	\N
1	81	version.layout	60	69e90199fbbb7528ca24e007	\N
1	82	version.layout	61	69e90199fbbb7528ca24e007	\N
1	83	version.layout	62	69e90199fbbb7528ca24e007	\N
1	84	version.layout	69	69e90199fbbb7528ca24e007	\N
1	85	version.layout	70	69e90199fbbb7528ca24e007	\N
1	86	version.layout	71	69e90199fbbb7528ca24e007	\N
1	87	version.layout	72	69e90199fbbb7528ca24e007	\N
1	88	version.layout	78	69e90199fbbb7528ca24e007	\N
1	89	version.layout	79	69e90199fbbb7528ca24e007	\N
1	90	version.layout	87	69e90199fbbb7528ca24e007	\N
1	91	version.layout	88	69e90199fbbb7528ca24e007	\N
1	92	version.layout	90	69e90199fbbb7528ca24e007	\N
1	93	version.layout	91	69e90199fbbb7528ca24e007	\N
1	96	version.layout	93	69e90199fbbb7528ca24e007	\N
1	97	version.layout	94	69e90199fbbb7528ca24e007	\N
\.


--
-- Data for Name: _pages_v_blocks_visit_section; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_visit_section (_order, _parent_id, _path, id, title, description, location_label, map_image_id, _uuid, block_name, storefront_image_id, image_eyebrow, image_heading, image_description) FROM stdin;
3	16	version.layout	1	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.	New York	\N	69e9ea2ad2d6ab763b97ecb7	\N	\N	\N	\N	\N
3	17	version.layout	2	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.	New York	\N	69e9ea2ad2d6ab763b97ecb7	\N	\N	\N	\N	\N
3	18	version.layout	3	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.	New York	\N	69e9ea2ad2d6ab763b97ecb7	\N	\N	\N	\N	\N
3	19	version.layout	4	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.	New York	\N	69e9ea2ad2d6ab763b97ecb7	\N	\N	\N	\N	\N
3	20	version.layout	5	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.	New York	\N	69e9ea2ad2d6ab763b97ecb7	\N	\N	\N	\N	\N
3	21	version.layout	6	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.	New York	\N	69e9ea2ad2d6ab763b97ecb7	\N	\N	\N	\N	\N
3	60	version.layout	7	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.	New York	\N	69e9ea2ad2d6ab763b97ecb7	\N	\N	\N	\N	\N
3	61	version.layout	8	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.		\N	69e9ea2ad2d6ab763b97ecb7	\N	\N	\N	\N	\N
3	95	version.layout	10	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.		\N	69e9ea2ad2d6ab763b97ecb7	\N	\N	\N	\N	\N
3	98	version.layout	11	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.		34	69e9ea2ad2d6ab763b97ecb7	\N	34	Excellence in every cut	The Butcher's Craft	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.
3	100	version.layout	12	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.		34	69e9ea2ad2d6ab763b97ecb7	\N	34	Excellence in every cut	The Butcher's Craft	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.
3	101	version.layout	15	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.		\N	69e9ea2ad2d6ab763b97ecb7	\N	34	Excellence in every cut	The Butcher's Craft	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.
3	102	version.layout	16	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.		\N	69e9ea2ad2d6ab763b97ecb7	\N	34	Excellence in every cut	The Butcher's Craft	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.
\.


--
-- Data for Name: _pages_v_blocks_visit_section_hours; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_visit_section_hours (_order, _parent_id, id, label, value, _uuid) FROM stdin;
1	1	1	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	1	2	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	1	3	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	2	4	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	2	5	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	2	6	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	3	7	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	3	8	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	3	9	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	4	10	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	4	11	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	4	12	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	5	13	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	5	14	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	5	15	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	6	16	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	6	17	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	6	18	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	7	19	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	7	20	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	7	21	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	8	22	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	8	23	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	8	24	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	10	28	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	10	29	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	10	30	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	11	31	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	11	32	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	11	33	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	12	34	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	12	35	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	12	36	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	15	43	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	15	44	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	15	45	Sunday	Closed	69e9ea2ae96ca70f80ef1812
1	16	46	Monday - Friday	09:00 - 20:00	69e9ea2ae96ca70f80ef1810
2	16	47	Saturday	10:00 - 18:00	69e9ea2ae96ca70f80ef1811
3	16	48	Sunday	Closed	69e9ea2ae96ca70f80ef1812
\.


--
-- Data for Name: _pages_v_blocks_visit_section_image_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_visit_section_image_links (_order, _parent_id, id, link_type, link_label, link_url, link_appearance, link_new_tab, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_rels (id, "order", parent_id, path, pages_id, categories_id, products_id) FROM stdin;
1	1	8	version.layout.0.products	\N	\N	1
2	1	9	version.layout.0.products	\N	\N	1
3	2	9	version.layout.0.products	\N	\N	3
4	3	9	version.layout.0.products	\N	\N	2
5	1	10	version.layout.0.products	\N	\N	1
6	2	10	version.layout.0.products	\N	\N	3
49	1	11	version.layout.0.products	\N	\N	1
50	2	11	version.layout.0.products	\N	\N	3
51	1	12	version.layout.0.products	\N	\N	1
52	2	12	version.layout.0.products	\N	\N	3
61	1	13	version.layout.0.products	\N	\N	1
62	2	13	version.layout.0.products	\N	\N	3
63	1	14	version.layout.0.products	\N	\N	1
64	2	14	version.layout.0.products	\N	\N	3
65	1	39	version.layout.0.products	\N	\N	1
66	2	39	version.layout.0.products	\N	\N	3
67	1	62	version.layout.0.products	\N	\N	1
68	2	62	version.layout.0.products	\N	\N	3
69	1	63	version.layout.0.products	\N	\N	1
70	2	63	version.layout.0.products	\N	\N	3
71	1	64	version.layout.0.products	\N	\N	1
72	2	64	version.layout.0.products	\N	\N	3
73	1	65	version.layout.0.products	\N	\N	1
74	2	65	version.layout.0.products	\N	\N	3
77	1	66	version.layout.0.products	\N	\N	1
78	2	66	version.layout.0.products	\N	\N	3
79	1	67	version.layout.0.products	\N	\N	1
80	2	67	version.layout.0.products	\N	\N	3
81	1	69	version.layout.0.products	\N	\N	1
82	2	69	version.layout.0.products	\N	\N	3
83	1	70	version.layout.0.products	\N	\N	1
84	2	70	version.layout.0.products	\N	\N	3
87	1	73	version.layout.0.products	\N	\N	1
88	2	73	version.layout.0.products	\N	\N	3
89	1	74	version.layout.0.products	\N	\N	1
90	2	74	version.layout.0.products	\N	\N	3
97	1	75	version.layout.0.products	\N	\N	1
98	2	75	version.layout.0.products	\N	\N	3
99	1	76	version.layout.0.products	\N	\N	1
100	2	76	version.layout.0.products	\N	\N	3
105	1	77	version.layout.0.products	\N	\N	1
106	2	77	version.layout.0.products	\N	\N	3
107	1	78	version.layout.0.products	\N	\N	1
108	2	78	version.layout.0.products	\N	\N	3
109	1	79	version.layout.0.products	\N	\N	1
110	2	79	version.layout.0.products	\N	\N	3
113	1	80	version.layout.0.products	\N	\N	1
114	2	80	version.layout.0.products	\N	\N	3
115	1	81	version.layout.0.products	\N	\N	1
116	2	81	version.layout.0.products	\N	\N	3
117	1	82	version.layout.0.products	\N	\N	1
118	2	82	version.layout.0.products	\N	\N	3
119	1	83	version.layout.0.products	\N	\N	1
120	2	83	version.layout.0.products	\N	\N	3
231	\N	97	version.hero.slides.0.link.reference	3	\N	\N
232	\N	97	version.hero.slides.1.link.reference	1	\N	\N
233	\N	97	version.hero.slides.2.link.reference	3	\N	\N
234	1	97	version.layout.0.products	\N	\N	1
235	2	97	version.layout.0.products	\N	\N	3
133	1	84	version.layout.0.products	\N	\N	1
134	2	84	version.layout.0.products	\N	\N	3
135	1	85	version.layout.0.products	\N	\N	1
136	2	85	version.layout.0.products	\N	\N	3
137	1	86	version.layout.0.products	\N	\N	1
138	2	86	version.layout.0.products	\N	\N	3
139	\N	87	version.hero.slides.0.link.reference	3	\N	\N
140	1	87	version.layout.0.products	\N	\N	1
141	2	87	version.layout.0.products	\N	\N	3
158	\N	88	version.hero.slides.0.link.reference	3	\N	\N
159	\N	88	version.hero.slides.1.link.reference	1	\N	\N
160	1	88	version.layout.0.products	\N	\N	1
161	2	88	version.layout.0.products	\N	\N	3
162	\N	89	version.hero.slides.0.link.reference	3	\N	\N
163	\N	89	version.hero.slides.1.link.reference	1	\N	\N
164	1	89	version.layout.0.products	\N	\N	1
165	2	89	version.layout.0.products	\N	\N	3
196	\N	90	version.hero.slides.0.link.reference	3	\N	\N
197	\N	90	version.hero.slides.1.link.reference	1	\N	\N
198	\N	90	version.hero.slides.2.link.reference	3	\N	\N
199	1	90	version.layout.0.products	\N	\N	1
200	2	90	version.layout.0.products	\N	\N	3
201	\N	91	version.hero.slides.0.link.reference	3	\N	\N
202	\N	91	version.hero.slides.1.link.reference	1	\N	\N
203	\N	91	version.hero.slides.2.link.reference	3	\N	\N
204	1	91	version.layout.0.products	\N	\N	1
205	2	91	version.layout.0.products	\N	\N	3
211	\N	92	version.hero.slides.0.link.reference	3	\N	\N
212	\N	92	version.hero.slides.1.link.reference	1	\N	\N
213	\N	92	version.hero.slides.2.link.reference	3	\N	\N
214	1	92	version.layout.0.products	\N	\N	1
215	2	92	version.layout.0.products	\N	\N	3
216	\N	93	version.hero.slides.0.link.reference	3	\N	\N
217	\N	93	version.hero.slides.1.link.reference	1	\N	\N
218	\N	93	version.hero.slides.2.link.reference	3	\N	\N
219	1	93	version.layout.0.products	\N	\N	1
220	2	93	version.layout.0.products	\N	\N	3
226	\N	96	version.hero.slides.0.link.reference	3	\N	\N
227	\N	96	version.hero.slides.1.link.reference	1	\N	\N
228	\N	96	version.hero.slides.2.link.reference	3	\N	\N
229	1	96	version.layout.0.products	\N	\N	1
230	2	96	version.layout.0.products	\N	\N	3
\.


--
-- Data for Name: _pages_v_version_hero_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_version_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_version_hero_slides; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_version_hero_slides (_order, _parent_id, id, heading, description, media_id, link_type, link_new_tab, link_url, link_label, _uuid) FROM stdin;
1	84	7	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	custom	\N	\\	#	6a1a9ff98dc21b9f875db873
1	85	8	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	custom	\N	\\	#	6a1a9ff98dc21b9f875db873
1	86	9	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat	6a1a9ff98dc21b9f875db873
1	87	10	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat	6a1a9ff98dc21b9f875db873
1	88	20	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat	6a1a9ff98dc21b9f875db873
2	88	21	Farm Fresh Meat For Every Table	From juicy steaks to tender chicken and fresh seafood, discover hand-selected products delivered straight to your doorstep with unmatched freshness.	31	reference	\N	\N	Browse Collection	6a1aa1098dc21b9f875db875
1	89	22	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat	6a1a9ff98dc21b9f875db873
2	89	23	Farm Fresh Meat For Every Table	From juicy steaks to tender chicken and fresh seafood, discover hand-selected products delivered straight to your doorstep with unmatched freshness.	31	reference	\N	\N	Browse Collection	6a1aa1098dc21b9f875db875
1	90	45	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat	6a1a9ff98dc21b9f875db873
2	90	46	Farm Fresh Meat For Every Table	From juicy steaks to tender chicken and fresh seafood, discover hand-selected products delivered straight to your doorstep with unmatched freshness.	31	reference	\N	\N	Browse Collection	6a1aa1098dc21b9f875db875
3	90	47	Premium Steaks. Exceptional Flavor.	Indulge in restaurant-quality cuts sourced from the finest producers. Perfect marbling, rich flavor, and freshness guaranteed for every order.	32	reference	f	\N	Order Now	6a1aa1b88dc21b9f875db877
1	91	48	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat	6a1a9ff98dc21b9f875db873
2	91	49	Farm Fresh Meat For Every Table	From juicy steaks to tender chicken and fresh seafood, discover hand-selected products delivered straight to your doorstep with unmatched freshness.	31	reference	\N	\N	Browse Collection	6a1aa1098dc21b9f875db875
3	91	50	Premium Steaks. Exceptional Flavor.	Indulge in restaurant-quality cuts sourced from the finest producers. Perfect marbling, rich flavor, and freshness guaranteed for every order.	32	reference	f	\N	Order Now	6a1aa1b88dc21b9f875db877
1	92	54	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat	6a1a9ff98dc21b9f875db873
2	92	55	Farm Fresh Meat For Every Table	From juicy steaks to tender chicken and fresh seafood, discover hand-selected products delivered straight to your doorstep with unmatched freshness.	31	reference	\N	\N	Browse Collection	6a1aa1098dc21b9f875db875
3	92	56	Premium Steaks. Exceptional Flavor.	Indulge in restaurant-quality cuts sourced from the finest producers. Perfect marbling, rich flavor, and freshness guaranteed for every order.	32	reference	f	\N	Order Now	6a1aa1b88dc21b9f875db877
1	93	57	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat	6a1a9ff98dc21b9f875db873
2	93	58	Farm Fresh Meat For Every Table	From juicy steaks to tender chicken and fresh seafood, discover hand-selected products delivered straight to your doorstep with unmatched freshness.	31	reference	\N	\N	Browse Collection	6a1aa1098dc21b9f875db875
3	93	59	Premium Steaks. Exceptional Flavor.	Indulge in restaurant-quality cuts sourced from the finest producers. Perfect marbling, rich flavor, and freshness guaranteed for every order.	32	reference	f	\N	Order Now	6a1aa1b88dc21b9f875db877
1	95	62	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	9	custom	\N	/shop	Explore Our Cuts	6a1ab4b8da969013a44887d5
2	95	63	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	17	custom	\N	/shop	Shop Now	6a1ab4b8da969013a44887d6
1	96	67	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat	6a1a9ff98dc21b9f875db873
2	96	68	Farm Fresh Meat For Every Table	From juicy steaks to tender chicken and fresh seafood, discover hand-selected products delivered straight to your doorstep with unmatched freshness.	31	reference	\N	\N	Browse Collection	6a1aa1098dc21b9f875db875
3	96	69	Premium Steaks. Exceptional Flavor.	Indulge in restaurant-quality cuts sourced from the finest producers. Perfect marbling, rich flavor, and freshness guaranteed for every order.	32	reference	f	\N	Order Now	6a1aa1b88dc21b9f875db877
1	97	70	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat	6a1a9ff98dc21b9f875db873
2	97	71	Farm Fresh Meat For Every Table	From juicy steaks to tender chicken and fresh seafood, discover hand-selected products delivered straight to your doorstep with unmatched freshness.	31	reference	\N	\N	Browse Collection	6a1aa1098dc21b9f875db875
3	97	72	Premium Steaks. Exceptional Flavor.	Indulge in restaurant-quality cuts sourced from the finest producers. Perfect marbling, rich flavor, and freshness guaranteed for every order.	32	reference	f	\N	Order Now	6a1aa1b88dc21b9f875db877
1	98	73	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	9	custom	\N	/shop	Explore Our Cuts	6a1ab4b8da969013a44887d5
2	98	74	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	17	custom	\N	/shop	Shop Now	6a1ab4b8da969013a44887d6
1	100	75	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	9	custom	\N	/shop	Explore Our Cuts	6a1ab4b8da969013a44887d5
2	100	76	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	17	custom	\N	/shop	Shop Now	6a1ab4b8da969013a44887d6
1	101	81	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	36	custom	\N	/shop	Explore Our Cuts	6a1ab4b8da969013a44887d5
2	101	82	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	17	custom	\N	/shop	Shop Now	6a1ab4b8da969013a44887d6
1	102	83	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	36	custom	\N	/shop	Explore Our Cuts	6a1ab4b8da969013a44887d5
2	102	84	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	17	custom	\N	/shop	Shop Now	6a1ab4b8da969013a44887d6
\.


--
-- Data for Name: _products_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._products_v (id, parent_id, version_enable_variants, version_price_in_u_s_d_enabled, version_price_in_u_s_d, version_updated_at, version_created_at, version_deleted_at, version__status, created_at, updated_at, latest, autosave, version_eyebrow, version_primary_c_t_a_label, version_primary_c_t_a_url, version_reviews_heading, version_reviews_summary, version_title, version_generate_slug, version_slug, version_shop_card_label, version_shop_card_short_description, version_cut_type, version_aging_process, version_origin, version_sort_priority, version_featured_in_shop, version_card_button_label, version_meat_type, version_weight, version_storage_type, version_preparation_style, version_flavor, version_in_stock, version_purchase_frequencies_one_time_enabled, version_purchase_frequencies_one_time_price_override, version_purchase_frequencies_monthly_enabled, version_purchase_frequencies_monthly_price_override, version_purchase_frequencies_monthly_savings_text) FROM stdin;
75	1	\N	t	9900	2026-04-27 11:46:51.466+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-27 11:46:51.499+05:30	2026-04-27 11:46:51.499+05:30	f	f	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	$99.00	t	$79.00	20% Off
74	1	\N	t	9900	2026-04-27 11:46:48.143+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-27 11:46:48.143+05:30	2026-04-27 11:46:48.143+05:30	f	t	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	99.00	t	$79.00	20% Off
76	1	\N	t	9900	2026-04-27 11:46:51.802+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-27 11:46:51.802+05:30	2026-04-27 11:46:51.802+05:30	t	t	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	$99.00	t	$79.00	20% Off
37	1	\N	t	11000	2026-04-23 23:14:54.565+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-23 23:14:54.599+05:30	2026-04-23 23:14:54.599+05:30	f	f	Premium Ribeye Steak	Add to Cart	/products/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
36	1	\N	t	11000	2026-04-23 23:14:50.872+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-23 23:14:50.872+05:30	2026-04-23 23:14:50.872+05:30	f	t	Premium Ribeye Steak	Add to Cart	/products/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
2	1	\N	f	\N	2026-04-22 19:05:59.266+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-22 19:03:41.468+05:30	2026-04-22 19:05:59.266+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
3	1	\N	f	\N	2026-04-22 19:06:16.124+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-22 19:06:16.165+05:30	2026-04-22 19:06:16.165+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
30	1	\N	t	11000	2026-04-23 23:11:38.857+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-23 23:11:38.9+05:30	2026-04-23 23:11:38.9+05:30	f	f	Premium Ribeye Steak	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	chicken	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
13	2	\N	\N	\N	2026-04-23 13:24:28.946+05:30	2026-04-22 23:20:29.56+05:30	2026-04-23 13:24:28.859+05:30	draft	2026-04-23 13:24:28.959+05:30	2026-04-23 13:24:28.959+05:30	t	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
4	2	\N	\N	\N	2026-04-22 23:20:29.56+05:30	2026-04-22 23:20:29.56+05:30	\N	draft	2026-04-22 23:20:29.63+05:30	2026-04-22 23:20:29.63+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
44	1	\N	t	11000	2026-04-24 00:05:12.152+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-24 00:05:12.202+05:30	2026-04-24 00:05:12.202+05:30	f	f	Premium Ribeye Steak	Add to Cart 1	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
38	1	\N	t	11000	2026-04-23 23:25:57.216+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-23 23:25:57.267+05:30	2026-04-23 23:25:57.267+05:30	f	f	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
26	4	f	t	12000	2026-04-23 16:02:40.25+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 16:02:40.306+05:30	2026-04-23 16:02:40.306+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
63	3	\N	t	15000	2026-04-26 02:25:10.213+05:30	2026-04-22 23:20:45.674+05:30	\N	published	2026-04-26 02:25:10.259+05:30	2026-04-26 02:25:10.259+05:30	f	f	Curated Collection	View Product	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
9	3	\N	\N	\N	2026-04-22 23:30:35.647+05:30	2026-04-22 23:20:45.674+05:30	\N	published	2026-04-22 23:30:35.718+05:30	2026-04-22 23:30:35.718+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
8	3	\N	\N	\N	2026-04-22 23:30:34.02+05:30	2026-04-22 23:20:45.674+05:30	\N	draft	2026-04-22 23:28:34.458+05:30	2026-04-22 23:30:34.02+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
5	3	\N	\N	\N	2026-04-22 23:20:45.675+05:30	2026-04-22 23:20:45.674+05:30	\N	draft	2026-04-22 23:20:45.721+05:30	2026-04-22 23:20:45.721+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
48	3	\N	\N	\N	2026-04-24 00:09:17.078+05:30	2026-04-22 23:20:45.674+05:30	\N	draft	2026-04-24 00:07:56.808+05:30	2026-04-24 00:09:17.078+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	0	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
64	3	\N	t	15000	2026-04-26 02:25:20.65+05:30	2026-04-22 23:20:45.674+05:30	\N	published	2026-04-26 02:25:20.691+05:30	2026-04-26 02:25:20.691+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
43	1	\N	t	11000	2026-04-24 00:04:53.344+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-24 00:04:42.694+05:30	2026-04-24 00:04:53.344+05:30	f	t	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
7	1	\N	f	\N	2026-04-22 23:27:52.659+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-22 23:27:52.776+05:30	2026-04-22 23:27:52.776+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
1	1	\N	\N	\N	2026-04-22 18:58:55.601+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-22 18:58:55.632+05:30	2026-04-22 18:58:55.632+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
68	1	\N	t	11000	2026-04-27 10:55:12.201+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-27 10:55:12.201+05:30	2026-04-27 10:55:12.201+05:30	f	t	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
67	1	\N	t	11000	2026-04-27 10:55:09.038+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-27 10:55:09.072+05:30	2026-04-27 10:55:09.072+05:30	f	f	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
69	1	\N	t	11000	2026-04-27 10:55:54.329+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-27 10:55:55.214+05:30	2026-04-27 10:55:55.214+05:30	f	f	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
47	1	\N	t	11000	2026-04-27 10:55:04.948+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-24 00:05:23.837+05:30	2026-04-27 10:55:04.948+05:30	f	t	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
45	1	\N	t	11000	2026-04-24 00:05:14.623+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-24 00:05:14.623+05:30	2026-04-24 00:05:14.623+05:30	f	t	Premium Ribeye Steak	Add to Cart 1	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
49	3	\N	\N	\N	2026-04-24 00:09:19.751+05:30	2026-04-22 23:20:45.674+05:30	\N	published	2026-04-24 00:09:19.81+05:30	2026-04-24 00:09:19.81+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	0	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
58	3	\N	t	15000	2026-04-26 02:21:54.741+05:30	2026-04-22 23:20:45.674+05:30	\N	draft	2026-04-26 02:21:43.084+05:30	2026-04-26 02:21:54.741+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
59	3	\N	t	15000	2026-04-26 02:21:58.793+05:30	2026-04-22 23:20:45.674+05:30	\N	published	2026-04-26 02:21:58.845+05:30	2026-04-26 02:21:58.845+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
57	3	\N	t	15000	2026-04-24 00:11:41.094+05:30	2026-04-22 23:20:45.674+05:30	\N	published	2026-04-24 00:11:41.149+05:30	2026-04-24 00:11:41.149+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
60	3	\N	t	15000	2026-04-26 02:22:38.778+05:30	2026-04-22 23:20:45.674+05:30	\N	published	2026-04-26 02:22:38.818+05:30	2026-04-26 02:22:38.818+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
73	1	\N	t	9900	2026-04-27 11:46:15.745+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-27 11:46:15.816+05:30	2026-04-27 11:46:15.816+05:30	f	f	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	99.00	t	79.00	20% Off
31	1	\N	t	11000	2026-04-23 23:12:01.57+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-23 23:12:01.607+05:30	2026-04-23 23:12:01.607+05:30	f	f	Premium Ribeye Steak	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	chicken	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
72	1	\N	t	9900	2026-04-27 11:46:02.784+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-27 11:46:02.83+05:30	2026-04-27 11:46:02.83+05:30	f	f	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	99.00	t	80.00	20% Off
6	1	\N	f	\N	2026-04-22 23:27:50.531+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-22 23:27:27.751+05:30	2026-04-22 23:27:50.531+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
35	1	\N	t	11000	2026-04-23 23:13:11.773+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-23 23:13:11.822+05:30	2026-04-23 23:13:11.822+05:30	f	f	Premium Ribeye Steak	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
46	1	\N	t	11000	2026-04-24 00:05:20.957+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-24 00:05:21.006+05:30	2026-04-24 00:05:21.006+05:30	f	f	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	beef	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
33	1	\N	t	11000	2026-04-23 23:12:20.829+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-23 23:12:20.869+05:30	2026-04-23 23:12:20.869+05:30	f	f	Premium Ribeye Steak	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	chicken	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
71	1	\N	t	9900	2026-04-27 11:45:16.88+05:30	2026-04-22 18:58:55.6+05:30	\N	published	2026-04-27 11:45:16.916+05:30	2026-04-27 11:45:16.916+05:30	f	f	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	99.00	t	80.00	20%
32	1	\N	t	11000	2026-04-23 23:12:15.936+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-23 23:12:15.936+05:30	2026-04-23 23:12:15.936+05:30	f	t	Premium Ribeye Steak	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	chicken	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
29	1	\N	t	11000	2026-04-23 23:10:40.965+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-23 22:49:24.382+05:30	2026-04-23 23:10:40.965+05:30	f	t	Premium Ribeye Steak	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	\N	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	chicken	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
34	1	\N	t	11000	2026-04-23 23:12:59.12+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-23 23:12:33.176+05:30	2026-04-23 23:12:59.12+05:30	f	t	Premium Ribeye Steak	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	Add to Cart	chicken	500	frozen	curry-cut	plain	t	t	\N	t	\N	\N
42	4	f	t	12000	2026-04-23 23:30:17.159+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 23:30:17.23+05:30	2026-04-23 23:30:17.23+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Wagyu Ribeye	f	wagyu-ribeye		\N	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Atelier Box	beef	230	\N	ready	plain	t	t	\N	t	\N	\N
56	3	\N	t	15000	2026-04-24 00:10:35.996+05:30	2026-04-22 23:20:45.674+05:30	\N	draft	2026-04-24 00:10:35.996+05:30	2026-04-24 00:10:35.996+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
55	3	\N	t	15000	2026-04-24 00:10:33.491+05:30	2026-04-22 23:20:45.674+05:30	\N	published	2026-04-24 00:10:33.544+05:30	2026-04-24 00:10:33.544+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
54	3	\N	t	15000	2026-04-24 00:10:30.823+05:30	2026-04-22 23:20:45.674+05:30	\N	draft	2026-04-24 00:10:25.497+05:30	2026-04-24 00:10:30.823+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
70	1	\N	t	9900	2026-04-27 11:45:07.696+05:30	2026-04-22 18:58:55.6+05:30	\N	draft	2026-04-27 11:44:05.043+05:30	2026-04-27 11:45:07.696+05:30	f	t	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	99.00	t	80.00	20%
86	4	f	t	12000	2026-05-19 01:24:04.674+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-05-19 01:24:06.553+05:30	2026-05-19 01:24:06.553+05:30	t	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	View Product	beef	230	frozen	ready	plain	t	t	$120.00	t	$80.00	25% Off
61	4	f	t	12000	2026-04-26 02:23:08.779+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-26 02:22:58.55+05:30	2026-04-26 02:23:08.779+05:30	f	t	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	a	beef	230	frozen	ready	plain	t	t	\N	t	\N	\N
41	4	f	t	12000	2026-04-23 23:30:01.08+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 23:30:01.121+05:30	2026-04-23 23:30:01.121+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Wagyu Ribeye	f	wagyu-ribeye		\N	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Atelier Box	beef	230	\N	ready	plain	t	t	\N	t	\N	\N
22	4	f	\N	\N	2026-04-23 14:30:54.888+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 14:30:54.983+05:30	2026-04-23 14:30:54.983+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
17	4	\N	\N	\N	2026-04-23 14:02:21.638+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 14:02:21.703+05:30	2026-04-23 14:02:21.703+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
77	4	f	t	12000	2026-04-27 12:01:49.076+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-27 12:01:20.812+05:30	2026-04-27 12:01:49.076+05:30	f	t	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Cart	beef	230	frozen	ready	plain	t	t	120.00	t	$80.00	\N
66	4	f	t	12000	2026-04-26 23:51:42.556+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-26 23:51:42.576+05:30	2026-04-26 23:51:42.576+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Cart	beef	230	frozen	ready	plain	t	t	\N	t	\N	\N
81	4	f	t	12000	2026-04-28 02:11:13.193+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-28 02:11:13.239+05:30	2026-04-28 02:11:13.239+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	View Product	beef	230	frozen	ready	plain	t	t	$120.00	t	$80.00	25% Off
20	4	t	\N	\N	2026-04-23 14:03:54.614+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 14:03:54.679+05:30	2026-04-23 14:03:54.679+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
19	4	\N	\N	\N	2026-04-23 14:03:33.174+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 14:03:33.224+05:30	2026-04-23 14:03:33.224+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
80	4	f	t	12000	2026-04-27 12:19:27.148+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-27 12:10:01.862+05:30	2026-04-27 12:19:27.148+05:30	f	t	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Cart	beef	230	frozen	ready	plain	t	t	$120.00	t	$80.00	25% Off
78	4	f	t	12000	2026-04-27 12:01:55.083+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-27 12:01:55.127+05:30	2026-04-27 12:01:55.127+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Cart	beef	230	frozen	ready	plain	t	t	120.00	t	$80.00	25% Off
15	4	\N	\N	\N	2026-04-23 13:24:46.419+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 13:24:46.448+05:30	2026-04-23 13:24:46.448+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
18	4	\N	\N	\N	2026-04-23 14:03:30.794+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-23 14:02:29.204+05:30	2026-04-23 14:03:30.794+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
27	4	f	t	12000	2026-04-23 16:26:17.823+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-23 16:26:17.823+05:30	2026-04-23 16:26:17.823+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Wagyu Ribeye	f	wagyu-ribeye	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
14	4	\N	\N	\N	2026-04-23 13:24:39.385+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-23 13:24:39.385+05:30	2026-04-23 13:24:39.385+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
12	4	\N	\N	\N	2026-04-23 13:03:34.361+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 13:03:34.39+05:30	2026-04-23 13:03:34.39+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
40	4	f	t	12000	2026-04-23 23:28:39.444+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 23:28:39.485+05:30	2026-04-23 23:28:39.485+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Wagyu Ribeye	f	wagyu-ribeye		\N	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Atelier Box	beef	230	\N	ready	plain	t	t	\N	t	\N	\N
23	4	f	t	\N	2026-04-23 16:01:45.72+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-23 16:01:45.72+05:30	2026-04-23 16:01:45.72+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
21	4	f	\N	\N	2026-04-23 14:04:07.193+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-23 14:04:07.193+05:30	2026-04-23 14:04:07.193+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
10	4	\N	\N	\N	2026-04-23 13:01:50.219+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-23 13:01:50.241+05:30	2026-04-23 13:01:50.241+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
11	4	\N	\N	\N	2026-04-23 13:02:10.555+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-23 13:02:04.424+05:30	2026-04-23 13:02:10.555+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
16	4	\N	\N	\N	2026-04-23 14:02:19.478+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-23 14:01:14.065+05:30	2026-04-23 14:02:19.478+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
25	4	f	t	12000	2026-04-23 16:02:38.619+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-23 16:01:52.754+05:30	2026-04-23 16:02:38.619+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
53	4	f	t	12000	2026-04-24 00:10:09.331+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-24 00:10:09.357+05:30	2026-04-24 00:10:09.357+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Atelier Box	beef	230	\N	ready	plain	t	t	\N	t	\N	\N
28	4	f	t	12000	2026-04-23 16:26:22.674+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 16:26:22.747+05:30	2026-04-23 16:26:22.747+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Wagyu Ribeye	f	wagyu-ribeye	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
24	4	f	t	12000	2026-04-23 16:01:50.285+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-23 16:01:50.316+05:30	2026-04-23 16:01:50.316+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
62	4	f	t	12000	2026-04-26 02:23:16.151+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-26 02:23:16.201+05:30	2026-04-26 02:23:16.201+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Cart	beef	230	frozen	ready	plain	t	t	\N	t	\N	\N
79	4	f	t	12000	2026-04-27 12:02:14.067+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-04-27 12:02:14.107+05:30	2026-04-27 12:02:14.107+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Cart	beef	230	frozen	ready	plain	t	t	$120.00	t	$80.00	25% Off
85	4	f	t	12000	2026-05-02 00:51:27.816+05:30	2026-04-23 13:01:50.215+05:30	\N	published	2026-05-02 00:51:28.895+05:30	2026-05-02 00:51:28.895+05:30	f	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	View Product	beef	230	frozen	ready	plain	t	t	$120.00	t	$80.00	25% Off
39	4	f	t	12000	2026-04-23 23:28:37.875+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-23 23:27:17.169+05:30	2026-04-23 23:28:37.875+05:30	f	t	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Wagyu Ribeye	f	wagyu-ribeye		\N	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Atelier Box	beef	230	\N	ready	plain	t	t	\N	t	\N	\N
52	4	f	t	12000	2026-04-24 00:10:03.133+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-04-24 00:09:46.459+05:30	2026-04-24 00:10:03.133+05:30	f	t	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	Add to Atelier Box	beef	230	\N	ready	plain	t	t	\N	t	\N	\N
84	4	f	t	12000	2026-05-02 00:51:23.222+05:30	2026-04-23 13:01:50.215+05:30	\N	draft	2026-05-02 00:51:05.628+05:30	2026-05-02 00:51:23.222+05:30	f	t	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	View Product	beef	230	frozen	ready	plain	t	t	$120.00	t	$80.00	25% Off
88	3	\N	t	15000	2026-05-19 02:05:55.913+05:30	2026-04-22 23:20:45.674+05:30	\N	published	2026-05-19 02:05:57.464+05:30	2026-05-19 02:05:57.464+05:30	t	f	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
51	3	\N	\N	\N	2026-04-24 00:09:33.484+05:30	2026-04-22 23:20:45.674+05:30	\N	published	2026-04-24 00:09:33.521+05:30	2026-04-24 00:09:33.521+05:30	f	f	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
50	3	\N	\N	\N	2026-04-24 00:09:32.106+05:30	2026-04-22 23:20:45.674+05:30	\N	draft	2026-04-24 00:09:32.106+05:30	2026-04-24 00:09:32.106+05:30	f	t	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
87	3	\N	t	15000	2026-05-19 02:05:49.018+05:30	2026-04-22 23:20:45.674+05:30	\N	draft	2026-05-19 02:05:09.65+05:30	2026-05-19 02:05:49.018+05:30	f	t	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
\.


--
-- Data for Name: _products_v_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._products_v_rels (id, "order", parent_id, path, variant_types_id) FROM stdin;
8	1	2	version.categories	\N
9	1	3	version.categories	\N
12	1	6	version.categories	\N
13	1	7	version.categories	\N
\.


--
-- Data for Name: _products_v_version_badges; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._products_v_version_badges (_order, _parent_id, id, label, _uuid) FROM stdin;
1	41	106	Prime Grade	69e9caf0a478f0ac2aac27ae
2	41	107	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	42	108	Prime Grade	69e9caf0a478f0ac2aac27ae
1	11	4	Prime Grade	69e9caf0a478f0ac2aac27ae
2	11	5	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	12	6	Prime Grade	69e9caf0a478f0ac2aac27ae
2	12	7	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	14	8	Prime Grade	69e9caf0a478f0ac2aac27ae
2	14	9	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	15	10	Prime Grade	69e9caf0a478f0ac2aac27ae
2	15	11	28 Days Aged	69e9caf5a478f0ac2aac27b0
2	42	109	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	43	112	Fresh	69ea5a03cf543c4bbc9a8a42
1	44	113	Fresh	69ea5a03cf543c4bbc9a8a42
1	45	114	Fresh	69ea5a03cf543c4bbc9a8a42
1	46	115	Fresh	69ea5a03cf543c4bbc9a8a42
1	16	24	Prime Grade	69e9caf0a478f0ac2aac27ae
2	16	25	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	17	26	Prime Grade	69e9caf0a478f0ac2aac27ae
2	17	27	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	52	122	Prime Grade	69e9caf0a478f0ac2aac27ae
2	52	123	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	53	124	Prime Grade	69e9caf0a478f0ac2aac27ae
2	53	125	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	18	34	Prime Grade	69e9caf0a478f0ac2aac27ae
2	18	35	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	19	36	Prime Grade	69e9caf0a478f0ac2aac27ae
2	19	37	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	20	38	Prime Grade	69e9caf0a478f0ac2aac27ae
2	20	39	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	21	40	Prime Grade	69e9caf0a478f0ac2aac27ae
2	21	41	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	22	42	Prime Grade	69e9caf0a478f0ac2aac27ae
2	22	43	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	23	44	Prime Grade	69e9caf0a478f0ac2aac27ae
2	23	45	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	24	46	Prime Grade	69e9caf0a478f0ac2aac27ae
2	24	47	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	61	130	Prime Grade	69e9caf0a478f0ac2aac27ae
2	61	131	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	62	132	Prime Grade	69e9caf0a478f0ac2aac27ae
1	25	54	Prime Grade	69e9caf0a478f0ac2aac27ae
2	25	55	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	26	56	Prime Grade	69e9caf0a478f0ac2aac27ae
2	26	57	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	27	58	Prime Grade	69e9caf0a478f0ac2aac27ae
2	27	59	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	28	60	Prime Grade	69e9caf0a478f0ac2aac27ae
2	28	61	28 Days Aged	69e9caf5a478f0ac2aac27b0
2	62	133	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	66	134	Prime Grade	69e9caf0a478f0ac2aac27ae
2	66	135	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	34	65	Fresh	69ea5a03cf543c4bbc9a8a42
1	35	66	Fresh	69ea5a03cf543c4bbc9a8a42
1	36	67	Fresh	69ea5a03cf543c4bbc9a8a42
1	37	68	Fresh	69ea5a03cf543c4bbc9a8a42
1	38	69	Fresh	69ea5a03cf543c4bbc9a8a42
1	47	138	Fresh	69ea5a03cf543c4bbc9a8a42
1	67	139	Fresh	69ea5a03cf543c4bbc9a8a42
1	68	140	Fresh	69ea5a03cf543c4bbc9a8a42
1	69	141	Fresh	69ea5a03cf543c4bbc9a8a42
1	70	151	Fresh	69ea5a03cf543c4bbc9a8a42
1	71	152	Fresh	69ea5a03cf543c4bbc9a8a42
1	72	153	Fresh	69ea5a03cf543c4bbc9a8a42
1	73	154	Fresh	69ea5a03cf543c4bbc9a8a42
1	74	155	Fresh	69ea5a03cf543c4bbc9a8a42
1	75	156	Fresh	69ea5a03cf543c4bbc9a8a42
1	76	157	Fresh	69ea5a03cf543c4bbc9a8a42
1	39	102	Prime Grade	69e9caf0a478f0ac2aac27ae
2	39	103	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	40	104	Prime Grade	69e9caf0a478f0ac2aac27ae
2	40	105	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	77	168	Prime Grade	69e9caf0a478f0ac2aac27ae
2	77	169	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	78	170	Prime Grade	69e9caf0a478f0ac2aac27ae
2	78	171	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	79	172	Prime Grade	69e9caf0a478f0ac2aac27ae
2	79	173	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	80	178	Prime Grade	69e9caf0a478f0ac2aac27ae
2	80	179	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	81	180	Prime Grade	69e9caf0a478f0ac2aac27ae
2	81	181	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	84	184	Prime Grade	69e9caf0a478f0ac2aac27ae
2	84	185	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	85	186	Prime Grade	69e9caf0a478f0ac2aac27ae
2	85	187	28 Days Aged	69e9caf5a478f0ac2aac27b0
1	86	188	Prime Grade	69e9caf0a478f0ac2aac27ae
2	86	189	28 Days Aged	69e9caf5a478f0ac2aac27b0
\.


--
-- Data for Name: _products_v_version_product_gallery; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._products_v_version_product_gallery (_order, _parent_id, id, image_id, _uuid) FROM stdin;
1	25	3	11	69e9f51f45eb900ba53c481a
1	26	4	11	69e9f51f45eb900ba53c481a
1	27	5	11	69e9f51f45eb900ba53c481a
1	28	6	11	69e9f51f45eb900ba53c481a
1	29	10	12	69ea591fcf543c4bbc9a8a40
1	30	11	12	69ea591fcf543c4bbc9a8a40
1	31	12	12	69ea591fcf543c4bbc9a8a40
1	32	13	12	69ea591fcf543c4bbc9a8a40
1	33	14	12	69ea591fcf543c4bbc9a8a40
1	34	18	12	69ea591fcf543c4bbc9a8a40
1	35	19	12	69ea591fcf543c4bbc9a8a40
1	36	20	12	69ea591fcf543c4bbc9a8a40
1	37	21	12	69ea591fcf543c4bbc9a8a40
1	38	22	12	69ea591fcf543c4bbc9a8a40
1	39	39	11	69e9f51f45eb900ba53c481a
1	40	40	11	69e9f51f45eb900ba53c481a
1	41	41	11	69e9f51f45eb900ba53c481a
1	42	42	11	69e9f51f45eb900ba53c481a
1	43	45	12	69ea591fcf543c4bbc9a8a40
1	44	46	12	69ea591fcf543c4bbc9a8a40
1	45	47	12	69ea591fcf543c4bbc9a8a40
1	46	48	12	69ea591fcf543c4bbc9a8a40
1	52	53	11	69e9f51f45eb900ba53c481a
1	53	54	11	69e9f51f45eb900ba53c481a
1	58	56	13	69ed295ce1378c677f721c02
1	59	57	13	69ed295ce1378c677f721c02
1	60	58	13	69ed295ce1378c677f721c02
1	61	61	11	69e9f51f45eb900ba53c481a
1	62	62	11	69e9f51f45eb900ba53c481a
1	63	63	13	69ed295ce1378c677f721c02
1	64	64	13	69ed295ce1378c677f721c02
1	66	65	11	69e9f51f45eb900ba53c481a
1	47	68	12	69ea591fcf543c4bbc9a8a40
1	67	69	12	69ea591fcf543c4bbc9a8a40
1	68	70	12	69ea591fcf543c4bbc9a8a40
1	69	71	12	69ea591fcf543c4bbc9a8a40
1	70	81	12	69ea591fcf543c4bbc9a8a40
1	71	82	12	69ea591fcf543c4bbc9a8a40
1	72	83	12	69ea591fcf543c4bbc9a8a40
1	73	84	12	69ea591fcf543c4bbc9a8a40
1	74	85	12	69ea591fcf543c4bbc9a8a40
1	75	86	12	69ea591fcf543c4bbc9a8a40
1	76	87	12	69ea591fcf543c4bbc9a8a40
1	77	93	11	69e9f51f45eb900ba53c481a
1	78	94	11	69e9f51f45eb900ba53c481a
1	79	95	11	69e9f51f45eb900ba53c481a
1	80	98	11	69e9f51f45eb900ba53c481a
1	81	99	11	69e9f51f45eb900ba53c481a
1	84	102	11	69e9f51f45eb900ba53c481a
2	84	103	20	69f4fd1e389410dcee44088a
1	85	104	11	69e9f51f45eb900ba53c481a
2	85	105	20	69f4fd1e389410dcee44088a
1	86	106	11	69e9f51f45eb900ba53c481a
2	86	107	20	69f4fd1e389410dcee44088a
1	87	109	25	69ed295ce1378c677f721c02
1	88	110	25	69ed295ce1378c677f721c02
\.


--
-- Data for Name: _products_v_version_quality; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._products_v_version_quality ("order", parent_id, value, id) FROM stdin;
1	36	antibiotic-free	71
2	36	organic	72
3	36	grass-fed	73
1	37	antibiotic-free	74
2	37	organic	75
3	37	grass-fed	76
1	38	antibiotic-free	77
2	38	organic	78
3	38	grass-fed	79
1	74	antibiotic-free	207
2	74	organic	208
3	74	grass-fed	209
1	75	antibiotic-free	210
2	75	organic	211
3	75	grass-fed	212
1	76	antibiotic-free	213
2	76	organic	214
3	76	grass-fed	215
1	77	halal	221
1	39	halal	95
1	40	halal	96
1	41	halal	97
1	42	halal	98
1	78	halal	222
1	79	halal	223
1	80	halal	226
1	81	halal	227
1	43	antibiotic-free	105
2	43	organic	106
3	43	grass-fed	107
1	44	antibiotic-free	108
2	44	organic	109
3	44	grass-fed	110
1	29	antibiotic-free	41
2	29	organic	42
3	29	grass-fed	43
1	30	antibiotic-free	44
2	30	organic	45
3	30	grass-fed	46
1	31	antibiotic-free	47
2	31	organic	48
3	31	grass-fed	49
1	32	antibiotic-free	50
2	32	organic	51
3	32	grass-fed	52
1	33	antibiotic-free	53
2	33	organic	54
3	33	grass-fed	55
1	45	antibiotic-free	111
2	45	organic	112
3	45	grass-fed	113
1	46	antibiotic-free	114
2	46	organic	115
3	46	grass-fed	116
1	84	halal	229
1	85	halal	230
1	34	antibiotic-free	65
2	34	organic	66
3	34	grass-fed	67
1	35	antibiotic-free	68
2	35	organic	69
3	35	grass-fed	70
1	48	antibiotic-free	125
1	49	antibiotic-free	126
1	50	antibiotic-free	127
1	51	antibiotic-free	128
1	52	halal	131
1	53	halal	132
1	54	antibiotic-free	135
1	55	antibiotic-free	136
1	56	antibiotic-free	137
1	57	antibiotic-free	138
1	58	antibiotic-free	140
1	59	antibiotic-free	141
1	60	antibiotic-free	142
1	61	halal	145
1	62	halal	146
1	63	antibiotic-free	147
1	64	antibiotic-free	148
1	66	halal	149
1	47	antibiotic-free	156
2	47	organic	157
3	47	grass-fed	158
1	67	antibiotic-free	159
2	67	organic	160
3	67	grass-fed	161
1	68	antibiotic-free	162
2	68	organic	163
3	68	grass-fed	164
1	69	antibiotic-free	165
2	69	organic	166
3	69	grass-fed	167
1	70	antibiotic-free	195
2	70	organic	196
3	70	grass-fed	197
1	71	antibiotic-free	198
2	71	organic	199
3	71	grass-fed	200
1	72	antibiotic-free	201
2	72	organic	202
3	72	grass-fed	203
1	73	antibiotic-free	204
2	73	organic	205
3	73	grass-fed	206
1	86	halal	231
1	87	antibiotic-free	233
1	88	antibiotic-free	234
\.


--
-- Data for Name: _products_v_version_reviews; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._products_v_version_reviews (_order, _parent_id, id, name, role, body, rating, _uuid) FROM stdin;
\.


--
-- Data for Name: _products_v_version_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._products_v_version_tags ("order", parent_id, value, id) FROM stdin;
1	29	top-rated	12
1	30	top-rated	13
1	31	top-rated	14
1	32	top-rated	15
1	33	top-rated	16
1	34	top-rated	20
1	35	top-rated	21
1	36	top-rated	22
1	37	top-rated	23
1	38	top-rated	24
1	39	top-rated	41
1	40	top-rated	42
1	41	top-rated	43
1	42	top-rated	44
1	43	top-rated	47
1	44	top-rated	48
1	45	top-rated	49
1	46	top-rated	50
1	48	best-seller	53
1	49	best-seller	54
1	50	best-seller	55
1	51	best-seller	56
1	52	top-rated	59
1	53	top-rated	60
1	54	best-seller	63
1	55	best-seller	64
1	56	best-seller	65
1	57	best-seller	66
1	58	best-seller	68
1	59	best-seller	69
1	60	best-seller	70
1	61	top-rated	73
1	62	top-rated	74
1	63	best-seller	75
1	64	best-seller	76
1	66	top-rated	77
1	47	top-rated	80
1	67	top-rated	81
1	68	top-rated	82
1	69	top-rated	83
1	70	top-rated	93
1	71	top-rated	94
1	72	top-rated	95
1	73	top-rated	96
1	74	top-rated	97
1	75	top-rated	98
1	76	top-rated	99
1	77	top-rated	105
1	78	top-rated	106
1	79	top-rated	107
1	80	top-rated	110
1	81	top-rated	111
1	84	top-rated	113
1	85	top-rated	114
1	86	top-rated	115
1	87	best-seller	117
1	88	best-seller	118
\.


--
-- Data for Name: _products_v_version_whats_inside; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._products_v_version_whats_inside (_order, _parent_id, id, quantity, label, _uuid) FROM stdin;
1	41	162	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	41	163	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	41	164	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	41	165	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	42	166	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	42	167	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	42	168	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	42	169	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	16	13	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	16	14	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	16	15	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	16	16	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	17	17	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	17	18	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	17	19	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	17	20	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	52	178	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	52	179	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	52	180	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	52	181	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	53	182	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	53	183	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	53	184	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	53	185	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	18	33	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	18	34	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	18	35	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	18	36	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	19	37	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	19	38	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	19	39	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	19	40	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	20	41	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	20	42	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	20	43	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	20	44	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	21	45	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	21	46	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	21	47	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	21	48	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	22	49	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	22	50	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	22	51	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	22	52	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	23	53	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	23	54	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	23	55	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	23	56	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	24	57	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	24	58	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	24	59	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	24	60	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	25	73	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	25	74	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	25	75	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	25	76	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	26	77	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	26	78	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	26	79	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	26	80	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	27	81	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	27	82	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	27	83	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	27	84	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	28	85	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	28	86	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	28	87	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	28	88	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	39	154	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	39	155	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	39	156	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	39	157	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	40	158	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	40	159	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	40	160	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	40	161	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	61	194	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	61	195	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	61	196	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	61	197	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	62	198	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	62	199	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	62	200	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	62	201	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	66	202	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	66	203	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	66	204	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	66	205	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	77	226	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	77	227	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	77	228	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	77	229	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	78	230	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	78	231	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	78	232	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	78	233	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	79	234	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	79	235	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	79	236	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	79	237	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	80	246	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	80	247	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	80	248	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	80	249	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	81	250	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	81	251	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	81	252	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	81	253	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	84	258	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	84	259	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	84	260	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	84	261	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	85	262	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	85	263	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	85	264	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	85	265	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
1	86	266	2x 	Center-Cut Filet Mignon (8oz)	69e9d8cfa478f0ac2aac27b2
2	86	267	2x 	Dry-Aged Bone-in Ribeye (22oz)	69e9d8eea478f0ac2aac27b4
3	86	268	1x 	 Signature Wagyu Picanha (16oz)	69e9d900a478f0ac2aac27b6
4	86	269	1x 	Atelier Finishing Salt Blend	69e9d90da478f0ac2aac27b8
\.


--
-- Data for Name: _variants_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._variants_v (id, parent_id, version_title, version_product_id, version_inventory, version_price_in_u_s_d_enabled, version_price_in_u_s_d, version_updated_at, version_created_at, version_deleted_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
\.


--
-- Data for Name: _variants_v_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._variants_v_rels (id, "order", parent_id, path, variant_options_id) FROM stdin;
\.


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.addresses (id, customer_id, title, first_name, last_name, company, address_line1, address_line2, city, state, postal_code, country, phone, updated_at, created_at) FROM stdin;
1	\N	Mr.	Suren	Fernando	MData	Galle Road		Qubec		J6Q  2ed	CA	+94762797637	2026-04-25 13:47:14.632+05:30	2026-04-23 23:59:58.155+05:30
2	\N	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	2026-04-25 13:48:44.711+05:30	2026-04-25 13:48:44.71+05:30
3	\N	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	2026-04-28 20:42:33.656+05:30	2026-04-28 20:42:33.656+05:30
\.


--
-- Data for Name: branch_holidays; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.branch_holidays (id, title, branch_id, date, message, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: branch_holidays_service_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.branch_holidays_service_types ("order", parent_id, value, id) FROM stdin;
\.


--
-- Data for Name: branch_inventory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.branch_inventory (id, branch_id, product_id, sku, manage_stock, stock_quantity, stock_status, allow_backorders, updated_at, created_at, max_pickup_orders_per_day, max_delivery_orders_per_day) FROM stdin;
2	1	1	\N	t	223	instock	f	2026-04-29 00:04:21.107+05:30	2026-04-27 12:03:45.812+05:30	\N	\N
1	1	4	\N	t	475	instock	f	2026-05-01 23:13:11.861+05:30	2026-04-26 00:29:43.372+05:30	\N	\N
\.


--
-- Data for Name: branches; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.branches (id, name, code, address, phone, email, is_active, opening_hours, holiday_message, updated_at, created_at) FROM stdin;
1	Main Butcher Shop	PC01	Butcher Shop, Canada	+94762797637	butcher@gmail.com	t	\N	This branch is closed today.	2026-04-26 01:57:22.294+05:30	2026-04-26 00:29:08.652+05:30
\.


--
-- Data for Name: cart_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_settings (id, enabled, timer_seconds, warning_seconds, extend_seconds, modal_title, modal_message, confirm_button_label, extend_button_label, footer_text, updated_at, created_at) FROM stdin;
1	t	120	30	30	Preserving Freshness	Our artisanal selections are limited. Your cart is about to be cleared to ensure other patrons can enjoy these prime cuts.	Clear Cart	Add 30 sec more	 	2026-04-29 01:37:30.987+05:30	2026-04-26 00:13:46.253+05:30
\.


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.carts (id, secret, customer_id, purchased_at, subtotal, currency, updated_at, created_at) FROM stdin;
3	a188b59390426f5c1be6a096286e67fef3baccf9	\N	\N	0	USD	2026-04-26 00:23:11.718+05:30	2026-04-26 00:23:11.068+05:30
4	5079d861fe3928d9becbd84c302390c86526fca5	\N	\N	0	USD	2026-04-26 00:26:48.931+05:30	2026-04-26 00:26:48.434+05:30
5	56c7b4fb3eed252082123096fba734017f1f6807	\N	\N	12000	USD	2026-04-26 00:33:11.169+05:30	2026-04-26 00:33:11.169+05:30
9	74778df6ee80696decbf92af5ce20023bc0c7550	\N	\N	0	USD	2026-05-01 21:49:15.433+05:30	2026-05-01 21:47:13.945+05:30
6	0a3d2dacad6f56548b7944ef4f83c7e07fe8fe66	\N	\N	0	USD	2026-04-26 02:12:07.731+05:30	2026-04-26 02:11:04.775+05:30
8	17ccc7dbd7f39f3505b95641f1ffcf743f4b60a0	\N	\N	0	USD	2026-04-29 19:27:03.868+05:30	2026-04-29 12:39:17.392+05:30
7	06eea26b03b9b5457ef40768793df33106591452	\N	\N	9900	USD	2026-04-28 20:40:59.469+05:30	2026-04-28 20:37:30.467+05:30
2	23117606d5a0016c9e7dd1d84f2990b9e5e0c137	\N	\N	0	USD	2026-04-26 00:19:08.825+05:30	2026-04-26 00:19:08.218+05:30
10	b94ff20bc4a757ea85cde8bd8348bbb212014536	\N	2026-05-18 15:29:22.694+05:30	0	USD	2026-05-18 15:29:29.079+05:30	2026-05-18 15:26:43.429+05:30
11	20f3476e59f8aacd02b932acee43174ea347ad02	\N	\N	0	USD	2026-05-28 01:09:20.405+05:30	2026-05-28 01:02:29.331+05:30
12	a03fc32d962336054d782f49e6daf923b079db25	\N	\N	0	USD	2026-05-29 20:14:50.245+05:30	2026-05-29 20:12:46.089+05:30
1	\N	1	2026-05-30 15:42:35.971+05:30	0	USD	2026-05-30 15:42:36.354+05:30	2026-04-23 23:58:43.887+05:30
\.


--
-- Data for Name: carts_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.carts_items (_order, _parent_id, id, product_id, variant_id, quantity) FROM stdin;
1	7	69f0ce0366101e42b82815c7	1	\N	1
1	5	69ed0fef70ac5f35508fc122	4	\N	1
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categories (id, title, generate_slug, slug, updated_at, created_at) FROM stdin;
1	Fresh Meat Products	f	resh-meat-products	2026-04-23 21:21:00.146+05:30	2026-04-22 19:04:43.351+05:30
\.


--
-- Data for Name: cut_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cut_types (id, name, slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: flavors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.flavors (id, name, slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: footer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer (id, updated_at, created_at, brand_name, description, contact_email, contact_phone, address, bottom_bar_legal_text, bottom_bar_location_text, bottom_bar_credit_label, bottom_bar_credit_url, logo_id) FROM stdin;
1	2026-06-09 11:45:33.298+05:30	2026-04-24 02:06:06.696+05:30	The Butcher's Craft	Fresh, high-quality meats delivered daily. We provide premium cuts, ready-to-cook selections, and trusted service for your family meals and special occasions.	orders@butcherscraft.com	+65 987120	123 Queen Street West\nSuite 456\nToronto\nM5H 2N2\nCanada	All rights reserved.	Delivering across Toronto & suburbs	Built by Butchersonline.co	https://butchersonline.co	\N
\.


--
-- Data for Name: footer_nav_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	69ea8252d1fab06ca43647e3	custom	\N	/shop	Shop
2	1	6a27af720b3d2e2776e7a7c1	custom	\N	/how-it-works	How It Works
3	1	69ea8262d1fab06ca43647e5	custom	\N	/contact-us	Contact
4	1	69ea8270d1fab06ca43647e7	custom	\N	/about-us	About Us
\.


--
-- Data for Name: footer_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer_rels (id, "order", parent_id, path, pages_id) FROM stdin;
\.


--
-- Data for Name: footer_social_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer_social_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	69ea8281d1fab06ca43647e9	custom	\N	/	Y
2	1	69ea8298d1fab06ca43647eb	custom	\N	/	F
3	1	69ea82a0d1fab06ca43647ed	custom	\N	/	T
\.


--
-- Data for Name: form_submissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.form_submissions (id, form_id, updated_at, created_at) FROM stdin;
1	1	2026-04-28 00:27:02.135+05:30	2026-04-28 00:27:02.133+05:30
\.


--
-- Data for Name: form_submissions_submission_data; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.form_submissions_submission_data (_order, _parent_id, id, field, value) FROM stdin;
1	1	69efb17ee6263433243670ae	full-name	Suren Fernando
2	1	69efb17ee6263433243670af	EmailAddress	suren@empowerdigitaldata.com
3	1	69efb17ee6263433243670b0	Subject	Test
4	1	69efb17ee6263433243670b1	Message	test msg
\.


--
-- Data for Name: forms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms (id, title, submit_button_label, confirmation_type, confirmation_message, redirect_url, updated_at, created_at) FROM stdin;
1	Contact Us	Send Messege	message	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Thank you for reaching out!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We’ve received your message and our team will get back to you within 24 hours. If your inquiry is urgent, feel free to contact us directly via phone.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We appreciate you taking the time to connect with us.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	\N	2026-04-27 19:35:11.9+05:30	2026-04-27 19:35:11.9+05:30
\.


--
-- Data for Name: forms_blocks_checkbox; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_checkbox (_order, _parent_id, _path, id, name, label, width, required, default_value, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_country; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_country (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_email; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_email (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_message; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_message (_order, _parent_id, _path, id, message, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_number; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_number (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_select; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_select (_order, _parent_id, _path, id, name, label, width, default_value, placeholder, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_select_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_select_options (_order, _parent_id, id, label, value) FROM stdin;
\.


--
-- Data for Name: forms_blocks_state; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_state (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_text; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_text (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
1	1	fields	69ef69c1be15b1501930043e	full-name	Full Name	\N	\N	t	\N
2	1	fields	69ef6c6ebe15b15019300440	EmailAddress	Email Address	\N	\N	t	\N
3	1	fields	69ef6cb3be15b15019300446	Subject	Subject	\N	\N	t	\N
\.


--
-- Data for Name: forms_blocks_textarea; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_textarea (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
4	1	fields	69ef6c8abe15b15019300444	Message	Message	\N	\N	\N	\N
\.


--
-- Data for Name: forms_emails; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_emails (_order, _parent_id, id, email_to, cc, bcc, reply_to, email_from, subject, message) FROM stdin;
\.


--
-- Data for Name: fulfillment_schedules; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_schedules (id, name, is_active, updated_at, created_at, service_type, shipping_charge) FROM stdin;
2	Monday Only	t	2026-05-02 01:37:16.536+05:30	2026-04-26 21:08:44.094+05:30	delivery	25
\.


--
-- Data for Name: fulfillment_schedules_available_dates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_schedules_available_dates (_order, _parent_id, id, date) FROM stdin;
1	2	69ee3184e3fc72371c57bfe7	2026-04-29 17:00:00+05:30
2	2	69ee3184e3fc72371c57bfe8	2026-04-30 17:00:00+05:30
\.


--
-- Data for Name: fulfillment_schedules_postal_codes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_schedules_postal_codes (_order, _parent_id, id, code) FROM stdin;
1	2	69ee3184e3fc72371c57bfe5	J7K
2	2	69f507edf9653789cf2df3ce	G7E
\.


--
-- Data for Name: fulfillment_schedules_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_schedules_rels (id, "order", parent_id, path, branches_id, products_id) FROM stdin;
13	1	2	branch	1	\N
14	1	2	product	\N	1
15	2	2	product	\N	4
16	3	2	product	\N	3
\.


--
-- Data for Name: fulfillment_schedules_time_slots; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_schedules_time_slots (_order, _parent_id, id, label) FROM stdin;
\.


--
-- Data for Name: fulfillment_schedules_weekly_days; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_schedules_weekly_days ("order", parent_id, value, id) FROM stdin;
1	2	monday	44
\.


--
-- Data for Name: header; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.header (id, updated_at, created_at, logo_id) FROM stdin;
1	2026-06-09 11:30:28.151+05:30	2026-04-22 20:03:28.078+05:30	\N
\.


--
-- Data for Name: header_nav_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.header_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	69e8dc2169640a13eacf7c16	custom	\N	/	Home
2	1	69e8dc4d69640a13eacf7c1a	custom	\N	/shop	Shop
3	1	6a27a14fcdc3973526ace251	custom	\N	/how-it-works	How It works
4	1	69e8dc5d69640a13eacf7c1c	reference	\N	/about-us	About Us
5	1	69ef695b306d4b4d94d78bd8	reference	\N	/contact-us	Contact
\.


--
-- Data for Name: header_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.header_rels (id, "order", parent_id, path, pages_id) FROM stdin;
44	\N	1	navItems.1.link.reference	3
45	\N	1	navItems.2.link.reference	2
46	\N	1	navItems.3.link.reference	2
47	\N	1	navItems.4.link.reference	4
\.


--
-- Data for Name: meat_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.meat_types (id, name, slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.media (id, alt, caption, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y) FROM stdin;
1	m-1	\N	2026-04-22 21:33:30.532+05:30	2026-04-22 21:33:30.531+05:30	/api/media/file/meat_01.png	\N	meat_01.png	image/png	404349	512	512	50	50
2	m-1	\N	2026-04-22 21:45:21.87+05:30	2026-04-22 21:45:21.87+05:30	/api/media/file/meat_01-1.png	\N	meat_01-1.png	image/png	404349	512	512	50	50
3	m-2	\N	2026-04-22 23:27:37.912+05:30	2026-04-22 23:27:37.912+05:30	/api/media/file/raw-meats-with-spices-utensils-rustic-cutting-board-dark-wood-top-view-ai-generative.jpg	\N	raw-meats-with-spices-utensils-rustic-cutting-board-dark-wood-top-view-ai-generative.jpg	image/jpeg	16019676	6144	4096	50	50
4	m-3	\N	2026-04-22 23:30:29.398+05:30	2026-04-22 23:30:29.398+05:30	/api/media/file/surreal-food-online-content-creation.jpg	\N	surreal-food-online-content-creation.jpg	image/jpeg	13107403	8000	5474	50	50
7	m-6	\N	2026-04-23 00:54:55.642+05:30	2026-04-23 00:54:55.642+05:30	/api/media/file/1640801150692-POULARDE-LANDES-REPAS.jpg	\N	1640801150692-POULARDE-LANDES-REPAS.jpg	image/jpeg	84528	750	412	50	50
8	m-7	\N	2026-04-23 01:12:42.506+05:30	2026-04-23 01:12:42.506+05:30	/api/media/file/unnamed.png	\N	unnamed.png	image/png	472794	512	512	50	50
10	m-8	\N	2026-04-23 16:00:28.862+05:30	2026-04-23 16:00:28.862+05:30	/api/media/file/44285.jpg	\N	44285.jpg	image/jpeg	1966121	2000	1333	50	50
12	m-10	\N	2026-04-23 23:09:31.626+05:30	2026-04-23 23:09:31.626+05:30	/api/media/file/5092.jpg	\N	5092.jpg	image/jpeg	3873178	1604	2000	50	50
13	m-9	\N	2026-04-26 02:21:52.13+05:30	2026-04-26 02:21:52.13+05:30	/api/media/file/37844.jpg	\N	37844.jpg	image/jpeg	2163063	2000	1335	50	50
14	header-logo	\N	2026-04-27 16:00:10.202+05:30	2026-04-27 16:00:10.199+05:30	/api/media/file/ChatGPT%20Image%20Apr%2027%2C%202026%2C%2003_59_48%20PM.png	\N	ChatGPT Image Apr 27, 2026, 03_59_48 PM.png	image/png	2190112	1536	1024	50	50
15	footer-logo	\N	2026-04-27 16:00:32.215+05:30	2026-04-27 16:00:32.215+05:30	/api/media/file/ChatGPT%20Image%20Apr%2027%2C%202026%2C%2003_59_48%20PM-1.png	\N	ChatGPT Image Apr 27, 2026, 03_59_48 PM-1.png	image/png	2190112	1536	1024	50	50
18	home_media	\N	2026-04-29 21:11:23.418+05:30	2026-04-29 21:11:23.418+05:30	/api/media/file/8477331-hd_1920_1080_24fps.mp4	\N	8477331-hd_1920_1080_24fps.mp4	video/mp4	2774357	\N	\N	\N	\N
19	home_history	\N	2026-04-29 21:33:51.883+05:30	2026-04-29 21:33:51.883+05:30	/api/media/file/63.jpg	\N	63.jpg	image/jpeg	1239725	2000	1429	50	50
21	8477331-hd_1920_1080_24fps.mp4	\N	2026-05-18 03:06:32.889+05:30	2026-05-18 03:06:31.441+05:30	/api/media/file/8477331-hd_1920_1080_24fps-1.mp4	\N	8477331-hd_1920_1080_24fps-1.mp4	video/mp4	2774357	\N	\N	\N	\N
5	m-4	\N	2026-05-18 03:08:38.659+05:30	2026-04-23 00:51:20.332+05:30	/api/media/file/1640801150692-POULARDE-LANDES-REPAS-1.jpg	\N	1640801150692-POULARDE-LANDES-REPAS-1.jpg	image/jpeg	84528	750	412	50	50
6	m-5	\N	2026-05-18 03:09:07.828+05:30	2026-04-23 00:52:29.079+05:30	/api/media/file/22196-1.jpg	\N	22196-1.jpg	image/jpeg	786981	2000	1143	50	50
22	ndimg-headerabout02-01.jpg	\N	2026-05-18 03:10:20.215+05:30	2026-05-18 03:10:19.116+05:30	/api/media/file/ndimg-headerabout02-01.jpg	\N	ndimg-headerabout02-01.jpg	image/jpeg	228938	1920	1280	50	50
11	m-9	\N	2026-05-19 01:23:02.23+05:30	2026-04-23 16:02:36.141+05:30	/api/media/file/2148610985-1.jpg	\N	2148610985-1.jpg	image/jpeg	3968215	1966	2000	50	50
20	45961	\N	2026-05-19 01:23:45.558+05:30	2026-05-02 00:51:20.076+05:30	/api/media/file/45961-1.jpg	\N	45961-1.jpg	image/jpeg	2614016	1333	2000	50	50
25	37844.jpg	\N	2026-05-19 02:05:42.452+05:30	2026-05-19 02:05:41.111+05:30	/api/media/file/37844-1.jpg	\N	37844-1.jpg	image/jpeg	2163063	2000	1335	50	50
17	a-u	\N	2026-05-19 02:07:47.512+05:30	2026-04-29 19:47:17.213+05:30	/api/media/file/tasty-beef-steak-with-salt-pepper-wooden-cutting-board-chef-decorating-meat-with-rosemary-smiling-man-with-bearded-face-gloves-tattoo-his-arm-background-1.jpg	\N	tasty-beef-steak-with-salt-pepper-wooden-cutting-board-chef-decorating-meat-with-rosemary-smiling-man-with-bearded-face-gloves-tattoo-his-arm-background-1.jpg	image/jpeg	14426564	5760	3840	50	50
9	m-8	\N	2026-05-19 02:08:42.895+05:30	2026-04-23 15:18:02.134+05:30	/api/media/file/1068-1.jpg	\N	1068-1.jpg	image/jpeg	1575826	2000	1333	50	50
16	screen	\N	2026-05-19 02:10:03.227+05:30	2026-04-27 19:16:56.714+05:30	/api/media/file/screen-1.png	\N	screen-1.png	image/png	1466712	1024	1024	50	50
28	2_footer.png	\N	2026-05-19 14:18:52.766+05:30	2026-05-19 14:18:51.398+05:30	/api/media/file/2_footer.png	\N	2_footer.png	image/png	2409788	1536	1024	50	50
23	63.jpg	\N	2026-05-25 10:29:44.941+05:30	2026-05-18 03:10:38.846+05:30	/api/media/file/7afd928b-ae29-4ec0-9ffe-5424e87f7f2f.png	\N	7afd928b-ae29-4ec0-9ffe-5424e87f7f2f.png	image/png	1406378	1920	1371	50	50
29	option_1.mp4	\N	2026-05-25 10:30:53.148+05:30	2026-05-25 10:30:51.664+05:30	/api/media/file/option_1.mp4	\N	option_1.mp4	video/mp4	5015102	\N	\N	\N	\N
30	2253abf2-f5fe-44a1-9126-1098a7a8b2ce.png	\N	2026-05-30 14:02:54.709+05:30	2026-05-30 14:02:48.991+05:30	/api/media/file/2253abf2-f5fe-44a1-9126-1098a7a8b2ce.png	\N	2253abf2-f5fe-44a1-9126-1098a7a8b2ce.png	image/png	2329740	1536	1024	50	50
31	ChatGPT Image May 30, 2026, 02_03_28 PM.png	\N	2026-05-30 14:04:50.328+05:30	2026-05-30 14:04:44.612+05:30	/api/media/file/ChatGPT%20Image%20May%2030%2C%202026%2C%2002_03_28%20PM.png	\N	ChatGPT Image May 30, 2026, 02_03_28 PM.png	image/png	2190925	1536	1024	50	50
32	7b975352-1514-4efd-aeeb-9ba311b0f62c.png	\N	2026-05-30 14:07:38.051+05:30	2026-05-30 14:07:31.226+05:30	/api/media/file/7b975352-1514-4efd-aeeb-9ba311b0f62c.png	\N	7b975352-1514-4efd-aeeb-9ba311b0f62c.png	image/png	2257504	1536	1024	50	50
33	73de5891-f010-4cd1-9a38-dad72ac997e7.png	\N	2026-05-30 14:23:16.689+05:30	2026-05-30 14:23:10.543+05:30	/api/media/file/73de5891-f010-4cd1-9a38-dad72ac997e7.png	\N	73de5891-f010-4cd1-9a38-dad72ac997e7.png	image/png	2229157	1536	1024	50	50
35	6fc7eb6b-e756-44ac-8397-579ba1fc9138.png	\N	2026-06-03 23:54:46.995+05:30	2026-06-03 23:54:38.719+05:30	/api/media/file/6fc7eb6b-e756-44ac-8397-579ba1fc9138.png	\N	6fc7eb6b-e756-44ac-8397-579ba1fc9138.png	image/png	2892356	1536	1024	50	50
34	Artisan butcher shop interior with premium cuts on display	\N	2026-06-04 00:21:58.282+05:30	2026-06-03 23:38:54.188+05:30	/api/media/file/73de5891-f010-4cd1-9a38-dad72ac997e7-1.png	\N	73de5891-f010-4cd1-9a38-dad72ac997e7-1.png	image/png	2229157	1536	1024	50	50
36	2a23b2c4-94d4-4b23-a190-98a7b7b8d973.png	\N	2026-06-04 00:23:26.536+05:30	2026-06-04 00:23:23.618+05:30	/api/media/file/2a23b2c4-94d4-4b23-a190-98a7b7b8d973.png	\N	2a23b2c4-94d4-4b23-a190-98a7b7b8d973.png	image/png	2226333	1691	930	50	50
37	420360a5-ce79-4113-b239-4f95e94f1217.png	\N	2026-06-09 10:51:46.062+05:30	2026-06-09 10:51:38.324+05:30	/api/media/file/420360a5-ce79-4113-b239-4f95e94f1217.png	\N	420360a5-ce79-4113-b239-4f95e94f1217.png	image/png	2249023	1402	1122	50	50
38	cfbbaa57-ad49-499b-93e7-21036d496b76.png	\N	2026-06-09 10:52:23.537+05:30	2026-06-09 10:52:17.153+05:30	/api/media/file/cfbbaa57-ad49-499b-93e7-21036d496b76.png	\N	cfbbaa57-ad49-499b-93e7-21036d496b76.png	image/png	1976636	1717	916	50	50
39	75983ced-790e-4be6-a47a-59103c2afc02.png	\N	2026-06-09 10:53:08.215+05:30	2026-06-09 10:53:03.207+05:30	/api/media/file/75983ced-790e-4be6-a47a-59103c2afc02.png	\N	75983ced-790e-4be6-a47a-59103c2afc02.png	image/png	2042386	1402	1122	50	50
40	68b3809e-45bc-4cf4-b352-f1e58a89f707.png	\N	2026-06-09 10:54:05.152+05:30	2026-06-09 10:53:59.999+05:30	/api/media/file/68b3809e-45bc-4cf4-b352-f1e58a89f707.png	\N	68b3809e-45bc-4cf4-b352-f1e58a89f707.png	image/png	1932391	1402	1122	50	50
41	fe33383c-33b8-463f-88d6-a4f10a1067eb.png	\N	2026-06-09 11:25:08.054+05:30	2026-06-09 11:25:06.92+05:30	/api/media/file/fe33383c-33b8-463f-88d6-a4f10a1067eb.png	\N	fe33383c-33b8-463f-88d6-a4f10a1067eb.png	image/png	145621	1453	432	50	50
42	0a421782-5928-469e-9de4-77a86f0f1631.png	\N	2026-06-09 11:39:39.506+05:30	2026-06-09 11:39:30.904+05:30	/api/media/file/0a421782-5928-469e-9de4-77a86f0f1631.png	\N	0a421782-5928-469e-9de4-77a86f0f1631.png	image/png	2437297	1740	904	50	50
43	ddf76648-d999-4ce4-944b-05ce05481a8a.png	\N	2026-06-09 11:49:52.436+05:30	2026-06-09 11:49:44.211+05:30	/api/media/file/ddf76648-d999-4ce4-944b-05ce05481a8a.png	\N	ddf76648-d999-4ce4-944b-05ce05481a8a.png	image/png	2462443	1740	904	50	50
\.


--
-- Data for Name: newsletter_promo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.newsletter_promo (id, image_id, updated_at, created_at) FROM stdin;
1	35	2026-06-03 23:55:14.59+05:30	2026-06-03 23:55:14.59+05:30
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orders (id, shipping_address_title, shipping_address_first_name, shipping_address_last_name, shipping_address_company, shipping_address_address_line1, shipping_address_address_line2, shipping_address_city, shipping_address_state, shipping_address_postal_code, shipping_address_country, shipping_address_phone, customer_id, customer_email, status, amount, currency, access_token, updated_at, created_at, fulfillment_branch_id, fulfillment_service_type, fulfillment_date, fulfillment_time_slot, fulfillment_postal_code, fulfillment_notes, fulfillment_shipping_charge, purchase_type, stripe_subscription_i_d, inventory_reduced) FROM stdin;
1	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	e099e320-d593-4809-ba94-ea7009a1a0b8	2026-04-25 13:55:48.917+05:30	2026-04-25 13:55:48.916+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
2	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	a8f56961-5dfb-4c9f-ad8f-43daeecf98eb	2026-04-25 16:41:23.56+05:30	2026-04-25 16:41:23.559+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
3	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	15000	USD	a53762ca-0acb-4e68-b57d-2166ebdaf04d	2026-04-25 17:02:37.446+05:30	2026-04-25 17:02:37.446+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
4	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	15000	USD	1cb52a1a-47eb-4e83-b432-a71ba67d95cc	2026-04-26 12:59:01.797+05:30	2026-04-26 12:59:01.796+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
5	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	15000	USD	6bd5c4ac-883b-4a17-bb31-f7d4a46d1db9	2026-04-26 19:54:53.389+05:30	2026-04-26 19:54:53.388+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
6	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	15000	USD	ff452001-77f9-4cc1-9377-041d6809d352	2026-04-26 21:19:09+05:30	2026-04-26 21:19:09+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
7	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	11000	USD	fa490322-f9fb-409a-9b80-9da8ddcc86e4	2026-04-26 21:23:30.516+05:30	2026-04-26 21:23:30.516+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
8	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	26000	USD	fdc8f81f-09fa-4158-966d-1f8ddf2add06	2026-04-26 21:24:04.253+05:30	2026-04-26 21:24:04.253+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
9	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	11000	USD	5fbb99c8-0c43-48fc-a4af-d60609f437ff	2026-04-26 21:29:30.702+05:30	2026-04-26 21:29:30.701+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
10	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	15000	USD	1a570766-a4ff-4b2f-aa00-b57eb01253af	2026-04-26 23:49:31.866+05:30	2026-04-26 23:49:31.866+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
11	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	121000	USD	0035f68a-2df6-40a3-8a2c-3be313fe8e15	2026-04-27 00:13:29.393+05:30	2026-04-27 00:13:29.392+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
12	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	11000	USD	53d668b6-b480-4638-8497-a7ddfdd75331	2026-04-27 00:52:50.994+05:30	2026-04-27 00:52:50.993+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
13	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	11000	USD	608ee116-7698-4153-974f-8e200662dbeb	2026-04-27 01:34:45.658+05:30	2026-04-27 01:34:45.657+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
14	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	33900	USD	48f0dd19-b46b-4f97-90c1-0c49f404634a	2026-04-27 14:40:52.766+05:30	2026-04-27 14:40:52.765+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
15	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	48859d90-32a7-4f16-a2fc-50b0ab109a6a	2026-04-27 14:48:05.708+05:30	2026-04-27 14:48:05.708+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
16	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	f1028a2c-c3d3-418b-9915-dc961ce5d94f	2026-04-27 14:48:33.184+05:30	2026-04-27 14:48:33.184+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
17	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	47ff8be6-ce8a-4e26-bee6-a5e7df2f430b	2026-04-27 14:50:08.649+05:30	2026-04-27 14:50:08.649+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
18	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	86d71df6-ce2e-4552-adf0-268f1ca29898	2026-04-27 15:03:43.136+05:30	2026-04-27 15:03:43.136+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
19	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	f8b481f7-cddd-4663-a2b9-2c2fb4f52e71	2026-04-27 15:10:50.87+05:30	2026-04-27 15:10:50.87+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
20	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	ddb8038a-8854-4720-be20-354e80d47b7e	2026-04-27 15:23:12.341+05:30	2026-04-27 15:23:12.341+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
21	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	db8a565a-9116-4e8e-81b9-2d01236e89fe	2026-04-28 00:49:38.725+05:30	2026-04-28 00:49:35.675+05:30	1	delivery	2026-05-03 00:00:00+05:30		J7K132	\N	2500	monthly	\N	f
22	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	fade0552-125d-47e0-abbb-6f2646fe2c0e	2026-04-28 02:51:43.004+05:30	2026-04-28 02:51:43.004+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
80	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	10500	USD	562f9779-e4fd-4ecc-9231-dd794ff8b9ca	2026-04-29 22:04:32.017+05:30	2026-04-29 22:04:29.021+05:30	1	delivery	2026-05-04 00:00:00+05:30	\N	J7K123	\N	2500	monthly	\N	f
23	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	11fe27d1-f83c-4261-a505-5b0067333b1a	2026-04-28 02:56:14.481+05:30	2026-04-28 02:56:14.481+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
24	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	58626363-1eae-4fa1-b664-7df89c3fc244	2026-04-28 02:58:24.029+05:30	2026-04-28 02:58:24.028+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
25	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	78656043-4f28-48b6-9ce4-0ca49ea6995e	2026-04-28 03:01:51.21+05:30	2026-04-28 03:01:51.21+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
26	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	187d3b86-e2c4-4dd4-8d29-4a09cfe0d87b	2026-04-28 03:08:01.975+05:30	2026-04-28 03:08:01.975+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
27	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	c813a19e-5e39-4a1d-94de-99ec0076f6ca	2026-04-28 03:11:16.996+05:30	2026-04-28 03:11:16.995+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
82	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	completed	10500	USD	87bb6841-d8c1-4890-8eaf-2878bdb672b4	2026-05-01 23:29:49.746+05:30	2026-05-01 22:24:35.543+05:30	1	delivery	2026-05-04 00:00:00+05:30	\N	J7K123	\N	2500	monthly	\N	f
28	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	36000	USD	a3ef68b7-2eb8-45e1-b6eb-b93591f1b2ff	2026-04-28 03:21:04.846+05:30	2026-04-28 03:21:04.846+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
29	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	f892296b-6366-43bf-93ac-25433e2190b5	2026-04-28 03:22:22.36+05:30	2026-04-28 03:22:22.36+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
30	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	b6b78245-b109-4adc-9f48-29bd908d1444	2026-04-28 03:22:46.995+05:30	2026-04-28 03:22:46.995+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
31	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	f185dbe8-d0a2-4475-90e4-8314bd277e48	2026-04-28 03:34:14.476+05:30	2026-04-28 03:34:14.476+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
81	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12400	USD	c266a6fc-9f31-4acf-9e50-af32770569e1	2026-04-30 21:30:49.663+05:30	2026-04-30 21:30:45.067+05:30	1	delivery	2026-05-04 00:00:00+05:30	\N	J7K123	\N	2500	one_time	\N	f
83	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	26400	USD	5932bf71-f8b0-4d46-9787-f5e572f12299	2026-05-02 00:53:00.789+05:30	2026-05-02 00:53:00.316+05:30	1	delivery	2026-05-04 00:00:00+05:30	\N	J7K123	\N	2500	monthly	\N	f
32	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	0ca953fe-7a6d-4be9-9bfd-35d712536c2b	2026-04-28 03:41:41.582+05:30	2026-04-28 03:41:41.582+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
33	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	c2772d6d-e17e-4406-8fa2-2cf7f5a14c6a	2026-04-28 03:43:32.184+05:30	2026-04-28 03:43:32.183+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
34	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	d56af9e2-96a3-496e-8853-316f211c5eb4	2026-04-28 03:47:29.194+05:30	2026-04-28 03:47:29.194+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
35	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	dc510171-f37e-4435-ac9f-6ee351b7cf0a	2026-04-28 03:52:52.577+05:30	2026-04-28 03:52:52.576+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
36	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	2e9ca55e-66bb-411e-877a-9f909fb1923e	2026-04-28 03:58:13.204+05:30	2026-04-28 03:58:13.203+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
37	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	c4e20d04-365e-4340-9e82-0ec5dcde381f	2026-04-28 04:05:56.923+05:30	2026-04-28 04:05:56.923+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
38	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	05b89ee8-0ff1-4a05-96aa-d50ceae2d43b	2026-04-28 04:07:07.386+05:30	2026-04-28 04:07:07.385+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
39	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	8b583d89-6751-4a29-9904-4409845879f1	2026-04-28 04:10:35.541+05:30	2026-04-28 04:10:35.541+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
40	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	04d139d5-a7b9-4cbc-ada4-35b12de1fc56	2026-04-28 04:14:16.699+05:30	2026-04-28 04:14:16.699+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
41	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	e0421374-c878-4fa5-bb46-bd6b5da89c53	2026-04-28 04:15:57.875+05:30	2026-04-28 04:15:57.874+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
42	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	72a01814-c7b5-4008-987b-996cbe5d8b2f	2026-04-28 04:18:55.446+05:30	2026-04-28 04:18:55.445+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
43	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	e2136b42-3701-4b4e-9178-1a1955b0f9c7	2026-04-28 04:28:23.354+05:30	2026-04-28 04:28:23.354+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
84	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	14500	USD	6047095a-db6d-43bb-99d0-ceda200fe36b	2026-05-02 01:36:43.77+05:30	2026-05-02 01:36:42.788+05:30	1	delivery	2026-05-11 00:00:00+05:30	\N	J7K123	\N	2500	one_time	\N	f
44	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	50a7ae0b-e181-4d70-996e-8accdfb534c9	2026-04-28 14:18:41.507+05:30	2026-04-28 14:18:41.506+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
45	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	49e27e59-4ead-4da7-b2a7-ef08ab963717	2026-04-28 15:00:59.553+05:30	2026-04-28 15:00:59.552+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
46	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	ecf2c6a1-13ec-434c-9be5-410df42d67eb	2026-04-28 19:03:06.007+05:30	2026-04-28 19:03:06.006+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
47	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	c5eb6e33-3996-4007-9736-5ce46dc0b0f9	2026-04-28 19:10:54.72+05:30	2026-04-28 19:10:54.719+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
48	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	2bd596e4-47b7-4f16-b30a-02eb7af79f65	2026-04-28 19:34:00.161+05:30	2026-04-28 19:34:00.16+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
49	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	93cf0e94-d15b-4203-bad9-edef4a558be1	2026-04-28 19:51:31.056+05:30	2026-04-28 19:51:31.055+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
50	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	266f2190-f508-4769-8ff4-b39be1810dc8	2026-04-28 19:56:50.367+05:30	2026-04-28 19:56:50.367+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
51	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	9528dda9-bc3d-4b76-a731-0a0c9785e765	2026-04-28 20:03:09.449+05:30	2026-04-28 20:03:09.449+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
52	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	80372d63-f1f4-4c9f-904d-916482b23930	2026-04-28 20:21:55.225+05:30	2026-04-28 20:21:55.224+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
53	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	fc5befb8-c304-4a29-aac0-e9e6bad57c9e	2026-04-28 20:42:55.252+05:30	2026-04-28 20:42:55.251+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
54	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	ee09e667-ecc2-4337-bf91-04dcb4c1f652	2026-04-28 20:50:14.31+05:30	2026-04-28 20:50:14.31+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
55	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	a89b611c-aa35-4582-8933-64157af6a798	2026-04-28 21:06:51.287+05:30	2026-04-28 21:06:51.286+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
56	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	29d7137a-c097-4214-b72c-61044ccca927	2026-04-28 21:12:59.29+05:30	2026-04-28 21:12:59.289+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
57	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	5b9cb39e-813d-45db-bab7-d9cc2cad8d19	2026-04-28 21:14:43.186+05:30	2026-04-28 21:14:43.185+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
58	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	5507b173-bd1b-4a4c-b3a7-cbe6516fa3af	2026-04-28 21:18:20.02+05:30	2026-04-28 21:18:20.02+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
59	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	7478acbf-14be-40e5-9def-9b3984584d30	2026-04-28 21:29:04.237+05:30	2026-04-28 21:29:04.236+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
60	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	e26d057a-7b50-4050-bcff-ade1cc8260da	2026-04-28 21:43:45.703+05:30	2026-04-28 21:43:45.701+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
61	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	7de463e2-011f-46dc-98eb-551960733394	2026-04-28 23:14:02.242+05:30	2026-04-28 23:14:02.242+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
62	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	90f3c0e3-2f77-4185-881d-a1e7c81993df	2026-04-28 23:17:07.71+05:30	2026-04-28 23:17:07.71+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
63	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	a1891cae-8203-41ec-85e2-ce41971583cc	2026-04-28 23:19:23.485+05:30	2026-04-28 23:19:23.485+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
64	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	7545d8f8-d17e-49a9-9226-3d968bb86ca8	2026-04-28 23:25:13.776+05:30	2026-04-28 23:25:13.776+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
65	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	ed09523a-9a84-4950-8da6-64b8f06e8b54	2026-04-28 23:28:49.571+05:30	2026-04-28 23:28:49.571+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
66	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	ec22993d-dbaa-4c4b-9696-2034d5b01780	2026-04-28 23:47:01.101+05:30	2026-04-28 23:47:01.1+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
67	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	fa5c9e58-61ad-48ff-a6cf-6bda3883da9f	2026-04-29 00:02:57.025+05:30	2026-04-29 00:02:57.025+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
68	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	9900	USD	ef5c3ddd-3a7e-4a5d-aef1-4137d4d7243b	2026-04-29 00:04:19.931+05:30	2026-04-29 00:04:19.931+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
69	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	ffe3dc30-c613-44c2-ad5e-479decf157de	2026-04-29 00:17:36.37+05:30	2026-04-29 00:17:36.369+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
70	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	26eb3317-6dd3-4b85-b2a9-a75ac7930f5a	2026-04-29 00:24:47.507+05:30	2026-04-29 00:24:47.506+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
71	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	3ea50ad9-552e-4236-ba93-a4dab3c1f981	2026-04-29 00:31:08.235+05:30	2026-04-29 00:31:08.234+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
72	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	d42ea533-c1bf-44c0-a1fe-83e3e904c22a	2026-04-29 00:33:27.842+05:30	2026-04-29 00:33:27.842+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
73	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	a8a4893c-6e69-43d8-8755-331f89015ec4	2026-04-29 00:36:06.848+05:30	2026-04-29 00:36:06.848+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
74	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	cb0e78c8-9721-48c5-a51c-37e664c9dc65	2026-04-29 00:40:09.654+05:30	2026-04-29 00:40:09.654+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
75	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	dbefbd51-c5d4-4b4e-9755-b39cdc0f5840	2026-04-29 00:44:45.951+05:30	2026-04-29 00:44:45.948+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
76	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	12000	USD	9b444c09-c13d-405a-8f24-26199fe66374	2026-04-29 00:48:45.485+05:30	2026-04-29 00:48:45.484+05:30	\N	\N	\N	\N	\N	\N	\N	one_time	\N	f
77	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	7900	USD	e9eea760-5ea5-4f01-ae7e-9470bd5e7b51	2026-04-29 00:55:12.901+05:30	2026-04-29 00:55:11.523+05:30	1	pickup	2026-04-30 00:00:00+05:30	\N	\N	\N	0	monthly	\N	f
78	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	10500	USD	58d88faf-b107-4c2a-a7c8-ca08ade1cc9e	2026-04-29 01:41:59.553+05:30	2026-04-29 01:41:58.998+05:30	1	delivery	2026-05-03 00:00:00+05:30	\N	J7K13	\N	2500	monthly	\N	f
79	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	18500	USD	b7972c85-54a1-4c1d-9b41-6488e42876c6	2026-04-29 01:43:30.969+05:30	2026-04-29 01:43:30.679+05:30	1	delivery	2026-05-10 00:00:00+05:30	\N	J7K133	\N	2500	monthly	\N	f
85	\N	Kaushika	Rodrigo		Ydhhrh	Xgesgexge	New 	Nw	14253	US	2175514421	\N	rodrigokaushika@gmail.com	processing	18300	USD	63e365cc-39e2-4005-bab0-4b36e03d4a02	2026-05-18 15:29:29.355+05:30	2026-05-18 15:29:21.07+05:30	1	delivery	2026-05-25 05:30:00+05:30	\N	J7K	\N	2500	monthly	\N	f
86	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	1	\N	processing	26500	USD	05bf4805-51cc-4147-bf3a-968bab40f830	2026-05-30 15:42:38.485+05:30	2026-05-30 15:42:35.804+05:30	1	delivery	2026-06-01 00:00:00+05:30	\N	J7K	\N	2500	one_time	\N	f
\.


--
-- Data for Name: orders_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orders_items (_order, _parent_id, id, product_id, variant_id, quantity) FROM stdin;
1	1	69ea88671a0e3022f87547f5	4	\N	1
1	2	69eca13f8fec753b987ea250	4	\N	1
1	3	69eca36c8fec753b987ea251	3	\N	1
1	4	69edbe72668d103d30eb4a76	3	\N	1
1	5	69ee200c218a2b327400afa6	3	\N	1
1	6	69ee3368e3fc72371c57bfed	3	\N	1
1	7	69ee34e3e3fc72371c57bfee	1	\N	1
1	8	69ee3504e3fc72371c57bfef	1	\N	1
2	8	69ee3508e3fc72371c57bff0	3	\N	1
1	9	69ee35bde3fc72371c57bff1	1	\N	1
1	10	69ee56dee3fc72371c57bff5	3	\N	1
1	11	69ee5ca4e3fc72371c57bff6	1	\N	11
1	12	69ee646a6cdd2c0fb48e3bed	1	\N	1
1	13	69ee6fc2f9e83a38dc51c6b4	1	\N	1
1	14	69ef276c761ce0055c9a1b68	4	\N	2
2	14	69ef27fa761ce0055c9a1b6a	1	\N	1
1	15	69ef2911761ce0055c9a1b6b	4	\N	1
1	16	69ef29db761ce0055c9a1b6c	4	\N	1
1	17	69ef2a2b761ce0055c9a1b6d	4	\N	1
1	18	69ef2d40761ce0055c9a1b6e	4	\N	1
1	19	69ef2e5e761ce0055c9a1b6f	4	\N	1
1	20	69ef31e7761ce0055c9a1b70	4	\N	1
1	21	69efb6a5e6263433243670b2	4	\N	1
1	22	69efd346e6263433243670b5	1	\N	1
1	23	69efd45a9216d127bc1c6fd8	4	\N	1
1	24	69efd4de31348c37ac6a387c	4	\N	1
1	25	69efd5b388a87a4c3463a595	4	\N	1
1	26	69efd726f6503853401d6186	4	\N	1
1	27	69efd7ec1e4f372b7c6ccc7b	4	\N	1
1	28	69efd9f6ac6d59191817d6ba	4	\N	3
1	29	69efda84ac6d59191817d6bb	1	\N	1
1	30	69efdaa1ac6d59191817d6bc	1	\N	1
1	31	69efdd48ac6d59191817d6bf	4	\N	1
1	32	69efdf05bf530303747df6a5	1	\N	1
1	33	69efdf7bbf530303747df6a6	1	\N	1
1	34	69efe069bf530303747df6a7	1	\N	1
1	35	69efe1acb1bba63bacbc1638	1	\N	1
1	36	69efe2ec018285414c2f350d	1	\N	1
1	37	69efe4bc018285414c2f350e	1	\N	1
1	38	69efe4fc018285414c2f350f	1	\N	1
1	39	69efe5c8018285414c2f3510	1	\N	1
1	40	69efe6a73cce0f32c03b30bb	1	\N	1
1	41	69efe70a3cce0f32c03b30bc	1	\N	1
1	42	69efe7c03cce0f32c03b30bd	1	\N	1
1	43	69efe9eb3cce0f32c03b30be	1	\N	1
1	44	69f07444af90310c240154a7	1	\N	1
1	45	69f07e3382a2fb22e04a3944	1	\N	1
1	46	69f0b6f6910bae3930ec5a1d	4	\N	1
1	47	69f0b8cd910bae3930ec5a1e	1	\N	1
1	48	69f0be3a9c13703c80fc6cee	1	\N	1
1	49	69f0c248b2b0d93aa0d4f9be	1	\N	1
1	50	69f0c388b502ef4dc8283d4a	1	\N	1
1	51	69f0c4f099dc5e466419d88e	1	\N	1
1	52	69f0c97a2bc6024538161c21	1	\N	1
1	53	69f0ce4ecf75681834498f05	1	\N	1
1	54	69f0d012cf75681834498f07	1	\N	1
1	55	69f0d3feca7c352460bc0b72	1	\N	1
1	56	69f0d56aca7c352460bc0b74	1	\N	1
1	57	69f0d5d8b0fd382d60ee17f4	1	\N	1
1	58	69f0d6a8b0fd382d60ee17f6	1	\N	1
1	59	69f0d8d719e2173b28c4db17	4	\N	1
1	60	69f0dc7d19e2173b28c4db19	4	\N	1
1	61	69f0f1c5dd16662c985c4b5f	4	\N	1
1	62	69f0f281dd16662c985c4b61	1	\N	1
1	63	69f0f311dd16662c985c4b63	4	\N	1
1	64	69f0f46ddd16662c985c4b65	1	\N	1
1	65	69f0f5070baa523d00cff085	4	\N	1
1	66	69f0f97deb29034834a172d5	4	\N	1
1	67	69f0fd31538c92332827c700	1	\N	1
1	68	69f0fd96538c92332827c702	1	\N	1
1	69	69f100acec209605009c5dae	4	\N	1
1	70	69f1025a0003714748b75550	4	\N	1
1	71	69f103d7eaadc047444f3b43	4	\N	1
1	72	69f10463eaadc047444f3b45	4	\N	1
1	73	69f104f3eaadc047444f3b47	4	\N	1
1	74	69f105fceaadc047444f3b49	4	\N	1
1	75	69f10710bc5b6b44d4014273	4	\N	1
1	76	69f108008fae453510542b15	4	\N	1
1	77	69f109848fae453510542b16	1	\N	1
1	78	69f1146a3b37480560b10a2a	4	\N	1
1	79	69f114cb3b37480560b10a2c	4	\N	2
1	80	69f231fc3b13531de068cea7	4	\N	1
1	81	69f37c7a21fbf53ab89cfda2	1	\N	1
1	82	69f4daa6d11a722bbc1b1ea2	4	\N	1
1	83	69f4fd521b5bb72858ddd472	4	\N	2
2	83	69f4fd761b5bb72858ddd473	1	\N	1
1	84	69f5079c165aed157c88b85f	4	\N	1
1	85	6a0ae25a6f659a004c2e493a	1	\N	2
1	86	6a1ab73a424d963be48dcc7e	4	\N	2
\.


--
-- Data for Name: orders_purchase_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orders_purchase_types (_order, _parent_id, id, product_id, variant, purchase_type) FROM stdin;
1	77	69f109988fae453510542b17	1	\N	monthly
1	78	69f1148f3b37480560b10a2b	4	\N	monthly
1	79	69f114ea3b37480560b10a2d	4	\N	monthly
1	80	69f233183b13531de068cea8	4	\N	monthly
1	81	69f37cb121fbf53ab89cfda3	1	\N	one_time
1	82	69f4dad4d11a722bbc1b1ea3	4	\N	monthly
1	83	69f4fd941b5bb72858ddd474	4	\N	monthly
2	83	69f4fd941b5bb72858ddd475	1	\N	monthly
1	84	69f507d3165aed157c88b860	4	\N	one_time
1	85	6a0ae3016f659a004c2e493b	1	\N	monthly
1	86	6a1ab816424d963be48dcc7f	4	\N	one_time
\.


--
-- Data for Name: orders_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orders_rels (id, "order", parent_id, path, transactions_id) FROM stdin;
1	1	1	transactions	1
2	1	2	transactions	24
3	1	3	transactions	25
4	1	4	transactions	26
5	1	5	transactions	29
6	1	6	transactions	65
7	1	7	transactions	66
8	1	8	transactions	67
9	1	9	transactions	68
10	1	10	transactions	69
11	1	11	transactions	70
12	1	12	transactions	71
13	1	13	transactions	72
14	1	14	transactions	73
15	1	15	transactions	74
16	1	16	transactions	75
17	1	17	transactions	76
18	1	18	transactions	77
19	1	19	transactions	78
20	1	20	transactions	79
22	1	21	transactions	80
23	1	22	transactions	81
25	1	23	transactions	84
27	1	24	transactions	85
29	1	25	transactions	86
31	1	26	transactions	87
33	1	27	transactions	88
35	1	28	transactions	89
37	1	29	transactions	90
39	1	30	transactions	91
41	1	31	transactions	92
43	1	32	transactions	93
45	1	33	transactions	95
47	1	34	transactions	96
49	1	35	transactions	98
51	1	36	transactions	99
53	1	37	transactions	100
55	1	38	transactions	101
57	1	39	transactions	102
59	1	40	transactions	103
61	1	41	transactions	104
63	1	42	transactions	105
65	1	43	transactions	106
67	1	44	transactions	107
69	1	45	transactions	108
71	1	46	transactions	109
73	1	47	transactions	110
75	1	48	transactions	111
77	1	49	transactions	112
79	1	50	transactions	113
82	1	51	transactions	114
84	1	52	transactions	115
86	1	53	transactions	116
87	1	54	transactions	117
88	1	55	transactions	118
89	1	56	transactions	120
90	1	57	transactions	121
91	1	58	transactions	122
92	1	59	transactions	123
93	1	60	transactions	124
94	1	61	transactions	125
95	1	62	transactions	126
96	1	63	transactions	127
98	1	64	transactions	128
100	1	65	transactions	129
102	1	66	transactions	130
104	1	67	transactions	131
106	1	68	transactions	132
108	1	69	transactions	133
110	1	70	transactions	134
112	1	71	transactions	135
114	1	72	transactions	136
116	1	73	transactions	137
118	1	74	transactions	138
120	1	75	transactions	139
122	1	76	transactions	140
125	1	77	transactions	141
127	1	78	transactions	142
129	1	79	transactions	143
131	1	80	transactions	144
133	1	81	transactions	145
143	1	82	transactions	146
145	1	83	transactions	147
147	1	84	transactions	148
149	1	85	transactions	149
151	1	86	transactions	153
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages (id, title, published_on, hero_type, hero_rich_text, hero_media_id, meta_title, meta_image_id, meta_description, generate_slug, slug, updated_at, created_at, _status, hero_eyebrow, hero_heading, hero_description, hero_carousel_settings_autoplay, hero_carousel_settings_autoplay_delay, hero_carousel_settings_show_dots, hero_carousel_settings_show_arrows, hero_carousel_settings_height) FROM stdin;
3	Shop	2026-04-23 15:58:17.958+05:30	highImpact	\N	10	Categories	\N	\N	f	shop	2026-04-28 00:39:23.696+05:30	2026-04-23 15:57:56.179+05:30	published	Premium Selection	The Shop	Curated selections of the world's finest prime cuts.	t	5000	t	t	large
5	\N	\N	lowImpact	\N	\N	\N	\N	\N	t	\N	2026-04-30 19:48:56.489+05:30	2026-04-30 19:48:56.486+05:30	draft	\N	\N	\N	t	5000	t	t	large
6	\N	\N	lowImpact	\N	\N	\N	\N	\N	t	\N	2026-05-02 01:38:03.184+05:30	2026-05-02 01:38:03.184+05:30	draft	\N	\N	\N	t	5000	t	t	large
1	Home	2026-04-22 21:17:19.09+05:30	carousel	\N	29	Home	1	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	f	home	2026-05-30 16:23:45.064+05:30	2026-04-22 19:06:40.331+05:30	published	The Butcher's Craft	EXCELLENCE IN EVERY CUT.	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.	t	5000	t	t	fullScreen
4	Contact Us	2026-04-27 19:16:58.515+05:30	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	16	Contact Us | Payload Ecommerce Template	\N	\N	f	contact-us	2026-06-04 00:15:15.397+05:30	2026-04-27 19:10:43.725+05:30	published	Contact Us	GET IN TOUCH	Whether you are seeking a custom cut for a special occasion or looking to partner with the finest purveyor in Toronto, we are here to serve.	t	5000	t	t	large
2	About Us	2026-04-23 15:18:04.777+05:30	carousel	\N	9	\N	\N	\N	f	about-us	2026-06-04 00:23:31.81+05:30	2026-04-23 14:57:48.157+05:30	published	The Art of the Cut	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	t	5000	t	t	large
8	How It Works	2026-06-09 10:39:28.255+05:30	highImpact	\N	38	How It Works	\N	Learn how our premium meat delivery works — pick your cuts, get fresh delivery, and enjoy restaurant-quality meals at home.	f	how-it-works	2026-06-09 11:49:55.086+05:30	2026-06-09 10:39:28.276+05:30	published	The process	How It Works	Premium cuts and curated boxes delivered to your door — simple, flexible, and stress-free.	t	5000	t	t	large
\.


--
-- Data for Name: pages_blocks_about_story; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_about_story (_order, _parent_id, _path, id, title, lead, body, cta_label, cta_url, image_id, block_name, page_intro_eyebrow, page_intro_heading, page_intro_description, page_intro_hero_image_id) FROM stdin;
1	2	layout	69e9ea18d2d6ab763b97ecb3	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	Our master butchers hand-select every cut, aging them with patience and precision to achieve remarkable depth of flavor.	Explore Our Cuts	/shop	17	\N	About Us	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	\N
\.


--
-- Data for Name: pages_blocks_archive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_banner; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_banner (_order, _parent_id, _path, id, style, content, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_carousel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_carousel (_order, _parent_id, _path, id, populate_by, relation_to, "limit", populated_docs_total, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_contact_cards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_contact_cards (_order, _parent_id, _path, id, title, subtitle, block_name) FROM stdin;
2	2	layout	69e9ea23d2d6ab763b97ecb5	Get In Touch	Reservations & Inquiries	\N
\.


--
-- Data for Name: pages_blocks_contact_cards_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_contact_cards_items (_order, _parent_id, id, icon, title, line1, line2) FROM stdin;
1	69e9ea23d2d6ab763b97ecb5	69e9ea23e96ca70f80ef180d	map-pin	The Atelier	1245 Gourmet Boulevard	Culinary District, NY 10012
2	69e9ea23d2d6ab763b97ecb5	69e9ea23e96ca70f80ef180e	phone	Direct Line	+1 (212) 555-0198	Mon - Sat: 9am - 8pm
3	69e9ea23d2d6ab763b97ecb5	69e9ea23e96ca70f80ef180f	mail	Correspondence	atelier@filetgourmet.com	press@filetgourmet.com
\.


--
-- Data for Name: pages_blocks_contact_page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_contact_page (_order, _parent_id, _path, id, form_title, form_id, map_image_id, map_label, block_name, map_embed_url, store_note, map_title) FROM stdin;
1	4	layout	69ef7c01a3158557d18be6e8	Send An Inquiry	1	\N		\N	https://maps.app.goo.gl/7ALbeZ9MFxicZxJ68	\N	Toronto
\.


--
-- Data for Name: pages_blocks_contact_page_cards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_contact_page_cards (_order, _parent_id, id, icon, title, line1, line2) FROM stdin;
\.


--
-- Data for Name: pages_blocks_contact_page_store_hours; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_contact_page_store_hours (_order, _parent_id, id, day, "time") FROM stdin;
1	69ef7c01a3158557d18be6e8	69efa92ba3158557d18be6f0	Monday - Friday →	09:00 - 19:00 
2	69ef7c01a3158557d18be6e8	69efa93fa3158557d18be6f2	Saturday →	08:00 - 18:00 
3	69ef7c01a3158557d18be6e8	69efa953a3158557d18be6f4	Sunday → 	10:00 - 16:00
\.


--
-- Data for Name: pages_blocks_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content (_order, _parent_id, _path, id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_cta (_order, _parent_id, _path, id, rich_text, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_blocks_featured_cuts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_featured_cuts (_order, _parent_id, _path, id, title, intro, block_name, eyebrow) FROM stdin;
2	1	layout	69e91f2fbf6785f2edfda212	The Passion for True Taste	\N	EXCLUSIVE SELECTION	EXCLUSIVE SELECTION
\.


--
-- Data for Name: pages_blocks_featured_cuts_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_featured_cuts_items (_order, _parent_id, id, name, description, price, image_id, tag, product_id) FROM stdin;
1	69e91f2fbf6785f2edfda212	69e91f66bf6785f2edfda214	Wagyu A5 Kobe	The ultimate marbling, imported directly from Japan.	185$/kg	5	\N	\N
2	69e91f2fbf6785f2edfda212	69e91fb4bf6785f2edfda216	Dry-Aged Ribeye	60 days of maturation in our Himalayan salt cave.	78$/kg	6	\N	\N
3	69e91f2fbf6785f2edfda212	69e9206bbf6785f2edfda218	Landes Poularde	Free-range rearing, flesh of incomparable finesse.	42$/kg	22	\N	\N
\.


--
-- Data for Name: pages_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_how_it_works; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_how_it_works (_order, _parent_id, _path, id, steps_eyebrow, steps_title, steps_intro, values_eyebrow, values_title, faq_title, faq_link_label, faq_link_url, bottom_cta_label, bottom_cta_url, block_name, values_background_image_id, bottom_cta_background_image_id) FROM stdin;
1	8	layout	6a27a00815d32a348873148c	The Process	How It Works	From selection to your table — three simple steps to exceptional meals at home.	Our Values	Why Choose Us	Frequently Asked Questions			Start Shopping	/shop	\N	42	43
\.


--
-- Data for Name: pages_blocks_how_it_works_faqs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_how_it_works_faqs (_order, _parent_id, id, question, answer) FROM stdin;
1	6a27a00815d32a348873148c	6a27a00815d32a3488731486	Are there any commitments?	No. You can skip a delivery or cancel at any time. Just be sure to do so before your order cutoff.
2	6a27a00815d32a348873148c	6a27a00815d32a3488731487	Can I select my cuts?	Yes! You can browse and choose your cuts every time you order, or let us curate a box for you.
3	6a27a00815d32a348873148c	6a27a00815d32a3488731488	What if I am not home to accept my delivery?	Delivery times vary by area. Add special delivery instructions to your account, or reschedule your delivery day in advance.
4	6a27a00815d32a348873148c	6a27a00815d32a3488731489	How will my food stay cool?	We carefully hand-pack all ingredients with special ice packs and insulation, so your food stays cool until you get home.
5	6a27a00815d32a348873148c	6a27a00815d32a348873148a	What if I have dietary restrictions?	Every product includes detailed information. Contact us and we will help you find cuts that fit your needs.
6	6a27a00815d32a348873148c	6a27a00815d32a348873148b	What if I do not want a delivery every week?	No worries! You can easily skip a delivery when you need to — order only when it suits you.
\.


--
-- Data for Name: pages_blocks_how_it_works_steps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_how_it_works_steps (_order, _parent_id, id, step_number, title, description, image_id, cta_label, cta_url) FROM stdin;
1	6a27a00815d32a348873148c	6a27a00815d32a348873147e	1	Pick your cuts	Browse our selection of premium meats, curated boxes, and specialty cuts. Choose what suits your appetite and schedule.	37	Shop Now	/shop
2	6a27a00815d32a348873148c	6a27a00815d32a348873147f	2	Get your delivery	We hand-pack every order with care and insulation so your cuts arrive fresh and perfectly chilled.	39	Contact Us	/contact-us
3	6a27a00815d32a348873148c	6a27a00815d32a3488731480	3	Cook, eat, enjoy	Unbox restaurant-quality ingredients, follow our chef tips, and enjoy memorable meals at home.	40	Explore Shop	/shop
\.


--
-- Data for Name: pages_blocks_how_it_works_values; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_how_it_works_values (_order, _parent_id, id, title, description) FROM stdin;
1	6a27a00815d32a348873148c	6a27a00815d32a3488731481	Quality	Our master butchers hand-select every cut, aging them with patience and precision for remarkable depth of flavor.
2	6a27a00815d32a348873148c	6a27a00815d32a3488731482	Simplicity	From curated boxes to flexible delivery, we make premium meat accessible without the hassle.
3	6a27a00815d32a348873148c	6a27a00815d32a3488731483	Flexibility	We accommodate every appetite and schedule. Need to skip a week or change your order? No problem.
4	6a27a00815d32a348873148c	6a27a00815d32a3488731484	Something for everyone	Picky appetites and alternate dietary lifestyles welcome — tell us what you like and we will recommend something delicious.
5	6a27a00815d32a348873148c	6a27a00815d32a3488731485	Stress-free	Take back your evenings with deliveries that mean fewer trips to the store and more time at the table.
\.


--
-- Data for Name: pages_blocks_info_section; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_info_section (_order, _parent_id, _path, id, eyebrow, title, image_id, block_name, description, quote, link_label, link_url) FROM stdin;
3	1	layout	69e924755bb90a7bceae2c85	SINCE 1984	Our House	33	\N	More than just a butcher shop, we are dedicated to the art of meat. Our philosophy is rooted in respect for the animal and a deep appreciation for the traditional craftsmanship of butchery.	Quality is not a luxury, it’s a commitment we renew every morning at dawn.	OUR STORY	/our-story
\.


--
-- Data for Name: pages_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_media_block (_order, _parent_id, _path, id, media_id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_product_grid; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_product_grid (_order, _parent_id, _path, id, title, description, block_name) FROM stdin;
1	3	layout	69e9f43d45eb900ba53c4818	Shop Categories	Curated selections of the world's finest prime cuts.	\N
\.


--
-- Data for Name: pages_blocks_social_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_social_links (_order, _parent_id, _path, id, title, block_name) FROM stdin;
4	2	layout	69e9ea2ed2d6ab763b97ecb9	Join the Inner Circle	\N
\.


--
-- Data for Name: pages_blocks_social_links_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_social_links_items (_order, _parent_id, id, label, url) FROM stdin;
1	69e9ea2ed2d6ab763b97ecb9	69e9ea2ee96ca70f80ef1813	Instagram	#
2	69e9ea2ed2d6ab763b97ecb9	69e9ea2ee96ca70f80ef1814	Facebook	#
3	69e9ea2ed2d6ab763b97ecb9	69e9ea2ee96ca70f80ef1815	LinkedIn	#
4	69e9ea2ed2d6ab763b97ecb9	69e9ea2ee96ca70f80ef1816	Pinterest	#
\.


--
-- Data for Name: pages_blocks_testimonials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_testimonials (_order, _parent_id, _path, id, title, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_testimonials_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_testimonials_items (_order, _parent_id, id, quote, name, role) FROM stdin;
\.


--
-- Data for Name: pages_blocks_three_item_grid; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_three_item_grid (_order, _parent_id, _path, id, block_name) FROM stdin;
1	1	layout	69e90199fbbb7528ca24e007	\N
\.


--
-- Data for Name: pages_blocks_visit_section; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_visit_section (_order, _parent_id, _path, id, title, description, location_label, map_image_id, block_name, storefront_image_id, image_eyebrow, image_heading, image_description) FROM stdin;
3	2	layout	69e9ea2ad2d6ab763b97ecb7	Visit Us	Located in the heart of the historic district, our flagship boutique offers personal consultations with our master butchers.		\N	\N	34	Excellence in every cut	The Butcher's Craft	Discover a rigorous selection of exceptional meats, carefully dry-aged in our atelier.
\.


--
-- Data for Name: pages_blocks_visit_section_hours; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_visit_section_hours (_order, _parent_id, id, label, value) FROM stdin;
1	69e9ea2ad2d6ab763b97ecb7	69e9ea2ae96ca70f80ef1810	Monday - Friday	09:00 - 20:00
2	69e9ea2ad2d6ab763b97ecb7	69e9ea2ae96ca70f80ef1811	Saturday	10:00 - 18:00
3	69e9ea2ad2d6ab763b97ecb7	69e9ea2ae96ca70f80ef1812	Sunday	Closed
\.


--
-- Data for Name: pages_blocks_visit_section_image_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_visit_section_image_links (_order, _parent_id, id, link_type, link_label, link_url, link_appearance, link_new_tab) FROM stdin;
\.


--
-- Data for Name: pages_hero_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_hero_slides; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_hero_slides (_order, _parent_id, id, heading, description, media_id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	6a1a9ff98dc21b9f875db873	Fresh Cuts. Delivered Daily.	Experience the finest selection of premium beef, lamb, chicken, and seafood sourced from trusted farms and prepared with expert care. Quality you can taste in every bite.	30	reference	\N		Shop Fresh Meat
2	1	6a1aa1098dc21b9f875db875	Farm Fresh Meat For Every Table	From juicy steaks to tender chicken and fresh seafood, discover hand-selected products delivered straight to your doorstep with unmatched freshness.	31	reference	\N	\N	Browse Collection
3	1	6a1aa1b88dc21b9f875db877	Premium Steaks. Exceptional Flavor.	Indulge in restaurant-quality cuts sourced from the finest producers. Perfect marbling, rich flavor, and freshness guaranteed for every order.	32	reference	f	\N	Order Now
1	2	6a1ab4b8da969013a44887d5	Our Journey	A story of craftsmanship, patience, and a relentless dedication to quality.	36	custom	\N	/shop	Explore Our Cuts
2	2	6a1ab4b8da969013a44887d6	The Legacy of Excellence	Founded in 1982, The Butcher's Craft began as a small family atelier dedicated to the pursuit of the perfect steak.	17	custom	\N	/shop	Shop Now
\.


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_rels (id, "order", parent_id, path, pages_id, categories_id, products_id) FROM stdin;
53	\N	1	hero.slides.0.link.reference	3	\N	\N
54	\N	1	hero.slides.1.link.reference	1	\N	\N
55	\N	1	hero.slides.2.link.reference	3	\N	\N
56	1	1	layout.0.products	\N	\N	1
57	2	1	layout.0.products	\N	\N	3
\.


--
-- Data for Name: payload_kv; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_kv (id, key, data) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, users_id, pages_id, categories_id, media_id, forms_id, form_submissions_id, addresses_id, variants_id, variant_types_id, variant_options_id, products_id, carts_id, orders_id, transactions_id, meat_types_id, cut_types_id, qualities_id, flavors_id, branches_id, branch_inventory_id, fulfillment_schedules_id, branch_holidays_id) FROM stdin;
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
7	20260516_173000_add_page_custom_blocks	1	2026-05-19 02:17:26.858+05:30	2026-05-19 02:17:26.848+05:30
8	20260517_140000_add_newsletter_promo_global	1	2026-05-19 02:17:27.74+05:30	2026-05-19 02:17:27.74+05:30
9	20260517_150000_sync_page_block_columns	1	2026-05-19 02:17:28.586+05:30	2026-05-19 02:17:28.586+05:30
10	20260518_210000_sync_contact_page_block_columns	2	2026-05-19 02:29:11.284+05:30	2026-05-19 02:29:11.282+05:30
11	dev	-1	2026-06-09 12:24:38.166+05:30	2026-05-30 00:36:10.679+05:30
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
21	collection-orders	{"limit": 10, "editViewType": "default"}	2026-04-28 03:13:15.997+05:30	2026-04-24 01:29:46.462+05:30
33	collection-pages-5	{"fields": {"_index-2": {"tabIndex": 0}}}	2026-04-30 19:49:17.441+05:30	2026-04-30 19:49:02.249+05:30
34	collection-orders-82	{"fields": {"_index-0": {"tabIndex": 0}}}	2026-05-01 22:52:02.304+05:30	2026-05-01 22:51:59.191+05:30
23	collection-qualities	{}	2026-04-24 01:30:05.602+05:30	2026-04-24 01:30:05.602+05:30
16	collection-flavors	{"limit": 10}	2026-04-24 01:31:33.213+05:30	2026-04-23 21:20:30.412+05:30
10	collection-variantTypes	{"editViewType": "default"}	2026-04-23 14:03:58.168+05:30	2026-04-23 14:03:58.17+05:30
11	collection-form-submissions	{}	2026-04-23 14:07:45.117+05:30	2026-04-23 14:07:45.117+05:30
3	collection-categories	{"limit": 10, "editViewType": "default"}	2026-04-24 01:55:53.462+05:30	2026-04-22 19:04:37.927+05:30
8	global-footer	{"editViewType": "default"}	2026-04-22 20:31:51.908+05:30	2026-04-22 20:31:51.91+05:30
27	global-cart-settings	{"editViewType": "default"}	2026-04-26 00:13:20.409+05:30	2026-04-26 00:13:20.41+05:30
30	collection-orders-6	{"fields": {"items": {"collapsed": ["69ee3368e3fc72371c57bfed"]}, "_index-0": {"tabIndex": 0}}}	2026-04-26 21:21:26.374+05:30	2026-04-26 21:20:40.679+05:30
32	collection-forms	{"editViewType": "default"}	2026-04-27 19:20:43.709+05:30	2026-04-27 19:20:37.478+05:30
13	collection-pages-3	{"fields": {"_index-2": {"tabIndex": 0}}}	2026-04-28 02:09:32.207+05:30	2026-04-23 15:58:09.543+05:30
2	collection-products-1	{"fields": {"_index-1": {"tabIndex": 0}, "_index-7": {"tabIndex": 0}, "whatsInside": {"collapsed": ["69ea5a0dcf543c4bbc9a8a44"]}}}	2026-04-28 02:10:46.367+05:30	2026-04-22 19:03:42.18+05:30
25	collection-branch-inventory	{"limit": 10, "editViewType": "default"}	2026-04-28 03:02:43.6+05:30	2026-04-25 13:56:45.657+05:30
6	global-header	{"fields": {"navItems": {"collapsed": []}}, "editViewType": "default"}	2026-04-23 20:54:18.957+05:30	2026-04-22 19:58:39.341+05:30
15	collection-meat-types	{}	2026-04-23 21:20:29.219+05:30	2026-04-23 21:20:29.219+05:30
14	collection-cut-types	{"editViewType": "default"}	2026-04-23 21:20:38.299+05:30	2026-04-23 21:20:27.679+05:30
17	collection-carts	{"editViewType": "default"}	2026-04-23 21:21:13.735+05:30	2026-04-23 21:21:10.001+05:30
18	global-shop-luxury-page	{"editViewType": "default"}	2026-04-23 21:58:10.657+05:30	2026-04-23 21:58:10.664+05:30
1	collection-products	{"editViewType": "default", "listViewType": "list"}	2026-04-29 01:34:20.497+05:30	2026-04-22 18:58:54.106+05:30
35	collection-pages-6	{"fields": {"_index-2": {"tabIndex": 1}}}	2026-05-02 01:38:09.898+05:30	2026-05-02 01:38:09.9+05:30
22	global-shop-page	{"editViewType": "default"}	2026-04-24 01:30:00.515+05:30	2026-04-24 01:30:00.516+05:30
24	collection-branches	{"editViewType": "default"}	2026-04-26 00:27:51.258+05:30	2026-04-25 13:56:42.641+05:30
28	collection-branch-holidays	{"limit": 10}	2026-04-26 00:32:04.178+05:30	2026-04-26 00:31:09.372+05:30
26	collection-fulfillment-schedules	{"limit": 10, "editViewType": "default"}	2026-04-26 21:13:41.597+05:30	2026-04-25 13:56:47.445+05:30
4	collection-pages	{"sort": "hero.type", "limit": 10, "columns": [{"active": true, "accessor": "title"}, {"active": false, "accessor": "slug"}, {"active": false, "accessor": "updatedAt"}, {"active": false, "accessor": "id"}, {"active": false, "accessor": "publishedOn"}, {"active": true, "accessor": "hero.type"}, {"active": true, "accessor": "hero.richText"}, {"active": true, "accessor": "hero.links"}, {"active": true, "accessor": "hero.media"}, {"active": false, "accessor": "layout"}, {"active": false, "accessor": "meta.overview"}, {"active": false, "accessor": "meta.title"}, {"active": false, "accessor": "meta.image"}, {"active": false, "accessor": "meta.description"}, {"active": false, "accessor": "meta.preview"}, {"active": false, "accessor": "createdAt"}, {"active": false, "accessor": "_status"}], "editViewType": "default"}	2026-04-27 19:44:02.791+05:30	2026-04-22 19:06:38.832+05:30
20	collection-products-3	{"fields": {"_index-6": {"tabIndex": 0}, "_index-7": {"tabIndex": 0}}}	2026-05-19 02:05:58.069+05:30	2026-04-24 00:09:17.897+05:30
31	collection-pages-4	{"fields": {"layout": {"collapsed": []}, "_index-2": {"tabIndex": 0}}}	2026-05-19 02:09:37.156+05:30	2026-04-27 19:12:16.771+05:30
9	collection-media	{"limit": 10, "editViewType": "default"}	2026-05-19 14:17:34.973+05:30	2026-04-22 21:31:02.453+05:30
19	collection-products-4	{"fields": {"_index-6": {"tabIndex": 1}, "_index-7": {"tabIndex": 0}}}	2026-05-21 19:39:49.802+05:30	2026-04-23 23:16:48.603+05:30
5	collection-pages-1	{"fields": {"layout": {"collapsed": []}, "_index-2": {"tabIndex": 0}, "layout.0.columns": {"collapsed": ["69e8cf2043ec6a2175b2f12d"]}}}	2026-05-30 15:50:54.662+05:30	2026-04-22 19:06:51.941+05:30
36	global-newsletter-promo	{"editViewType": "default"}	2026-06-03 23:54:08.247+05:30	2026-06-03 23:54:08.249+05:30
12	collection-pages-2	{"fields": {"_index-2": {"tabIndex": 0}}}	2026-06-04 00:23:06.074+05:30	2026-04-23 15:13:51.962+05:30
38	global-translation-settings	{"editViewType": "default"}	2026-06-07 10:38:10.224+05:30	2026-06-07 10:38:10.228+05:30
37	collection-site-translations	{"sort": "-french", "limit": 50, "editViewType": "default"}	2026-06-07 11:05:18.2+05:30	2026-06-07 10:15:15.597+05:30
39	collection-pages-8	{"fields": {"_index-2": {"tabIndex": 1}}}	2026-06-09 10:52:30.359+05:30	2026-06-09 10:43:52.655+05:30
7	nav	{"open": true, "groups": {"Users": {"open": false}, "Content": {"open": true}, "Globals": {"open": true}, "Ecommerce": {"open": true}}}	2026-06-09 12:17:38.801+05:30	2026-04-22 20:04:59.405+05:30
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id) FROM stdin;
275	\N	21	user	1
139	\N	15	user	1
207	\N	27	user	1
141	\N	14	user	1
208	\N	24	user	1
143	\N	17	user	1
144	\N	18	user	1
280	\N	1	user	1
212	\N	28	user	1
213	\N	28	user	1
214	\N	28	user	1
283	\N	33	user	1
84	\N	10	user	1
85	\N	11	user	1
287	\N	34	user	1
289	\N	35	user	1
225	\N	26	user	1
226	\N	26	user	1
227	\N	26	user	1
228	\N	26	user	1
39	\N	8	user	1
235	\N	30	user	1
183	\N	22	user	1
186	\N	23	user	1
188	\N	16	user	1
189	\N	16	user	1
198	\N	3	user	1
199	\N	3	user	1
132	\N	6	user	1
257	\N	32	user	1
261	\N	4	user	1
271	\N	13	user	1
272	\N	2	user	1
274	\N	25	user	1
298	\N	20	user	1
300	\N	31	user	1
301	\N	9	user	1
307	\N	19	user	1
312	\N	5	user	1
313	\N	36	user	1
317	\N	12	user	1
323	\N	38	user	1
326	\N	37	user	1
331	\N	39	user	1
333	\N	7	user	1
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products (id, enable_variants, price_in_u_s_d_enabled, price_in_u_s_d, updated_at, created_at, deleted_at, _status, eyebrow, primary_c_t_a_label, primary_c_t_a_url, reviews_heading, reviews_summary, title, generate_slug, slug, shop_card_label, shop_card_short_description, cut_type, aging_process, origin, sort_priority, featured_in_shop, card_button_label, meat_type, weight, storage_type, preparation_style, flavor, in_stock, purchase_frequencies_one_time_enabled, purchase_frequencies_one_time_price_override, purchase_frequencies_monthly_enabled, purchase_frequencies_monthly_price_override, purchase_frequencies_monthly_savings_text) FROM stdin;
2	\N	\N	\N	2026-04-23 13:24:28.946+05:30	2026-04-22 23:20:29.56+05:30	2026-04-23 13:24:28.859+05:30	draft	Curated Collection	Subscribe Now	#	Reviews	4.9 Based on 128 Reviews	\N	t	\N	\N	\N	\N	\N	\N	0	t	Add to Atelier Box	\N	\N	\N	\N	\N	t	t	\N	t	\N	\N
1	\N	t	9900	2026-05-18 15:29:27.443+05:30	2026-04-22 18:58:55.6+05:30	\N	published	Premium Ribeye Steak	Add to Cart	/premium-steak	Reviews	4.9 Based on 128 Reviews	Premium Steak	f	premium-steak	Premium Ribeye Steak	Juicy, well-marbled ribeye steak perfect for grilling. Rich flavor and tender texture.	wagyu-strips	wet-aged	black-angus-heritage	1	t	View Product	beef	500	frozen	curry-cut	plain	t	t	$99.00	t	$79.00	20% Off
3	\N	t	15000	2026-05-19 02:05:55.913+05:30	2026-04-22 23:20:45.674+05:30	\N	published	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Fresh Chicken Breast Fillet	f	fresh-chicken-breast-fillet	Lean Cut	Skinless, boneless chicken breast for healthy meals	filet-mignon	wet-aged	black-angus-heritage	1	t	View Product	chicken	1000	chilled	bbq	plain	t	t	\N	t	\N	\N
4	f	t	12000	2026-05-30 15:42:36.155+05:30	2026-04-23 13:01:50.215+05:30	\N	published	Curated Collection	Add to Cart	#	Reviews	4.9 Based on 128 Reviews	Lamb Shoulder Cut	f	wagyu-ribeye	Chef’s Choice	Tender lamb shoulder ideal for slow cooking	filet-mignon	wet-aged	midwest-corn-fed	2	t	View Product	beef	230	frozen	ready	plain	t	t	$120.00	t	$80.00	25% Off
\.


--
-- Data for Name: products_badges; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_badges (_order, _parent_id, id, label) FROM stdin;
1	1	69ea5a03cf543c4bbc9a8a42	Fresh
1	4	69e9caf0a478f0ac2aac27ae	Prime Grade
2	4	69e9caf5a478f0ac2aac27b0	28 Days Aged
\.


--
-- Data for Name: products_product_gallery; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_product_gallery (_order, _parent_id, id, image_id) FROM stdin;
1	1	69ea591fcf543c4bbc9a8a40	12
1	4	69e9f51f45eb900ba53c481a	11
2	4	69f4fd1e389410dcee44088a	20
1	3	69ed295ce1378c677f721c02	25
\.


--
-- Data for Name: products_quality; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_quality ("order", parent_id, value, id) FROM stdin;
1	1	antibiotic-free	54
2	1	organic	55
3	1	grass-fed	56
1	4	halal	61
1	3	antibiotic-free	62
\.


--
-- Data for Name: products_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_rels (id, "order", parent_id, path, variant_types_id) FROM stdin;
2	1	1	categories	\N
\.


--
-- Data for Name: products_reviews; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_reviews (_order, _parent_id, id, name, role, body, rating) FROM stdin;
\.


--
-- Data for Name: products_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_tags ("order", parent_id, value, id) FROM stdin;
1	1	top-rated	28
1	4	top-rated	33
1	3	best-seller	34
\.


--
-- Data for Name: products_whats_inside; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products_whats_inside (_order, _parent_id, id, quantity, label) FROM stdin;
1	4	69e9d8cfa478f0ac2aac27b2	2x 	Center-Cut Filet Mignon (8oz)
2	4	69e9d8eea478f0ac2aac27b4	2x 	Dry-Aged Bone-in Ribeye (22oz)
3	4	69e9d900a478f0ac2aac27b6	1x 	 Signature Wagyu Picanha (16oz)
4	4	69e9d90da478f0ac2aac27b8	1x 	Atelier Finishing Salt Blend
\.


--
-- Data for Name: qualities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.qualities (id, name, slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: shop_luxury_page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.shop_luxury_page (id, eyebrow, title, sort_label, updated_at, created_at) FROM stdin;
1	Shop By Category	Best value for money for premium quality meats	\N	2026-04-23 21:59:38.143+05:30	2026-04-23 21:59:38.143+05:30
\.


--
-- Data for Name: shop_page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.shop_page (id, title, intro_text, empty_state_text, sort_label, updated_at, created_at, results_label_single, results_label_plural, filters_cut_type_label, filters_aging_process_label, filters_origin_label, filters_price_range_label) FROM stdin;
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.transactions (id, payment_method, stripe_customer_i_d, stripe_payment_intent_i_d, billing_address_title, billing_address_first_name, billing_address_last_name, billing_address_company, billing_address_address_line1, billing_address_address_line2, billing_address_city, billing_address_state, billing_address_postal_code, billing_address_country, billing_address_phone, status, customer_id, customer_email, order_id, cart_id, amount, currency, updated_at, created_at) FROM stdin;
1	stripe	cus_UOpA44ddTL4AQ2	pi_3TQ1WG7BxmamzgSt0zdp0wSi	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	1	1	12000	USD	2026-04-25 13:55:49.068+05:30	2026-04-25 13:54:56.825+05:30
2	stripe	cus_UOpA44ddTL4AQ2	pi_3TQ1h47BxmamzgSt0OLC7chv	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	pending	1	\N	\N	1	12000	USD	2026-04-25 14:06:06.889+05:30	2026-04-25 14:06:06.888+05:30
93	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxND7BxmamzgSt0y4UsMEP	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	32	1	9900	USD	2026-04-28 03:41:41.715+05:30	2026-04-28 03:41:28.425+05:30
9	stripe	cus_UOpA44ddTL4AQ2	pi_3TQ3Hy7BxmamzgSt0mDpwvK6	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	pending	1	\N	\N	1	12000	USD	2026-04-25 15:48:18.827+05:30	2026-04-25 15:48:18.826+05:30
19	stripe	cus_UOpA44ddTL4AQ2	pi_3TQ3PN7BxmamzgSt1qQwQ3VZ	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	pending	1	\N	\N	1	12000	USD	2026-04-25 15:55:57.797+05:30	2026-04-25 15:55:57.796+05:30
24	stripe	cus_UOpA44ddTL4AQ2	pi_3TQ4757BxmamzgSt1MQTsrmY	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	2	1	12000	USD	2026-04-25 16:41:23.783+05:30	2026-04-25 16:41:07.548+05:30
25	stripe	cus_UOpA44ddTL4AQ2	pi_3TQ4K97BxmamzgSt066sxP8k	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	3	1	15000	USD	2026-04-25 17:02:37.556+05:30	2026-04-25 16:54:37.96+05:30
26	stripe	cus_UOpA44ddTL4AQ2	pi_3TQN7U7BxmamzgSt1MtxSc0f	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	4	1	15000	USD	2026-04-26 12:59:02.028+05:30	2026-04-26 12:58:47.998+05:30
27	stripe	cus_UOpA44ddTL4AQ2	pi_3TQNi37BxmamzgSt0Tp9Vlhr	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	pending	1	\N	\N	1	30000	USD	2026-04-26 13:36:35.09+05:30	2026-04-26 13:36:35.089+05:30
29	stripe	cus_UOpA44ddTL4AQ2	pi_3TQTba7BxmamzgSt0BFEXCIg	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	5	1	15000	USD	2026-04-26 19:54:53.622+05:30	2026-04-26 19:54:18.515+05:30
30	stripe	cus_UOpA44ddTL4AQ2	pi_3TQU127BxmamzgSt1dszBHyM	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	pending	1	\N	\N	1	15000	USD	2026-04-26 20:20:36.514+05:30	2026-04-26 20:20:36.513+05:30
63	stripe	cus_UOpA44ddTL4AQ2	pi_3TQUiZ7BxmamzgSt1iBpiB7H	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	pending	1	\N	\N	1	11000	USD	2026-04-26 21:05:36.201+05:30	2026-04-26 21:05:36.201+05:30
64	stripe	cus_UOpA44ddTL4AQ2	pi_3TQUpF7BxmamzgSt1jOQzw96	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	pending	1	\N	\N	1	15000	USD	2026-04-26 21:12:29.723+05:30	2026-04-26 21:12:29.723+05:30
65	stripe	cus_UOpA44ddTL4AQ2	pi_3TQUv97BxmamzgSt1jlQD4lU	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	6	1	15000	USD	2026-04-26 21:19:09.122+05:30	2026-04-26 21:18:35.61+05:30
66	stripe	cus_UOpA44ddTL4AQ2	pi_3TQUzd7BxmamzgSt0mUXebhS	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	7	1	11000	USD	2026-04-26 21:23:30.607+05:30	2026-04-26 21:23:13.987+05:30
67	stripe	cus_UOpA44ddTL4AQ2	pi_3TQV0F7BxmamzgSt1to3UEOh	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	8	1	26000	USD	2026-04-26 21:24:04.405+05:30	2026-04-26 21:23:51.33+05:30
68	stripe	cus_UOpA44ddTL4AQ2	pi_3TQV5Z7BxmamzgSt1P36rEcv	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	9	1	11000	USD	2026-04-26 21:29:30.902+05:30	2026-04-26 21:29:22.097+05:30
69	stripe	cus_UOpA44ddTL4AQ2	pi_3TQXH57BxmamzgSt0rsBUsMs	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	10	1	15000	USD	2026-04-26 23:49:31.968+05:30	2026-04-26 23:49:23.908+05:30
70	stripe	cus_UOpA44ddTL4AQ2	pi_3TQXeH7BxmamzgSt0ckzkp57	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	11	1	121000	USD	2026-04-27 00:13:29.551+05:30	2026-04-27 00:13:21.591+05:30
71	stripe	cus_UOpA44ddTL4AQ2	pi_3TQYGM7BxmamzgSt0bq089hv	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	12	1	11000	USD	2026-04-27 00:52:51.248+05:30	2026-04-27 00:52:43.063+05:30
72	stripe	cus_UOpA44ddTL4AQ2	pi_3TQYuu7BxmamzgSt0WvBw5W7	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	13	1	11000	USD	2026-04-27 01:34:45.885+05:30	2026-04-27 01:34:36.984+05:30
73	stripe	cus_UOpA44ddTL4AQ2	pi_3TQlBg7BxmamzgSt0m3FztTj	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	14	1	33900	USD	2026-04-27 14:40:52.978+05:30	2026-04-27 14:40:44.614+05:30
74	stripe	cus_UOpA44ddTL4AQ2	pi_3TQlIg7BxmamzgSt15TkHHfV	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	15	1	12000	USD	2026-04-27 14:48:05.851+05:30	2026-04-27 14:47:58.544+05:30
75	stripe	cus_UOpA44ddTL4AQ2	pi_3TQlJ97BxmamzgSt0Cck46Ur	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	16	1	12000	USD	2026-04-27 14:48:33.244+05:30	2026-04-27 14:48:28.072+05:30
76	stripe	cus_UOpA44ddTL4AQ2	pi_3TQlKg7BxmamzgSt1v3OpTEZ	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	17	1	12000	USD	2026-04-27 14:50:08.752+05:30	2026-04-27 14:50:03.402+05:30
77	stripe	cus_UOpA44ddTL4AQ2	pi_3TQlXn7BxmamzgSt19bO0F3v	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	18	1	12000	USD	2026-04-27 15:03:43.34+05:30	2026-04-27 15:03:36.311+05:30
78	stripe	cus_UOpA44ddTL4AQ2	pi_3TQleh7BxmamzgSt0CWDcLHw	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	19	1	12000	USD	2026-04-27 15:10:51.065+05:30	2026-04-27 15:10:44.018+05:30
79	stripe	cus_UOpA44ddTL4AQ2	pi_3TQlqf7BxmamzgSt0goC3bDa	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	20	1	12000	USD	2026-04-27 15:23:12.54+05:30	2026-04-27 15:23:05.749+05:30
80	stripe	cus_UOpA44ddTL4AQ2	pi_3TQugi7BxmamzgSt14m1Itc4	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	21	1	12000	USD	2026-04-28 00:49:35.77+05:30	2026-04-28 00:49:25.311+05:30
81	stripe	cus_UOpA44ddTL4AQ2	pi_3TQwav7BxmamzgSt1HjzCrvE	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	22	1	9900	USD	2026-04-28 02:51:43.111+05:30	2026-04-28 02:51:33.909+05:30
84	stripe	cus_UOpA44ddTL4AQ2	pi_3TQwfK7BxmamzgSt1nVreRYI	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	23	1	12000	USD	2026-04-28 02:56:14.602+05:30	2026-04-28 02:56:07.525+05:30
85	stripe	cus_UOpA44ddTL4AQ2	pi_3TQwhQ7BxmamzgSt1DjcNINh	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	24	1	12000	USD	2026-04-28 02:58:24.32+05:30	2026-04-28 02:58:16.813+05:30
86	stripe	cus_UOpA44ddTL4AQ2	pi_3TQwkl7BxmamzgSt0dwTA2Bo	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	25	1	12000	USD	2026-04-28 03:01:51.316+05:30	2026-04-28 03:01:44.344+05:30
87	stripe	cus_UOpA44ddTL4AQ2	pi_3TQwqh7BxmamzgSt0PKD7i8s	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	26	1	12000	USD	2026-04-28 03:08:02.08+05:30	2026-04-28 03:07:52.515+05:30
88	stripe	cus_UOpA44ddTL4AQ2	pi_3TQwts7BxmamzgSt1tjLVmwr	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	27	1	12000	USD	2026-04-28 03:11:17.103+05:30	2026-04-28 03:11:09.161+05:30
95	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxP67BxmamzgSt1kynTUew	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	33	1	9900	USD	2026-04-28 03:43:32.387+05:30	2026-04-28 03:43:25.197+05:30
96	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxSv7BxmamzgSt1P0e8iqG	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	34	1	9900	USD	2026-04-28 03:47:29.304+05:30	2026-04-28 03:47:22.312+05:30
98	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxY87BxmamzgSt1RXGj580	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	35	1	9900	USD	2026-04-28 03:52:52.83+05:30	2026-04-28 03:52:45.286+05:30
89	stripe	cus_UOpA44ddTL4AQ2	pi_3TQx3N7BxmamzgSt00CXiFUv	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	28	1	36000	USD	2026-04-28 03:21:04.951+05:30	2026-04-28 03:20:57.6+05:30
90	stripe	cus_UOpA44ddTL4AQ2	pi_3TQx4e7BxmamzgSt1IjKEvaT	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	29	1	9900	USD	2026-04-28 03:22:22.48+05:30	2026-04-28 03:22:16.702+05:30
91	stripe	cus_UOpA44ddTL4AQ2	pi_3TQx527BxmamzgSt1MI4nEA5	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	30	1	9900	USD	2026-04-28 03:22:47.056+05:30	2026-04-28 03:22:41.528+05:30
92	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxG57BxmamzgSt0A4iu3DJ	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	31	1	12000	USD	2026-04-28 03:34:14.608+05:30	2026-04-28 03:34:06.44+05:30
99	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxdJ7BxmamzgSt1gDI4FWU	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	36	1	9900	USD	2026-04-28 03:58:13.413+05:30	2026-04-28 03:58:06.318+05:30
100	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxkn7BxmamzgSt14uuNwx4	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	37	1	9900	USD	2026-04-28 04:05:57.031+05:30	2026-04-28 04:05:50.167+05:30
101	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxlx7BxmamzgSt0YUy7uwy	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	38	1	9900	USD	2026-04-28 04:07:07.495+05:30	2026-04-28 04:07:01.818+05:30
102	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxpJ7BxmamzgSt1WtRPMwc	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	39	1	9900	USD	2026-04-28 04:10:35.672+05:30	2026-04-28 04:10:30.027+05:30
103	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxsr7BxmamzgSt026a8OF9	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	40	1	9900	USD	2026-04-28 04:14:17.008+05:30	2026-04-28 04:14:09.588+05:30
104	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxuV7BxmamzgSt0A3er1cd	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	41	1	9900	USD	2026-04-28 04:15:58.25+05:30	2026-04-28 04:15:51.933+05:30
105	stripe	cus_UOpA44ddTL4AQ2	pi_3TQxxN7BxmamzgSt1jpwhGiS	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	42	1	9900	USD	2026-04-28 04:18:55.566+05:30	2026-04-28 04:18:49.938+05:30
106	stripe	cus_UOpA44ddTL4AQ2	pi_3TQy6W7BxmamzgSt04IeXGhE	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	43	1	9900	USD	2026-04-28 04:28:23.463+05:30	2026-04-28 04:28:16.998+05:30
107	stripe	cus_UOpA44ddTL4AQ2	pi_3TR7Jk7BxmamzgSt1ZgWcw4J	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	44	1	9900	USD	2026-04-28 14:18:41.68+05:30	2026-04-28 14:18:31.231+05:30
108	stripe	cus_UOpA44ddTL4AQ2	pi_3TR7yh7BxmamzgSt1j3WQDkF	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	45	1	9900	USD	2026-04-28 15:00:59.785+05:30	2026-04-28 15:00:50.432+05:30
109	stripe	cus_UOpA44ddTL4AQ2	pi_3TRBkv7BxmamzgSt0baoA6Kw	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	46	1	12000	USD	2026-04-28 19:03:06.371+05:30	2026-04-28 19:02:53.829+05:30
110	stripe	cus_UOpA44ddTL4AQ2	pi_3TRBsY7BxmamzgSt0XCvfmpI	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	47	1	9900	USD	2026-04-28 19:10:54.879+05:30	2026-04-28 19:10:46.722+05:30
111	stripe	cus_UOpA44ddTL4AQ2	pi_3TRCEt7BxmamzgSt0SeGFG2D	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	48	1	9900	USD	2026-04-28 19:34:00.372+05:30	2026-04-28 19:33:51.046+05:30
112	stripe	cus_UOpA44ddTL4AQ2	pi_3TRCVh7BxmamzgSt0PUFcD9U	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	49	1	9900	USD	2026-04-28 19:51:31.194+05:30	2026-04-28 19:51:13.457+05:30
113	stripe	cus_UOpA44ddTL4AQ2	pi_3TRCap7BxmamzgSt1cyv7jos	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	50	1	9900	USD	2026-04-28 19:56:50.528+05:30	2026-04-28 19:56:32+05:30
114	stripe	cus_UOpA44ddTL4AQ2	pi_3TRCgz7BxmamzgSt1Ig1DA4G	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	51	1	9900	USD	2026-04-28 20:03:09.655+05:30	2026-04-28 20:02:53.087+05:30
115	stripe	cus_UOpA44ddTL4AQ2	pi_3TRCzH7BxmamzgSt1GHukRbZ	\N	Suren	Fernando	MData	123 Maple Street	Galle Road	Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	52	1	9900	USD	2026-04-28 20:21:55.395+05:30	2026-04-28 20:21:47.792+05:30
116	stripe	cus_UOpA44ddTL4AQ2	pi_3TRDJX7BxmamzgSt1Y1wUbmx	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	53	1	9900	USD	2026-04-28 20:42:55.477+05:30	2026-04-28 20:42:43.874+05:30
117	stripe	cus_UOpA44ddTL4AQ2	pi_3TRDQf7BxmamzgSt1Nn6tqWL	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	54	1	9900	USD	2026-04-28 20:50:14.416+05:30	2026-04-28 20:50:05.389+05:30
118	stripe	cus_UOpA44ddTL4AQ2	pi_3TRDgk7BxmamzgSt1jVCHz5P	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	55	1	9900	USD	2026-04-28 21:06:51.511+05:30	2026-04-28 21:06:42.732+05:30
120	stripe	cus_UOpA44ddTL4AQ2	pi_3TRDmg7BxmamzgSt0UYveTy8	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	56	1	9900	USD	2026-04-28 21:12:59.422+05:30	2026-04-28 21:12:50.535+05:30
121	stripe	cus_UOpA44ddTL4AQ2	pi_3TRDoN7BxmamzgSt1CfkQNVM	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	57	1	9900	USD	2026-04-28 21:14:43.332+05:30	2026-04-28 21:14:35.637+05:30
122	stripe	cus_UOpA44ddTL4AQ2	pi_3TRDrp7BxmamzgSt0H0RHhvW	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	58	1	9900	USD	2026-04-28 21:18:20.311+05:30	2026-04-28 21:18:09.194+05:30
123	stripe	cus_UOpA44ddTL4AQ2	pi_3TRE2D7BxmamzgSt09s7AD5E	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	59	1	12000	USD	2026-04-28 21:29:04.358+05:30	2026-04-28 21:28:53.428+05:30
124	stripe	cus_UOpA44ddTL4AQ2	pi_3TREGF7BxmamzgSt09l4mVQv	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	60	1	12000	USD	2026-04-28 21:43:45.902+05:30	2026-04-28 21:43:23.112+05:30
125	stripe	cus_UOpA44ddTL4AQ2	pi_3TRFfp7BxmamzgSt0NtD9Sjk	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	61	1	12000	USD	2026-04-28 23:14:02.38+05:30	2026-04-28 23:13:53.355+05:30
126	stripe	cus_UOpA44ddTL4AQ2	pi_3TRFij7BxmamzgSt0vrb7Uus	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	62	1	9900	USD	2026-04-28 23:17:07.926+05:30	2026-04-28 23:16:53.794+05:30
127	stripe	cus_UOpA44ddTL4AQ2	pi_3TRFl17BxmamzgSt04lxosOR	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	63	1	12000	USD	2026-04-28 23:19:23.628+05:30	2026-04-28 23:19:15.584+05:30
128	stripe	cus_UOpA44ddTL4AQ2	pi_3TRFqg7BxmamzgSt0ZUFR9Mk	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	64	1	9900	USD	2026-04-28 23:25:13.866+05:30	2026-04-28 23:25:06.11+05:30
129	stripe	cus_UOpA44ddTL4AQ2	pi_3TRFu77BxmamzgSt0dK9tVRm	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	65	1	12000	USD	2026-04-28 23:28:49.739+05:30	2026-04-28 23:28:40.013+05:30
130	stripe	cus_UOpA44ddTL4AQ2	pi_3TRGBd7BxmamzgSt0Z7iz4id	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	66	1	12000	USD	2026-04-28 23:47:01.333+05:30	2026-04-28 23:46:45.078+05:30
131	stripe	cus_UOpA44ddTL4AQ2	pi_3TRGR87BxmamzgSt08rI2jRF	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	67	1	9900	USD	2026-04-29 00:02:57.268+05:30	2026-04-29 00:02:46.828+05:30
132	stripe	cus_UOpA44ddTL4AQ2	pi_3TRGSW7BxmamzgSt1w8VUwy8	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	68	1	9900	USD	2026-04-29 00:04:20.151+05:30	2026-04-29 00:04:12.18+05:30
133	stripe	cus_UOpA44ddTL4AQ2	pi_3TRGfK7BxmamzgSt0cZvBU86	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	69	1	12000	USD	2026-04-29 00:17:36.603+05:30	2026-04-29 00:17:26.408+05:30
134	stripe	cus_UOpA44ddTL4AQ2	pi_3TRGmH7BxmamzgSt0WF0jGdk	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	70	1	12000	USD	2026-04-29 00:24:47.728+05:30	2026-04-29 00:24:37.379+05:30
135	stripe	cus_UOpA44ddTL4AQ2	pi_3TRGsR7BxmamzgSt11GkC1rq	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	71	1	12000	USD	2026-04-29 00:31:08.454+05:30	2026-04-29 00:30:59.169+05:30
136	stripe	cus_UOpA44ddTL4AQ2	pi_3TRGue7BxmamzgSt1AkRuCzg	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	72	1	12000	USD	2026-04-29 00:33:27.953+05:30	2026-04-29 00:33:16.455+05:30
137	stripe	cus_UOpA44ddTL4AQ2	pi_3TRGxI7BxmamzgSt147W2xiZ	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	73	1	12000	USD	2026-04-29 00:36:07.072+05:30	2026-04-29 00:36:00.12+05:30
138	stripe	cus_UOpA44ddTL4AQ2	pi_3TRH197BxmamzgSt1MymX48C	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	74	1	12000	USD	2026-04-29 00:40:09.873+05:30	2026-04-29 00:39:59.493+05:30
139	stripe	cus_UOpA44ddTL4AQ2	pi_3TRH5d7BxmamzgSt0OmDb0Lx	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	75	1	12000	USD	2026-04-29 00:44:46.184+05:30	2026-04-29 00:44:38.041+05:30
140	stripe	cus_UOpA44ddTL4AQ2	pi_3TRH9W7BxmamzgSt1ppfqIi1	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	76	1	12000	USD	2026-04-29 00:48:45.635+05:30	2026-04-29 00:48:38.31+05:30
141	stripe	cus_UOpA44ddTL4AQ2	pi_3TRHFk7BxmamzgSt1zMbZYdl	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	77	1	9900	USD	2026-04-29 00:55:11.748+05:30	2026-04-29 00:55:04.282+05:30
142	stripe	cus_UOpA44ddTL4AQ2	pi_3TRHyy7BxmamzgSt1RiSHEzy	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	78	1	12000	USD	2026-04-29 01:41:59.202+05:30	2026-04-29 01:41:48.33+05:30
143	stripe	cus_UOpA44ddTL4AQ2	pi_3TRI0U7BxmamzgSt02yIgYWx	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	79	1	24000	USD	2026-04-29 01:43:30.781+05:30	2026-04-29 01:43:22.985+05:30
144	stripe	cus_UOpA44ddTL4AQ2	pi_3TRb3G7BxmamzgSt1pBfsIg3	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	80	1	12000	USD	2026-04-29 22:04:29.346+05:30	2026-04-29 22:03:29.163+05:30
145	stripe	cus_UOpA44ddTL4AQ2	pi_3TRx0v7BxmamzgSt03rQKnjK	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	81	1	9900	USD	2026-04-30 21:30:45.313+05:30	2026-04-30 21:30:33.659+05:30
146	stripe	cus_UOpA44ddTL4AQ2	pi_3TSKKW7BxmamzgSt1rUSl5aM	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	82	1	12000	USD	2026-05-01 22:24:35.92+05:30	2026-05-01 22:24:21.04+05:30
147	stripe	cus_UOpA44ddTL4AQ2	pi_3TSMeA7BxmamzgSt1vPGIxQm	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	83	1	33900	USD	2026-05-02 00:53:00.417+05:30	2026-05-02 00:52:47.195+05:30
148	stripe	cus_UOpA44ddTL4AQ2	pi_3TSNKU7BxmamzgSt0CNlkesz	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	84	1	12000	USD	2026-05-02 01:36:42.913+05:30	2026-05-02 01:36:31.769+05:30
149	stripe	cus_UXSre93BEznsFw	pi_3TYNvr7BxmamzgSt0oScWkon	\N	Kaushika	Rodrigo		Ydhhrh	Xgesgexge	New 	Nw	14253	US	2175514421	succeeded	\N	rodrigokaushika@gmail.com	85	10	19800	USD	2026-05-18 15:29:25.758+05:30	2026-05-18 15:27:56.619+05:30
153	stripe	cus_UOpA44ddTL4AQ2	pi_3TcjsH7BxmamzgSt0U8JL0Nk	\N	Suren	Fernando	MDatay	123 Maple Streety		Toronto		M5V 2T6	CA	+94762797637	succeeded	1	\N	86	1	24000	USD	2026-05-30 15:42:36.105+05:30	2026-05-30 15:42:14.154+05:30
\.


--
-- Data for Name: transactions_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.transactions_items (_order, _parent_id, id, product_id, variant_id, quantity) FROM stdin;
1	1	69ea88671a0e3022f87547f5	4	\N	1
1	2	69ec7ad264141d218c9ec11c	4	\N	1
1	93	69efdf05bf530303747df6a5	1	\N	1
1	95	69efdf7bbf530303747df6a6	1	\N	1
1	96	69efe069bf530303747df6a7	1	\N	1
1	9	69ec94d54cc0bf052cf0aabb	4	\N	1
1	98	69efe1acb1bba63bacbc1638	1	\N	1
1	99	69efe2ec018285414c2f350d	1	\N	1
1	100	69efe4bc018285414c2f350e	1	\N	1
1	101	69efe4fc018285414c2f350f	1	\N	1
1	19	69ec96ac4be18a3934db2fcd	4	\N	1
1	102	69efe5c8018285414c2f3510	1	\N	1
1	103	69efe6a73cce0f32c03b30bb	1	\N	1
1	104	69efe70a3cce0f32c03b30bc	1	\N	1
1	24	69eca13f8fec753b987ea250	4	\N	1
1	25	69eca36c8fec753b987ea251	3	\N	1
1	105	69efe7c03cce0f32c03b30bd	1	\N	1
1	26	69edbe72668d103d30eb4a76	3	\N	1
1	27	69edc7847578611fdc655a66	3	\N	2
1	106	69efe9eb3cce0f32c03b30be	1	\N	1
1	29	69ee200c218a2b327400afa6	3	\N	1
1	30	69ee25e6218a2b327400afad	3	\N	1
1	107	69f07444af90310c240154a7	1	\N	1
1	63	69ee30bee3fc72371c57bfe4	1	\N	1
1	64	69ee3248e3fc72371c57bfec	3	\N	1
1	108	69f07e3382a2fb22e04a3944	1	\N	1
1	65	69ee3368e3fc72371c57bfed	3	\N	1
1	66	69ee34e3e3fc72371c57bfee	1	\N	1
1	109	69f0b6f6910bae3930ec5a1d	4	\N	1
1	67	69ee3504e3fc72371c57bfef	1	\N	1
2	67	69ee3508e3fc72371c57bff0	3	\N	1
1	110	69f0b8cd910bae3930ec5a1e	1	\N	1
1	68	69ee35bde3fc72371c57bff1	1	\N	1
1	69	69ee56dee3fc72371c57bff5	3	\N	1
1	111	69f0be3a9c13703c80fc6cee	1	\N	1
1	70	69ee5ca4e3fc72371c57bff6	1	\N	11
1	71	69ee646a6cdd2c0fb48e3bed	1	\N	1
1	112	69f0c248b2b0d93aa0d4f9be	1	\N	1
1	72	69ee6fc2f9e83a38dc51c6b4	1	\N	1
1	113	69f0c388b502ef4dc8283d4a	1	\N	1
1	73	69ef276c761ce0055c9a1b68	4	\N	2
2	73	69ef27fa761ce0055c9a1b6a	1	\N	1
1	74	69ef2911761ce0055c9a1b6b	4	\N	1
1	114	69f0c4f099dc5e466419d88e	1	\N	1
1	75	69ef29db761ce0055c9a1b6c	4	\N	1
1	76	69ef2a2b761ce0055c9a1b6d	4	\N	1
1	115	69f0c97a2bc6024538161c21	1	\N	1
1	77	69ef2d40761ce0055c9a1b6e	4	\N	1
1	78	69ef2e5e761ce0055c9a1b6f	4	\N	1
1	116	69f0ce4ecf75681834498f05	1	\N	1
1	79	69ef31e7761ce0055c9a1b70	4	\N	1
1	80	69efb6a5e6263433243670b2	4	\N	1
1	117	69f0d012cf75681834498f07	1	\N	1
1	81	69efd346e6263433243670b5	1	\N	1
1	118	69f0d3feca7c352460bc0b72	1	\N	1
1	84	69efd45a9216d127bc1c6fd8	4	\N	1
1	85	69efd4de31348c37ac6a387c	4	\N	1
1	120	69f0d56aca7c352460bc0b74	1	\N	1
1	86	69efd5b388a87a4c3463a595	4	\N	1
1	87	69efd726f6503853401d6186	4	\N	1
1	121	69f0d5d8b0fd382d60ee17f4	1	\N	1
1	88	69efd7ec1e4f372b7c6ccc7b	4	\N	1
1	89	69efd9f6ac6d59191817d6ba	4	\N	3
1	122	69f0d6a8b0fd382d60ee17f6	1	\N	1
1	90	69efda84ac6d59191817d6bb	1	\N	1
1	91	69efdaa1ac6d59191817d6bc	1	\N	1
1	123	69f0d8d719e2173b28c4db17	4	\N	1
1	92	69efdd48ac6d59191817d6bf	4	\N	1
1	124	69f0dc7d19e2173b28c4db19	4	\N	1
1	125	69f0f1c5dd16662c985c4b5f	4	\N	1
1	126	69f0f281dd16662c985c4b61	1	\N	1
1	127	69f0f311dd16662c985c4b63	4	\N	1
1	128	69f0f46ddd16662c985c4b65	1	\N	1
1	129	69f0f5070baa523d00cff085	4	\N	1
1	130	69f0f97deb29034834a172d5	4	\N	1
1	131	69f0fd31538c92332827c700	1	\N	1
1	132	69f0fd96538c92332827c702	1	\N	1
1	133	69f100acec209605009c5dae	4	\N	1
1	134	69f1025a0003714748b75550	4	\N	1
1	135	69f103d7eaadc047444f3b43	4	\N	1
1	136	69f10463eaadc047444f3b45	4	\N	1
1	137	69f104f3eaadc047444f3b47	4	\N	1
1	138	69f105fceaadc047444f3b49	4	\N	1
1	139	69f10710bc5b6b44d4014273	4	\N	1
1	140	69f108008fae453510542b15	4	\N	1
1	141	69f109848fae453510542b16	1	\N	1
1	142	69f1146a3b37480560b10a2a	4	\N	1
1	143	69f114cb3b37480560b10a2c	4	\N	2
1	144	69f231fc3b13531de068cea7	4	\N	1
1	145	69f37c7a21fbf53ab89cfda2	1	\N	1
1	146	69f4daa6d11a722bbc1b1ea2	4	\N	1
1	147	69f4fd521b5bb72858ddd472	4	\N	2
2	147	69f4fd761b5bb72858ddd473	1	\N	1
1	148	69f5079c165aed157c88b85f	4	\N	1
1	149	6a0ae25a6f659a004c2e493a	1	\N	2
1	153	6a1ab73a424d963be48dcc7e	4	\N	2
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, name, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, login_attempts, lock_until) FROM stdin;
1	suren	2026-04-22 18:58:44.356+05:30	2026-04-22 18:58:44.354+05:30	suren@empowerdigitaldata.com	\N	\N	a9a506f75a79871cb71a9611255888bd8d8c75e142a7ddaabed11c096c383c6e	e4c0fe0a373e4f478664d585aab28dfc1f5b983aa4ada1d524f0e420431a55884acfc2eaec72d72e1d2990dd3fc1a150553f9a62a9f66412da001357a134b94e5a644f412ebee299f1210ac19c3778f0c970c8c606aeaad0340d0de4cc5c52e9521d7ea0b223440c864999b6e06d847cc248dc3d5b4fe5ef5a4e20d251a8bb9c38e0315519de9fc5ec13cb6be427d844062b5c5bea7e703600c5c3c916ba9b87540cb47b8c9ebb2efbfcf507e46f6672e491074e56d96758a49dd73f0c96fa6ea6bbe5132e2670c9ce62532ea8bd661e6e2b26b2dd019abec856d843a190c5e9f354cecf2c5e412d32b79936bb0c6529dc980021185b50192f8359608a5364e1be3eef036b08e5f59dab914b00613c8b5d9c1ade92905efe6b19795612e865dbbce89728646ca2a07e6bb3b8d68cfcdecf780be1abab5977cfcd050ab7e4cbea82074f848cfe67d919486caf1f4dcf052f79767b3af1398de965fc8e3797b1d27dffdddf832f190f5c3c513039424eec4ea440d6aa221a5c6f02d3d6bc7f995b6814deb5965f72372ed908c7566933c1d99ab3f1f14a40fc087488f458e99dd0e9d9d1fbe0ffece46d6cea3cece8425ea1ab83acf53c4254c04d834e22765dd8a769d107975947fecd92f39331b3f51d8cf8a386d38bee4da154eba5f10b5b3e8dce5330c876d4b4d8b223920fbde3338290ef8fc8cd869b5de0ba3047b6fb98	0	\N
\.


--
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_roles ("order", parent_id, value, id) FROM stdin;
1	1	admin	24
\.


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_sessions (_order, _parent_id, id, created_at, expires_at) FROM stdin;
1	1	caa0e670-4e9a-464c-a9d5-45d42d9ed3cd	2026-05-30 13:58:42.626+05:30	2026-06-13 13:58:42.626+05:30
2	1	a1e19697-d7c4-494a-8fd7-5bf779e3264f	2026-06-03 23:53:49.89+05:30	2026-06-17 23:53:49.89+05:30
3	1	9486f7ac-b6d2-417f-abe5-f1968dbb6174	2026-06-07 10:15:08.323+05:30	2026-06-21 10:15:08.323+05:30
4	1	822d93da-5883-44d1-b335-05e870e60eb5	2026-06-09 11:17:54.13+05:30	2026-06-23 11:17:54.13+05:30
\.


--
-- Data for Name: variant_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.variant_options (id, _variantoptions_options_order, variant_type_id, label, value, updated_at, created_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: variant_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.variant_types (id, label, name, updated_at, created_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: variants; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.variants (id, title, product_id, inventory, price_in_u_s_d_enabled, price_in_u_s_d, updated_at, created_at, deleted_at, _status) FROM stdin;
\.


--
-- Data for Name: variants_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.variants_rels (id, "order", parent_id, path, variant_options_id) FROM stdin;
\.


--
-- Name: _pages_v_blocks_about_story_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_about_story_id_seq', 19, true);


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_archive_id_seq', 1, false);


--
-- Name: _pages_v_blocks_banner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_banner_id_seq', 1, false);


--
-- Name: _pages_v_blocks_carousel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_carousel_id_seq', 1, false);


--
-- Name: _pages_v_blocks_contact_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_contact_cards_id_seq', 27, true);


--
-- Name: _pages_v_blocks_contact_cards_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_contact_cards_items_id_seq', 81, true);


--
-- Name: _pages_v_blocks_contact_page_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_contact_page_cards_id_seq', 1, false);


--
-- Name: _pages_v_blocks_contact_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_contact_page_id_seq', 37, true);


--
-- Name: _pages_v_blocks_contact_page_store_hours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_contact_page_store_hours_id_seq', 43, true);


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_columns_id_seq', 16, true);


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_id_seq', 18, true);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_id_seq', 1, false);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_links_id_seq', 1, false);


--
-- Name: _pages_v_blocks_featured_cuts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_featured_cuts_id_seq', 87, true);


--
-- Name: _pages_v_blocks_featured_cuts_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_featured_cuts_items_id_seq', 232, true);


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_form_block_id_seq', 5, true);


--
-- Name: _pages_v_blocks_how_it_works_faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_how_it_works_faqs_id_seq', 114, true);


--
-- Name: _pages_v_blocks_how_it_works_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_how_it_works_id_seq', 19, true);


--
-- Name: _pages_v_blocks_how_it_works_steps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_how_it_works_steps_id_seq', 57, true);


--
-- Name: _pages_v_blocks_how_it_works_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_how_it_works_values_id_seq', 95, true);


--
-- Name: _pages_v_blocks_info_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_info_section_id_seq', 66, true);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_media_block_id_seq', 1, false);


--
-- Name: _pages_v_blocks_product_grid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_product_grid_id_seq', 26, true);


--
-- Name: _pages_v_blocks_social_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_social_links_id_seq', 15, true);


--
-- Name: _pages_v_blocks_social_links_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_social_links_items_id_seq', 60, true);


--
-- Name: _pages_v_blocks_testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_testimonials_id_seq', 1, false);


--
-- Name: _pages_v_blocks_testimonials_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_testimonials_items_id_seq', 1, false);


--
-- Name: _pages_v_blocks_three_item_grid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_three_item_grid_id_seq', 94, true);


--
-- Name: _pages_v_blocks_visit_section_hours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_visit_section_hours_id_seq', 48, true);


--
-- Name: _pages_v_blocks_visit_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_visit_section_id_seq', 16, true);


--
-- Name: _pages_v_blocks_visit_section_image_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_visit_section_image_links_id_seq', 1, false);


--
-- Name: _pages_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_id_seq', 118, true);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_rels_id_seq', 235, true);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_version_hero_links_id_seq', 1, false);


--
-- Name: _pages_v_version_hero_slides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_version_hero_slides_id_seq', 84, true);


--
-- Name: _products_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_id_seq', 88, true);


--
-- Name: _products_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_rels_id_seq', 13, true);


--
-- Name: _products_v_version_badges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_version_badges_id_seq', 189, true);


--
-- Name: _products_v_version_product_gallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_version_product_gallery_id_seq', 110, true);


--
-- Name: _products_v_version_quality_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_version_quality_id_seq', 234, true);


--
-- Name: _products_v_version_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_version_reviews_id_seq', 1, false);


--
-- Name: _products_v_version_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_version_tags_id_seq', 118, true);


--
-- Name: _products_v_version_whats_inside_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_version_whats_inside_id_seq', 269, true);


--
-- Name: _variants_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._variants_v_id_seq', 1, false);


--
-- Name: _variants_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._variants_v_rels_id_seq', 1, false);


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.addresses_id_seq', 3, true);


--
-- Name: branch_holidays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.branch_holidays_id_seq', 1, false);


--
-- Name: branch_holidays_service_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.branch_holidays_service_types_id_seq', 1, false);


--
-- Name: branch_inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.branch_inventory_id_seq', 2, true);


--
-- Name: branches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.branches_id_seq', 1, true);


--
-- Name: cart_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cart_settings_id_seq', 1, true);


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.carts_id_seq', 12, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, true);


--
-- Name: cut_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cut_types_id_seq', 1, false);


--
-- Name: flavors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.flavors_id_seq', 1, false);


--
-- Name: footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.footer_id_seq', 1, true);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.footer_rels_id_seq', 1, false);


--
-- Name: form_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.form_submissions_id_seq', 1, true);


--
-- Name: forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.forms_id_seq', 1, true);


--
-- Name: fulfillment_schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fulfillment_schedules_id_seq', 4, true);


--
-- Name: fulfillment_schedules_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fulfillment_schedules_rels_id_seq', 16, true);


--
-- Name: fulfillment_schedules_weekly_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fulfillment_schedules_weekly_days_id_seq', 44, true);


--
-- Name: header_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.header_id_seq', 1, true);


--
-- Name: header_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.header_rels_id_seq', 47, true);


--
-- Name: meat_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.meat_types_id_seq', 1, false);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.media_id_seq', 43, true);


--
-- Name: newsletter_promo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.newsletter_promo_id_seq', 1, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.orders_id_seq', 86, true);


--
-- Name: orders_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.orders_rels_id_seq', 151, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_id_seq', 8, true);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_rels_id_seq', 57, true);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_kv_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 450, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 852, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 11, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 39, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 333, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_id_seq', 7, true);


--
-- Name: products_quality_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_quality_id_seq', 62, true);


--
-- Name: products_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_rels_id_seq', 2, true);


--
-- Name: products_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_tags_id_seq', 34, true);


--
-- Name: qualities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.qualities_id_seq', 1, false);


--
-- Name: shop_luxury_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shop_luxury_page_id_seq', 1, true);


--
-- Name: shop_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shop_page_id_seq', 1, false);


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.transactions_id_seq', 153, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_roles_id_seq', 24, true);


--
-- Name: variant_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.variant_options_id_seq', 1, false);


--
-- Name: variant_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.variant_types_id_seq', 1, false);


--
-- Name: variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.variants_id_seq', 1, false);


--
-- Name: variants_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.variants_rels_id_seq', 1, false);


--
-- Name: _pages_v_blocks_about_story _pages_v_blocks_about_story_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_about_story
    ADD CONSTRAINT _pages_v_blocks_about_story_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_banner _pages_v_blocks_banner_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_banner
    ADD CONSTRAINT _pages_v_blocks_banner_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_carousel _pages_v_blocks_carousel_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_carousel
    ADD CONSTRAINT _pages_v_blocks_carousel_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_contact_cards_items _pages_v_blocks_contact_cards_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_cards_items
    ADD CONSTRAINT _pages_v_blocks_contact_cards_items_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_contact_cards _pages_v_blocks_contact_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_cards
    ADD CONSTRAINT _pages_v_blocks_contact_cards_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_contact_page_cards _pages_v_blocks_contact_page_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page_cards
    ADD CONSTRAINT _pages_v_blocks_contact_page_cards_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_contact_page _pages_v_blocks_contact_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page
    ADD CONSTRAINT _pages_v_blocks_contact_page_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_contact_page_store_hours _pages_v_blocks_contact_page_store_hours_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page_store_hours
    ADD CONSTRAINT _pages_v_blocks_contact_page_store_hours_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_featured_cuts_items _pages_v_blocks_featured_cuts_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_featured_cuts_items
    ADD CONSTRAINT _pages_v_blocks_featured_cuts_items_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_featured_cuts _pages_v_blocks_featured_cuts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_featured_cuts
    ADD CONSTRAINT _pages_v_blocks_featured_cuts_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_how_it_works_faqs _pages_v_blocks_how_it_works_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works_faqs
    ADD CONSTRAINT _pages_v_blocks_how_it_works_faqs_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_how_it_works _pages_v_blocks_how_it_works_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works
    ADD CONSTRAINT _pages_v_blocks_how_it_works_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_how_it_works_steps _pages_v_blocks_how_it_works_steps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works_steps
    ADD CONSTRAINT _pages_v_blocks_how_it_works_steps_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_how_it_works_values _pages_v_blocks_how_it_works_values_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works_values
    ADD CONSTRAINT _pages_v_blocks_how_it_works_values_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_info_section _pages_v_blocks_info_section_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_info_section
    ADD CONSTRAINT _pages_v_blocks_info_section_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_product_grid _pages_v_blocks_product_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_product_grid
    ADD CONSTRAINT _pages_v_blocks_product_grid_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_social_links_items _pages_v_blocks_social_links_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_social_links_items
    ADD CONSTRAINT _pages_v_blocks_social_links_items_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_social_links _pages_v_blocks_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_social_links
    ADD CONSTRAINT _pages_v_blocks_social_links_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_testimonials_items _pages_v_blocks_testimonials_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_items
    ADD CONSTRAINT _pages_v_blocks_testimonials_items_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_testimonials _pages_v_blocks_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials
    ADD CONSTRAINT _pages_v_blocks_testimonials_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_three_item_grid _pages_v_blocks_three_item_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_three_item_grid
    ADD CONSTRAINT _pages_v_blocks_three_item_grid_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_visit_section_hours _pages_v_blocks_visit_section_hours_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section_hours
    ADD CONSTRAINT _pages_v_blocks_visit_section_hours_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_visit_section_image_links _pages_v_blocks_visit_section_image_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section_image_links
    ADD CONSTRAINT _pages_v_blocks_visit_section_image_links_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_visit_section _pages_v_blocks_visit_section_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section
    ADD CONSTRAINT _pages_v_blocks_visit_section_pkey PRIMARY KEY (id);


--
-- Name: _pages_v _pages_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_rels _pages_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_version_hero_slides _pages_v_version_hero_slides_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_slides
    ADD CONSTRAINT _pages_v_version_hero_slides_pkey PRIMARY KEY (id);


--
-- Name: _products_v _products_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v
    ADD CONSTRAINT _products_v_pkey PRIMARY KEY (id);


--
-- Name: _products_v_rels _products_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_rels
    ADD CONSTRAINT _products_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _products_v_version_badges _products_v_version_badges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_badges
    ADD CONSTRAINT _products_v_version_badges_pkey PRIMARY KEY (id);


--
-- Name: _products_v_version_product_gallery _products_v_version_product_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_product_gallery
    ADD CONSTRAINT _products_v_version_product_gallery_pkey PRIMARY KEY (id);


--
-- Name: _products_v_version_quality _products_v_version_quality_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_quality
    ADD CONSTRAINT _products_v_version_quality_pkey PRIMARY KEY (id);


--
-- Name: _products_v_version_reviews _products_v_version_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_reviews
    ADD CONSTRAINT _products_v_version_reviews_pkey PRIMARY KEY (id);


--
-- Name: _products_v_version_tags _products_v_version_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_tags
    ADD CONSTRAINT _products_v_version_tags_pkey PRIMARY KEY (id);


--
-- Name: _products_v_version_whats_inside _products_v_version_whats_inside_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_whats_inside
    ADD CONSTRAINT _products_v_version_whats_inside_pkey PRIMARY KEY (id);


--
-- Name: _variants_v _variants_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._variants_v
    ADD CONSTRAINT _variants_v_pkey PRIMARY KEY (id);


--
-- Name: _variants_v_rels _variants_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._variants_v_rels
    ADD CONSTRAINT _variants_v_rels_pkey PRIMARY KEY (id);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: branch_holidays branch_holidays_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_holidays
    ADD CONSTRAINT branch_holidays_pkey PRIMARY KEY (id);


--
-- Name: branch_holidays_service_types branch_holidays_service_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_holidays_service_types
    ADD CONSTRAINT branch_holidays_service_types_pkey PRIMARY KEY (id);


--
-- Name: branch_inventory branch_inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_inventory
    ADD CONSTRAINT branch_inventory_pkey PRIMARY KEY (id);


--
-- Name: branches branches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branches
    ADD CONSTRAINT branches_pkey PRIMARY KEY (id);


--
-- Name: cart_settings cart_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_settings
    ADD CONSTRAINT cart_settings_pkey PRIMARY KEY (id);


--
-- Name: carts_items carts_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carts_items
    ADD CONSTRAINT carts_items_pkey PRIMARY KEY (id);


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: cut_types cut_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cut_types
    ADD CONSTRAINT cut_types_pkey PRIMARY KEY (id);


--
-- Name: flavors flavors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.flavors
    ADD CONSTRAINT flavors_pkey PRIMARY KEY (id);


--
-- Name: footer_nav_items footer_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_nav_items
    ADD CONSTRAINT footer_nav_items_pkey PRIMARY KEY (id);


--
-- Name: footer footer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer
    ADD CONSTRAINT footer_pkey PRIMARY KEY (id);


--
-- Name: footer_rels footer_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pkey PRIMARY KEY (id);


--
-- Name: footer_social_links footer_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_social_links
    ADD CONSTRAINT footer_social_links_pkey PRIMARY KEY (id);


--
-- Name: form_submissions form_submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_submissions
    ADD CONSTRAINT form_submissions_pkey PRIMARY KEY (id);


--
-- Name: form_submissions_submission_data form_submissions_submission_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_submissions_submission_data
    ADD CONSTRAINT form_submissions_submission_data_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_checkbox
    ADD CONSTRAINT forms_blocks_checkbox_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_country forms_blocks_country_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_country
    ADD CONSTRAINT forms_blocks_country_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_email forms_blocks_email_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_email
    ADD CONSTRAINT forms_blocks_email_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_message forms_blocks_message_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_message
    ADD CONSTRAINT forms_blocks_message_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_number forms_blocks_number_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_number
    ADD CONSTRAINT forms_blocks_number_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_select_options forms_blocks_select_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_select_options
    ADD CONSTRAINT forms_blocks_select_options_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_select forms_blocks_select_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_select
    ADD CONSTRAINT forms_blocks_select_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_state forms_blocks_state_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_state
    ADD CONSTRAINT forms_blocks_state_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_text forms_blocks_text_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_text
    ADD CONSTRAINT forms_blocks_text_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_textarea forms_blocks_textarea_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_textarea
    ADD CONSTRAINT forms_blocks_textarea_pkey PRIMARY KEY (id);


--
-- Name: forms_emails forms_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_emails
    ADD CONSTRAINT forms_emails_pkey PRIMARY KEY (id);


--
-- Name: forms forms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms
    ADD CONSTRAINT forms_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_schedules_available_dates fulfillment_schedules_available_dates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_available_dates
    ADD CONSTRAINT fulfillment_schedules_available_dates_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_schedules fulfillment_schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules
    ADD CONSTRAINT fulfillment_schedules_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_schedules_postal_codes fulfillment_schedules_postal_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_postal_codes
    ADD CONSTRAINT fulfillment_schedules_postal_codes_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_schedules_rels fulfillment_schedules_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_rels
    ADD CONSTRAINT fulfillment_schedules_rels_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_schedules_time_slots fulfillment_schedules_time_slots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_time_slots
    ADD CONSTRAINT fulfillment_schedules_time_slots_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_schedules_weekly_days fulfillment_schedules_weekly_days_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_weekly_days
    ADD CONSTRAINT fulfillment_schedules_weekly_days_pkey PRIMARY KEY (id);


--
-- Name: header_nav_items header_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_pkey PRIMARY KEY (id);


--
-- Name: header header_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header
    ADD CONSTRAINT header_pkey PRIMARY KEY (id);


--
-- Name: header_rels header_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pkey PRIMARY KEY (id);


--
-- Name: meat_types meat_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.meat_types
    ADD CONSTRAINT meat_types_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: newsletter_promo newsletter_promo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.newsletter_promo
    ADD CONSTRAINT newsletter_promo_pkey PRIMARY KEY (id);


--
-- Name: orders_items orders_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_items
    ADD CONSTRAINT orders_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: orders_purchase_types orders_purchase_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_purchase_types
    ADD CONSTRAINT orders_purchase_types_pkey PRIMARY KEY (id);


--
-- Name: orders_rels orders_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_rels
    ADD CONSTRAINT orders_rels_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_about_story pages_blocks_about_story_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_story
    ADD CONSTRAINT pages_blocks_about_story_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_archive pages_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_banner pages_blocks_banner_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_banner
    ADD CONSTRAINT pages_blocks_banner_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_carousel pages_blocks_carousel_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_carousel
    ADD CONSTRAINT pages_blocks_carousel_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_contact_cards_items pages_blocks_contact_cards_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_cards_items
    ADD CONSTRAINT pages_blocks_contact_cards_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_contact_cards pages_blocks_contact_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_cards
    ADD CONSTRAINT pages_blocks_contact_cards_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_contact_page_cards pages_blocks_contact_page_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_page_cards
    ADD CONSTRAINT pages_blocks_contact_page_cards_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_contact_page pages_blocks_contact_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_page
    ADD CONSTRAINT pages_blocks_contact_page_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_contact_page_store_hours pages_blocks_contact_page_store_hours_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_page_store_hours
    ADD CONSTRAINT pages_blocks_contact_page_store_hours_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content pages_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta pages_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_featured_cuts_items pages_blocks_featured_cuts_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_cuts_items
    ADD CONSTRAINT pages_blocks_featured_cuts_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_featured_cuts pages_blocks_featured_cuts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_cuts
    ADD CONSTRAINT pages_blocks_featured_cuts_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_form_block pages_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_how_it_works_faqs pages_blocks_how_it_works_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works_faqs
    ADD CONSTRAINT pages_blocks_how_it_works_faqs_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_how_it_works pages_blocks_how_it_works_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works
    ADD CONSTRAINT pages_blocks_how_it_works_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_how_it_works_steps pages_blocks_how_it_works_steps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works_steps
    ADD CONSTRAINT pages_blocks_how_it_works_steps_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_how_it_works_values pages_blocks_how_it_works_values_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works_values
    ADD CONSTRAINT pages_blocks_how_it_works_values_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_info_section pages_blocks_info_section_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_section
    ADD CONSTRAINT pages_blocks_info_section_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_block pages_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_product_grid pages_blocks_product_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_product_grid
    ADD CONSTRAINT pages_blocks_product_grid_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_social_links_items pages_blocks_social_links_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_social_links_items
    ADD CONSTRAINT pages_blocks_social_links_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_social_links pages_blocks_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_social_links
    ADD CONSTRAINT pages_blocks_social_links_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_testimonials_items pages_blocks_testimonials_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_testimonials_items
    ADD CONSTRAINT pages_blocks_testimonials_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_testimonials pages_blocks_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_testimonials
    ADD CONSTRAINT pages_blocks_testimonials_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_three_item_grid pages_blocks_three_item_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_three_item_grid
    ADD CONSTRAINT pages_blocks_three_item_grid_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_visit_section_hours pages_blocks_visit_section_hours_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_visit_section_hours
    ADD CONSTRAINT pages_blocks_visit_section_hours_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_visit_section_image_links pages_blocks_visit_section_image_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_visit_section_image_links
    ADD CONSTRAINT pages_blocks_visit_section_image_links_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_visit_section pages_blocks_visit_section_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_visit_section
    ADD CONSTRAINT pages_blocks_visit_section_pkey PRIMARY KEY (id);


--
-- Name: pages_hero_links pages_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_pkey PRIMARY KEY (id);


--
-- Name: pages_hero_slides pages_hero_slides_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_slides
    ADD CONSTRAINT pages_hero_slides_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_rels pages_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_kv payload_kv_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_kv
    ADD CONSTRAINT payload_kv_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents
    ADD CONSTRAINT payload_locked_documents_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations
    ADD CONSTRAINT payload_migrations_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences
    ADD CONSTRAINT payload_preferences_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_pkey PRIMARY KEY (id);


--
-- Name: products_badges products_badges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_badges
    ADD CONSTRAINT products_badges_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: products_product_gallery products_product_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_product_gallery
    ADD CONSTRAINT products_product_gallery_pkey PRIMARY KEY (id);


--
-- Name: products_quality products_quality_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_quality
    ADD CONSTRAINT products_quality_pkey PRIMARY KEY (id);


--
-- Name: products_rels products_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_rels
    ADD CONSTRAINT products_rels_pkey PRIMARY KEY (id);


--
-- Name: products_reviews products_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_reviews
    ADD CONSTRAINT products_reviews_pkey PRIMARY KEY (id);


--
-- Name: products_tags products_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_tags
    ADD CONSTRAINT products_tags_pkey PRIMARY KEY (id);


--
-- Name: products_whats_inside products_whats_inside_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_whats_inside
    ADD CONSTRAINT products_whats_inside_pkey PRIMARY KEY (id);


--
-- Name: qualities qualities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.qualities
    ADD CONSTRAINT qualities_pkey PRIMARY KEY (id);


--
-- Name: shop_luxury_page shop_luxury_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shop_luxury_page
    ADD CONSTRAINT shop_luxury_page_pkey PRIMARY KEY (id);


--
-- Name: shop_page shop_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shop_page
    ADD CONSTRAINT shop_page_pkey PRIMARY KEY (id);


--
-- Name: transactions_items transactions_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions_items
    ADD CONSTRAINT transactions_items_pkey PRIMARY KEY (id);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_roles users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (id);


--
-- Name: users_sessions users_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_pkey PRIMARY KEY (id);


--
-- Name: variant_options variant_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_options
    ADD CONSTRAINT variant_options_pkey PRIMARY KEY (id);


--
-- Name: variant_types variant_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_types
    ADD CONSTRAINT variant_types_pkey PRIMARY KEY (id);


--
-- Name: variants variants_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants
    ADD CONSTRAINT variants_pkey PRIMARY KEY (id);


--
-- Name: variants_rels variants_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants_rels
    ADD CONSTRAINT variants_rels_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_autosave_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_autosave_idx ON public._pages_v USING btree (autosave);


--
-- Name: _pages_v_blocks_about_story_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_about_story_image_idx ON public._pages_v_blocks_about_story USING btree (image_id);


--
-- Name: _pages_v_blocks_about_story_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_about_story_order_idx ON public._pages_v_blocks_about_story USING btree (_order);


--
-- Name: _pages_v_blocks_about_story_page_intro_page_intro_hero_i_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_about_story_page_intro_page_intro_hero_i_idx ON public._pages_v_blocks_about_story USING btree (page_intro_hero_image_id);


--
-- Name: _pages_v_blocks_about_story_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_about_story_parent_id_idx ON public._pages_v_blocks_about_story USING btree (_parent_id);


--
-- Name: _pages_v_blocks_about_story_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_about_story_path_idx ON public._pages_v_blocks_about_story USING btree (_path);


--
-- Name: _pages_v_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_archive_order_idx ON public._pages_v_blocks_archive USING btree (_order);


--
-- Name: _pages_v_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_archive_parent_id_idx ON public._pages_v_blocks_archive USING btree (_parent_id);


--
-- Name: _pages_v_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_archive_path_idx ON public._pages_v_blocks_archive USING btree (_path);


--
-- Name: _pages_v_blocks_banner_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_banner_order_idx ON public._pages_v_blocks_banner USING btree (_order);


--
-- Name: _pages_v_blocks_banner_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_banner_parent_id_idx ON public._pages_v_blocks_banner USING btree (_parent_id);


--
-- Name: _pages_v_blocks_banner_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_banner_path_idx ON public._pages_v_blocks_banner USING btree (_path);


--
-- Name: _pages_v_blocks_carousel_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_carousel_order_idx ON public._pages_v_blocks_carousel USING btree (_order);


--
-- Name: _pages_v_blocks_carousel_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_carousel_parent_id_idx ON public._pages_v_blocks_carousel USING btree (_parent_id);


--
-- Name: _pages_v_blocks_carousel_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_carousel_path_idx ON public._pages_v_blocks_carousel USING btree (_path);


--
-- Name: _pages_v_blocks_contact_cards_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_cards_items_order_idx ON public._pages_v_blocks_contact_cards_items USING btree (_order);


--
-- Name: _pages_v_blocks_contact_cards_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_cards_items_parent_id_idx ON public._pages_v_blocks_contact_cards_items USING btree (_parent_id);


--
-- Name: _pages_v_blocks_contact_cards_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_cards_order_idx ON public._pages_v_blocks_contact_cards USING btree (_order);


--
-- Name: _pages_v_blocks_contact_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_cards_parent_id_idx ON public._pages_v_blocks_contact_cards USING btree (_parent_id);


--
-- Name: _pages_v_blocks_contact_cards_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_cards_path_idx ON public._pages_v_blocks_contact_cards USING btree (_path);


--
-- Name: _pages_v_blocks_contact_page_cards_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_page_cards_order_idx ON public._pages_v_blocks_contact_page_cards USING btree (_order);


--
-- Name: _pages_v_blocks_contact_page_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_page_cards_parent_id_idx ON public._pages_v_blocks_contact_page_cards USING btree (_parent_id);


--
-- Name: _pages_v_blocks_contact_page_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_page_form_idx ON public._pages_v_blocks_contact_page USING btree (form_id);


--
-- Name: _pages_v_blocks_contact_page_map_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_page_map_image_idx ON public._pages_v_blocks_contact_page USING btree (map_image_id);


--
-- Name: _pages_v_blocks_contact_page_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_page_order_idx ON public._pages_v_blocks_contact_page USING btree (_order);


--
-- Name: _pages_v_blocks_contact_page_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_page_parent_id_idx ON public._pages_v_blocks_contact_page USING btree (_parent_id);


--
-- Name: _pages_v_blocks_contact_page_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_page_path_idx ON public._pages_v_blocks_contact_page USING btree (_path);


--
-- Name: _pages_v_blocks_contact_page_store_hours_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_page_store_hours_order_idx ON public._pages_v_blocks_contact_page_store_hours USING btree (_order);


--
-- Name: _pages_v_blocks_contact_page_store_hours_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_contact_page_store_hours_parent_id_idx ON public._pages_v_blocks_contact_page_store_hours USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_columns_order_idx ON public._pages_v_blocks_content_columns USING btree (_order);


--
-- Name: _pages_v_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_columns_parent_id_idx ON public._pages_v_blocks_content_columns USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_order_idx ON public._pages_v_blocks_content USING btree (_order);


--
-- Name: _pages_v_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_parent_id_idx ON public._pages_v_blocks_content USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_path_idx ON public._pages_v_blocks_content USING btree (_path);


--
-- Name: _pages_v_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_cta_links_order_idx ON public._pages_v_blocks_cta_links USING btree (_order);


--
-- Name: _pages_v_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_cta_links_parent_id_idx ON public._pages_v_blocks_cta_links USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_cta_order_idx ON public._pages_v_blocks_cta USING btree (_order);


--
-- Name: _pages_v_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_cta_parent_id_idx ON public._pages_v_blocks_cta USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_cta_path_idx ON public._pages_v_blocks_cta USING btree (_path);


--
-- Name: _pages_v_blocks_featured_cuts_items_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_featured_cuts_items_image_idx ON public._pages_v_blocks_featured_cuts_items USING btree (image_id);


--
-- Name: _pages_v_blocks_featured_cuts_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_featured_cuts_items_order_idx ON public._pages_v_blocks_featured_cuts_items USING btree (_order);


--
-- Name: _pages_v_blocks_featured_cuts_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_featured_cuts_items_parent_id_idx ON public._pages_v_blocks_featured_cuts_items USING btree (_parent_id);


--
-- Name: _pages_v_blocks_featured_cuts_items_product_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_featured_cuts_items_product_idx ON public._pages_v_blocks_featured_cuts_items USING btree (product_id);


--
-- Name: _pages_v_blocks_featured_cuts_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_featured_cuts_order_idx ON public._pages_v_blocks_featured_cuts USING btree (_order);


--
-- Name: _pages_v_blocks_featured_cuts_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_featured_cuts_parent_id_idx ON public._pages_v_blocks_featured_cuts USING btree (_parent_id);


--
-- Name: _pages_v_blocks_featured_cuts_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_featured_cuts_path_idx ON public._pages_v_blocks_featured_cuts USING btree (_path);


--
-- Name: _pages_v_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_form_block_form_idx ON public._pages_v_blocks_form_block USING btree (form_id);


--
-- Name: _pages_v_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_form_block_order_idx ON public._pages_v_blocks_form_block USING btree (_order);


--
-- Name: _pages_v_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_form_block_parent_id_idx ON public._pages_v_blocks_form_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_form_block_path_idx ON public._pages_v_blocks_form_block USING btree (_path);


--
-- Name: _pages_v_blocks_how_it_works_bottom_cta_background_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_bottom_cta_background_image_idx ON public._pages_v_blocks_how_it_works USING btree (bottom_cta_background_image_id);


--
-- Name: _pages_v_blocks_how_it_works_faqs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_faqs_order_idx ON public._pages_v_blocks_how_it_works_faqs USING btree (_order);


--
-- Name: _pages_v_blocks_how_it_works_faqs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_faqs_parent_id_idx ON public._pages_v_blocks_how_it_works_faqs USING btree (_parent_id);


--
-- Name: _pages_v_blocks_how_it_works_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_order_idx ON public._pages_v_blocks_how_it_works USING btree (_order);


--
-- Name: _pages_v_blocks_how_it_works_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_parent_id_idx ON public._pages_v_blocks_how_it_works USING btree (_parent_id);


--
-- Name: _pages_v_blocks_how_it_works_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_path_idx ON public._pages_v_blocks_how_it_works USING btree (_path);


--
-- Name: _pages_v_blocks_how_it_works_steps_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_steps_image_idx ON public._pages_v_blocks_how_it_works_steps USING btree (image_id);


--
-- Name: _pages_v_blocks_how_it_works_steps_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_steps_order_idx ON public._pages_v_blocks_how_it_works_steps USING btree (_order);


--
-- Name: _pages_v_blocks_how_it_works_steps_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_steps_parent_id_idx ON public._pages_v_blocks_how_it_works_steps USING btree (_parent_id);


--
-- Name: _pages_v_blocks_how_it_works_values_background_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_values_background_image_idx ON public._pages_v_blocks_how_it_works USING btree (values_background_image_id);


--
-- Name: _pages_v_blocks_how_it_works_values_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_values_order_idx ON public._pages_v_blocks_how_it_works_values USING btree (_order);


--
-- Name: _pages_v_blocks_how_it_works_values_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_how_it_works_values_parent_id_idx ON public._pages_v_blocks_how_it_works_values USING btree (_parent_id);


--
-- Name: _pages_v_blocks_info_section_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_info_section_image_idx ON public._pages_v_blocks_info_section USING btree (image_id);


--
-- Name: _pages_v_blocks_info_section_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_info_section_order_idx ON public._pages_v_blocks_info_section USING btree (_order);


--
-- Name: _pages_v_blocks_info_section_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_info_section_parent_id_idx ON public._pages_v_blocks_info_section USING btree (_parent_id);


--
-- Name: _pages_v_blocks_info_section_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_info_section_path_idx ON public._pages_v_blocks_info_section USING btree (_path);


--
-- Name: _pages_v_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_media_idx ON public._pages_v_blocks_media_block USING btree (media_id);


--
-- Name: _pages_v_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_order_idx ON public._pages_v_blocks_media_block USING btree (_order);


--
-- Name: _pages_v_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_parent_id_idx ON public._pages_v_blocks_media_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_path_idx ON public._pages_v_blocks_media_block USING btree (_path);


--
-- Name: _pages_v_blocks_product_grid_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_product_grid_order_idx ON public._pages_v_blocks_product_grid USING btree (_order);


--
-- Name: _pages_v_blocks_product_grid_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_product_grid_parent_id_idx ON public._pages_v_blocks_product_grid USING btree (_parent_id);


--
-- Name: _pages_v_blocks_product_grid_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_product_grid_path_idx ON public._pages_v_blocks_product_grid USING btree (_path);


--
-- Name: _pages_v_blocks_social_links_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_social_links_items_order_idx ON public._pages_v_blocks_social_links_items USING btree (_order);


--
-- Name: _pages_v_blocks_social_links_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_social_links_items_parent_id_idx ON public._pages_v_blocks_social_links_items USING btree (_parent_id);


--
-- Name: _pages_v_blocks_social_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_social_links_order_idx ON public._pages_v_blocks_social_links USING btree (_order);


--
-- Name: _pages_v_blocks_social_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_social_links_parent_id_idx ON public._pages_v_blocks_social_links USING btree (_parent_id);


--
-- Name: _pages_v_blocks_social_links_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_social_links_path_idx ON public._pages_v_blocks_social_links USING btree (_path);


--
-- Name: _pages_v_blocks_testimonials_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_items_order_idx ON public._pages_v_blocks_testimonials_items USING btree (_order);


--
-- Name: _pages_v_blocks_testimonials_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_items_parent_id_idx ON public._pages_v_blocks_testimonials_items USING btree (_parent_id);


--
-- Name: _pages_v_blocks_testimonials_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_order_idx ON public._pages_v_blocks_testimonials USING btree (_order);


--
-- Name: _pages_v_blocks_testimonials_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_parent_id_idx ON public._pages_v_blocks_testimonials USING btree (_parent_id);


--
-- Name: _pages_v_blocks_testimonials_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_path_idx ON public._pages_v_blocks_testimonials USING btree (_path);


--
-- Name: _pages_v_blocks_three_item_grid_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_three_item_grid_order_idx ON public._pages_v_blocks_three_item_grid USING btree (_order);


--
-- Name: _pages_v_blocks_three_item_grid_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_three_item_grid_parent_id_idx ON public._pages_v_blocks_three_item_grid USING btree (_parent_id);


--
-- Name: _pages_v_blocks_three_item_grid_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_three_item_grid_path_idx ON public._pages_v_blocks_three_item_grid USING btree (_path);


--
-- Name: _pages_v_blocks_visit_section_hours_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_visit_section_hours_order_idx ON public._pages_v_blocks_visit_section_hours USING btree (_order);


--
-- Name: _pages_v_blocks_visit_section_hours_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_visit_section_hours_parent_id_idx ON public._pages_v_blocks_visit_section_hours USING btree (_parent_id);


--
-- Name: _pages_v_blocks_visit_section_image_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_visit_section_image_links_order_idx ON public._pages_v_blocks_visit_section_image_links USING btree (_order);


--
-- Name: _pages_v_blocks_visit_section_image_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_visit_section_image_links_parent_id_idx ON public._pages_v_blocks_visit_section_image_links USING btree (_parent_id);


--
-- Name: _pages_v_blocks_visit_section_map_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_visit_section_map_image_idx ON public._pages_v_blocks_visit_section USING btree (map_image_id);


--
-- Name: _pages_v_blocks_visit_section_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_visit_section_order_idx ON public._pages_v_blocks_visit_section USING btree (_order);


--
-- Name: _pages_v_blocks_visit_section_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_visit_section_parent_id_idx ON public._pages_v_blocks_visit_section USING btree (_parent_id);


--
-- Name: _pages_v_blocks_visit_section_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_visit_section_path_idx ON public._pages_v_blocks_visit_section USING btree (_path);


--
-- Name: _pages_v_blocks_visit_section_storefront_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_visit_section_storefront_image_idx ON public._pages_v_blocks_visit_section USING btree (storefront_image_id);


--
-- Name: _pages_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_created_at_idx ON public._pages_v USING btree (created_at);


--
-- Name: _pages_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_latest_idx ON public._pages_v USING btree (latest);


--
-- Name: _pages_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_parent_idx ON public._pages_v USING btree (parent_id);


--
-- Name: _pages_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_categories_id_idx ON public._pages_v_rels USING btree (categories_id);


--
-- Name: _pages_v_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_order_idx ON public._pages_v_rels USING btree ("order");


--
-- Name: _pages_v_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_pages_id_idx ON public._pages_v_rels USING btree (pages_id);


--
-- Name: _pages_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_parent_idx ON public._pages_v_rels USING btree (parent_id);


--
-- Name: _pages_v_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_path_idx ON public._pages_v_rels USING btree (path);


--
-- Name: _pages_v_rels_products_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_products_id_idx ON public._pages_v_rels USING btree (products_id);


--
-- Name: _pages_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_updated_at_idx ON public._pages_v USING btree (updated_at);


--
-- Name: _pages_v_version_hero_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_links_order_idx ON public._pages_v_version_hero_links USING btree (_order);


--
-- Name: _pages_v_version_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_links_parent_id_idx ON public._pages_v_version_hero_links USING btree (_parent_id);


--
-- Name: _pages_v_version_hero_slides_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_slides_media_idx ON public._pages_v_version_hero_slides USING btree (media_id);


--
-- Name: _pages_v_version_hero_slides_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_slides_order_idx ON public._pages_v_version_hero_slides USING btree (_order);


--
-- Name: _pages_v_version_hero_slides_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_slides_parent_id_idx ON public._pages_v_version_hero_slides USING btree (_parent_id);


--
-- Name: _pages_v_version_hero_version_hero_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_version_hero_media_idx ON public._pages_v USING btree (version_hero_media_id);


--
-- Name: _pages_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_meta_version_meta_image_idx ON public._pages_v USING btree (version_meta_image_id);


--
-- Name: _pages_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version__status_idx ON public._pages_v USING btree (version__status);


--
-- Name: _pages_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version_created_at_idx ON public._pages_v USING btree (version_created_at);


--
-- Name: _pages_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version_slug_idx ON public._pages_v USING btree (version_slug);


--
-- Name: _pages_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version_updated_at_idx ON public._pages_v USING btree (version_updated_at);


--
-- Name: _products_v_autosave_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_autosave_idx ON public._products_v USING btree (autosave);


--
-- Name: _products_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_created_at_idx ON public._products_v USING btree (created_at);


--
-- Name: _products_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_latest_idx ON public._products_v USING btree (latest);


--
-- Name: _products_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_parent_idx ON public._products_v USING btree (parent_id);


--
-- Name: _products_v_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_rels_order_idx ON public._products_v_rels USING btree ("order");


--
-- Name: _products_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_rels_parent_idx ON public._products_v_rels USING btree (parent_id);


--
-- Name: _products_v_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_rels_path_idx ON public._products_v_rels USING btree (path);


--
-- Name: _products_v_rels_variant_types_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_rels_variant_types_id_idx ON public._products_v_rels USING btree (variant_types_id);


--
-- Name: _products_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_updated_at_idx ON public._products_v USING btree (updated_at);


--
-- Name: _products_v_version_badges_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_badges_order_idx ON public._products_v_version_badges USING btree (_order);


--
-- Name: _products_v_version_badges_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_badges_parent_id_idx ON public._products_v_version_badges USING btree (_parent_id);


--
-- Name: _products_v_version_product_gallery_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_product_gallery_image_idx ON public._products_v_version_product_gallery USING btree (image_id);


--
-- Name: _products_v_version_product_gallery_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_product_gallery_order_idx ON public._products_v_version_product_gallery USING btree (_order);


--
-- Name: _products_v_version_product_gallery_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_product_gallery_parent_id_idx ON public._products_v_version_product_gallery USING btree (_parent_id);


--
-- Name: _products_v_version_quality_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_quality_order_idx ON public._products_v_version_quality USING btree ("order");


--
-- Name: _products_v_version_quality_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_quality_parent_idx ON public._products_v_version_quality USING btree (parent_id);


--
-- Name: _products_v_version_reviews_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_reviews_order_idx ON public._products_v_version_reviews USING btree (_order);


--
-- Name: _products_v_version_reviews_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_reviews_parent_id_idx ON public._products_v_version_reviews USING btree (_parent_id);


--
-- Name: _products_v_version_tags_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_tags_order_idx ON public._products_v_version_tags USING btree ("order");


--
-- Name: _products_v_version_tags_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_tags_parent_idx ON public._products_v_version_tags USING btree (parent_id);


--
-- Name: _products_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_version__status_idx ON public._products_v USING btree (version__status);


--
-- Name: _products_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_version_created_at_idx ON public._products_v USING btree (version_created_at);


--
-- Name: _products_v_version_version_deleted_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_version_deleted_at_idx ON public._products_v USING btree (version_deleted_at);


--
-- Name: _products_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_version_slug_idx ON public._products_v USING btree (version_slug);


--
-- Name: _products_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_version_updated_at_idx ON public._products_v USING btree (version_updated_at);


--
-- Name: _products_v_version_whats_inside_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_whats_inside_order_idx ON public._products_v_version_whats_inside USING btree (_order);


--
-- Name: _products_v_version_whats_inside_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _products_v_version_whats_inside_parent_id_idx ON public._products_v_version_whats_inside USING btree (_parent_id);


--
-- Name: _variants_v_autosave_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_autosave_idx ON public._variants_v USING btree (autosave);


--
-- Name: _variants_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_created_at_idx ON public._variants_v USING btree (created_at);


--
-- Name: _variants_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_latest_idx ON public._variants_v USING btree (latest);


--
-- Name: _variants_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_parent_idx ON public._variants_v USING btree (parent_id);


--
-- Name: _variants_v_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_rels_order_idx ON public._variants_v_rels USING btree ("order");


--
-- Name: _variants_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_rels_parent_idx ON public._variants_v_rels USING btree (parent_id);


--
-- Name: _variants_v_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_rels_path_idx ON public._variants_v_rels USING btree (path);


--
-- Name: _variants_v_rels_variant_options_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_rels_variant_options_id_idx ON public._variants_v_rels USING btree (variant_options_id);


--
-- Name: _variants_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_updated_at_idx ON public._variants_v USING btree (updated_at);


--
-- Name: _variants_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_version_version__status_idx ON public._variants_v USING btree (version__status);


--
-- Name: _variants_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_version_version_created_at_idx ON public._variants_v USING btree (version_created_at);


--
-- Name: _variants_v_version_version_deleted_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_version_version_deleted_at_idx ON public._variants_v USING btree (version_deleted_at);


--
-- Name: _variants_v_version_version_product_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_version_version_product_idx ON public._variants_v USING btree (version_product_id);


--
-- Name: _variants_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _variants_v_version_version_updated_at_idx ON public._variants_v USING btree (version_updated_at);


--
-- Name: addresses_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX addresses_created_at_idx ON public.addresses USING btree (created_at);


--
-- Name: addresses_customer_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX addresses_customer_idx ON public.addresses USING btree (customer_id);


--
-- Name: addresses_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX addresses_updated_at_idx ON public.addresses USING btree (updated_at);


--
-- Name: branch_holidays_branch_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branch_holidays_branch_idx ON public.branch_holidays USING btree (branch_id);


--
-- Name: branch_holidays_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branch_holidays_created_at_idx ON public.branch_holidays USING btree (created_at);


--
-- Name: branch_holidays_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branch_holidays_date_idx ON public.branch_holidays USING btree (date);


--
-- Name: branch_holidays_service_types_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branch_holidays_service_types_order_idx ON public.branch_holidays_service_types USING btree ("order");


--
-- Name: branch_holidays_service_types_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branch_holidays_service_types_parent_idx ON public.branch_holidays_service_types USING btree (parent_id);


--
-- Name: branch_holidays_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branch_holidays_updated_at_idx ON public.branch_holidays USING btree (updated_at);


--
-- Name: branch_inventory_branch_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branch_inventory_branch_idx ON public.branch_inventory USING btree (branch_id);


--
-- Name: branch_inventory_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branch_inventory_created_at_idx ON public.branch_inventory USING btree (created_at);


--
-- Name: branch_inventory_product_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branch_inventory_product_idx ON public.branch_inventory USING btree (product_id);


--
-- Name: branch_inventory_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branch_inventory_updated_at_idx ON public.branch_inventory USING btree (updated_at);


--
-- Name: branches_code_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX branches_code_idx ON public.branches USING btree (code);


--
-- Name: branches_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branches_created_at_idx ON public.branches USING btree (created_at);


--
-- Name: branches_is_active_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branches_is_active_idx ON public.branches USING btree (is_active);


--
-- Name: branches_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX branches_updated_at_idx ON public.branches USING btree (updated_at);


--
-- Name: carts_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX carts_created_at_idx ON public.carts USING btree (created_at);


--
-- Name: carts_customer_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX carts_customer_idx ON public.carts USING btree (customer_id);


--
-- Name: carts_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX carts_items_order_idx ON public.carts_items USING btree (_order);


--
-- Name: carts_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX carts_items_parent_id_idx ON public.carts_items USING btree (_parent_id);


--
-- Name: carts_items_product_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX carts_items_product_idx ON public.carts_items USING btree (product_id);


--
-- Name: carts_items_variant_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX carts_items_variant_idx ON public.carts_items USING btree (variant_id);


--
-- Name: carts_secret_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX carts_secret_idx ON public.carts USING btree (secret);


--
-- Name: carts_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX carts_updated_at_idx ON public.carts USING btree (updated_at);


--
-- Name: categories_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_created_at_idx ON public.categories USING btree (created_at);


--
-- Name: categories_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX categories_slug_idx ON public.categories USING btree (slug);


--
-- Name: categories_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_updated_at_idx ON public.categories USING btree (updated_at);


--
-- Name: cut_types_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cut_types_created_at_idx ON public.cut_types USING btree (created_at);


--
-- Name: cut_types_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cut_types_slug_idx ON public.cut_types USING btree (slug);


--
-- Name: cut_types_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cut_types_updated_at_idx ON public.cut_types USING btree (updated_at);


--
-- Name: flavors_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX flavors_created_at_idx ON public.flavors USING btree (created_at);


--
-- Name: flavors_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX flavors_slug_idx ON public.flavors USING btree (slug);


--
-- Name: flavors_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX flavors_updated_at_idx ON public.flavors USING btree (updated_at);


--
-- Name: footer_logo_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_logo_idx ON public.footer USING btree (logo_id);


--
-- Name: footer_nav_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_nav_items_order_idx ON public.footer_nav_items USING btree (_order);


--
-- Name: footer_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_nav_items_parent_id_idx ON public.footer_nav_items USING btree (_parent_id);


--
-- Name: footer_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_rels_order_idx ON public.footer_rels USING btree ("order");


--
-- Name: footer_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_rels_pages_id_idx ON public.footer_rels USING btree (pages_id);


--
-- Name: footer_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_rels_parent_idx ON public.footer_rels USING btree (parent_id);


--
-- Name: footer_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_rels_path_idx ON public.footer_rels USING btree (path);


--
-- Name: footer_social_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_social_links_order_idx ON public.footer_social_links USING btree (_order);


--
-- Name: footer_social_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_social_links_parent_id_idx ON public.footer_social_links USING btree (_parent_id);


--
-- Name: form_submissions_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_submissions_created_at_idx ON public.form_submissions USING btree (created_at);


--
-- Name: form_submissions_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_submissions_form_idx ON public.form_submissions USING btree (form_id);


--
-- Name: form_submissions_submission_data_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_submissions_submission_data_order_idx ON public.form_submissions_submission_data USING btree (_order);


--
-- Name: form_submissions_submission_data_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_submissions_submission_data_parent_id_idx ON public.form_submissions_submission_data USING btree (_parent_id);


--
-- Name: form_submissions_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_submissions_updated_at_idx ON public.form_submissions USING btree (updated_at);


--
-- Name: forms_blocks_checkbox_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_checkbox_order_idx ON public.forms_blocks_checkbox USING btree (_order);


--
-- Name: forms_blocks_checkbox_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_checkbox_parent_id_idx ON public.forms_blocks_checkbox USING btree (_parent_id);


--
-- Name: forms_blocks_checkbox_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_checkbox_path_idx ON public.forms_blocks_checkbox USING btree (_path);


--
-- Name: forms_blocks_country_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_country_order_idx ON public.forms_blocks_country USING btree (_order);


--
-- Name: forms_blocks_country_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_country_parent_id_idx ON public.forms_blocks_country USING btree (_parent_id);


--
-- Name: forms_blocks_country_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_country_path_idx ON public.forms_blocks_country USING btree (_path);


--
-- Name: forms_blocks_email_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_email_order_idx ON public.forms_blocks_email USING btree (_order);


--
-- Name: forms_blocks_email_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_email_parent_id_idx ON public.forms_blocks_email USING btree (_parent_id);


--
-- Name: forms_blocks_email_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_email_path_idx ON public.forms_blocks_email USING btree (_path);


--
-- Name: forms_blocks_message_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_message_order_idx ON public.forms_blocks_message USING btree (_order);


--
-- Name: forms_blocks_message_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_message_parent_id_idx ON public.forms_blocks_message USING btree (_parent_id);


--
-- Name: forms_blocks_message_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_message_path_idx ON public.forms_blocks_message USING btree (_path);


--
-- Name: forms_blocks_number_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_number_order_idx ON public.forms_blocks_number USING btree (_order);


--
-- Name: forms_blocks_number_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_number_parent_id_idx ON public.forms_blocks_number USING btree (_parent_id);


--
-- Name: forms_blocks_number_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_number_path_idx ON public.forms_blocks_number USING btree (_path);


--
-- Name: forms_blocks_select_options_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_select_options_order_idx ON public.forms_blocks_select_options USING btree (_order);


--
-- Name: forms_blocks_select_options_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_select_options_parent_id_idx ON public.forms_blocks_select_options USING btree (_parent_id);


--
-- Name: forms_blocks_select_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_select_order_idx ON public.forms_blocks_select USING btree (_order);


--
-- Name: forms_blocks_select_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_select_parent_id_idx ON public.forms_blocks_select USING btree (_parent_id);


--
-- Name: forms_blocks_select_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_select_path_idx ON public.forms_blocks_select USING btree (_path);


--
-- Name: forms_blocks_state_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_state_order_idx ON public.forms_blocks_state USING btree (_order);


--
-- Name: forms_blocks_state_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_state_parent_id_idx ON public.forms_blocks_state USING btree (_parent_id);


--
-- Name: forms_blocks_state_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_state_path_idx ON public.forms_blocks_state USING btree (_path);


--
-- Name: forms_blocks_text_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_text_order_idx ON public.forms_blocks_text USING btree (_order);


--
-- Name: forms_blocks_text_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_text_parent_id_idx ON public.forms_blocks_text USING btree (_parent_id);


--
-- Name: forms_blocks_text_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_text_path_idx ON public.forms_blocks_text USING btree (_path);


--
-- Name: forms_blocks_textarea_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_textarea_order_idx ON public.forms_blocks_textarea USING btree (_order);


--
-- Name: forms_blocks_textarea_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_textarea_parent_id_idx ON public.forms_blocks_textarea USING btree (_parent_id);


--
-- Name: forms_blocks_textarea_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_textarea_path_idx ON public.forms_blocks_textarea USING btree (_path);


--
-- Name: forms_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_created_at_idx ON public.forms USING btree (created_at);


--
-- Name: forms_emails_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_emails_order_idx ON public.forms_emails USING btree (_order);


--
-- Name: forms_emails_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_emails_parent_id_idx ON public.forms_emails USING btree (_parent_id);


--
-- Name: forms_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_updated_at_idx ON public.forms USING btree (updated_at);


--
-- Name: fulfillment_schedules_available_dates_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_available_dates_order_idx ON public.fulfillment_schedules_available_dates USING btree (_order);


--
-- Name: fulfillment_schedules_available_dates_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_available_dates_parent_id_idx ON public.fulfillment_schedules_available_dates USING btree (_parent_id);


--
-- Name: fulfillment_schedules_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_created_at_idx ON public.fulfillment_schedules USING btree (created_at);


--
-- Name: fulfillment_schedules_is_active_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_is_active_idx ON public.fulfillment_schedules USING btree (is_active);


--
-- Name: fulfillment_schedules_postal_codes_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_postal_codes_order_idx ON public.fulfillment_schedules_postal_codes USING btree (_order);


--
-- Name: fulfillment_schedules_postal_codes_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_postal_codes_parent_id_idx ON public.fulfillment_schedules_postal_codes USING btree (_parent_id);


--
-- Name: fulfillment_schedules_rels_branches_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_rels_branches_id_idx ON public.fulfillment_schedules_rels USING btree (branches_id);


--
-- Name: fulfillment_schedules_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_rels_order_idx ON public.fulfillment_schedules_rels USING btree ("order");


--
-- Name: fulfillment_schedules_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_rels_parent_idx ON public.fulfillment_schedules_rels USING btree (parent_id);


--
-- Name: fulfillment_schedules_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_rels_path_idx ON public.fulfillment_schedules_rels USING btree (path);


--
-- Name: fulfillment_schedules_rels_products_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_rels_products_id_idx ON public.fulfillment_schedules_rels USING btree (products_id);


--
-- Name: fulfillment_schedules_service_type_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_service_type_idx ON public.fulfillment_schedules USING btree (service_type);


--
-- Name: fulfillment_schedules_time_slots_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_time_slots_order_idx ON public.fulfillment_schedules_time_slots USING btree (_order);


--
-- Name: fulfillment_schedules_time_slots_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_time_slots_parent_id_idx ON public.fulfillment_schedules_time_slots USING btree (_parent_id);


--
-- Name: fulfillment_schedules_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_updated_at_idx ON public.fulfillment_schedules USING btree (updated_at);


--
-- Name: fulfillment_schedules_weekly_days_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_weekly_days_order_idx ON public.fulfillment_schedules_weekly_days USING btree ("order");


--
-- Name: fulfillment_schedules_weekly_days_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fulfillment_schedules_weekly_days_parent_idx ON public.fulfillment_schedules_weekly_days USING btree (parent_id);


--
-- Name: header_logo_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_logo_idx ON public.header USING btree (logo_id);


--
-- Name: header_nav_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_nav_items_order_idx ON public.header_nav_items USING btree (_order);


--
-- Name: header_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_nav_items_parent_id_idx ON public.header_nav_items USING btree (_parent_id);


--
-- Name: header_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_rels_order_idx ON public.header_rels USING btree ("order");


--
-- Name: header_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_rels_pages_id_idx ON public.header_rels USING btree (pages_id);


--
-- Name: header_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_rels_parent_idx ON public.header_rels USING btree (parent_id);


--
-- Name: header_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_rels_path_idx ON public.header_rels USING btree (path);


--
-- Name: meat_types_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX meat_types_created_at_idx ON public.meat_types USING btree (created_at);


--
-- Name: meat_types_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX meat_types_slug_idx ON public.meat_types USING btree (slug);


--
-- Name: meat_types_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX meat_types_updated_at_idx ON public.meat_types USING btree (updated_at);


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_created_at_idx ON public.media USING btree (created_at);


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX media_filename_idx ON public.media USING btree (filename);


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_updated_at_idx ON public.media USING btree (updated_at);


--
-- Name: newsletter_promo_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX newsletter_promo_image_idx ON public.newsletter_promo USING btree (image_id);


--
-- Name: orders_access_token_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX orders_access_token_idx ON public.orders USING btree (access_token);


--
-- Name: orders_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_created_at_idx ON public.orders USING btree (created_at);


--
-- Name: orders_customer_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_customer_idx ON public.orders USING btree (customer_id);


--
-- Name: orders_fulfillment_fulfillment_branch_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_fulfillment_fulfillment_branch_idx ON public.orders USING btree (fulfillment_branch_id);


--
-- Name: orders_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_items_order_idx ON public.orders_items USING btree (_order);


--
-- Name: orders_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_items_parent_id_idx ON public.orders_items USING btree (_parent_id);


--
-- Name: orders_items_product_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_items_product_idx ON public.orders_items USING btree (product_id);


--
-- Name: orders_items_variant_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_items_variant_idx ON public.orders_items USING btree (variant_id);


--
-- Name: orders_purchase_types_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_purchase_types_order_idx ON public.orders_purchase_types USING btree (_order);


--
-- Name: orders_purchase_types_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_purchase_types_parent_id_idx ON public.orders_purchase_types USING btree (_parent_id);


--
-- Name: orders_purchase_types_product_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_purchase_types_product_idx ON public.orders_purchase_types USING btree (product_id);


--
-- Name: orders_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_rels_order_idx ON public.orders_rels USING btree ("order");


--
-- Name: orders_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_rels_parent_idx ON public.orders_rels USING btree (parent_id);


--
-- Name: orders_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_rels_path_idx ON public.orders_rels USING btree (path);


--
-- Name: orders_rels_transactions_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_rels_transactions_id_idx ON public.orders_rels USING btree (transactions_id);


--
-- Name: orders_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_updated_at_idx ON public.orders USING btree (updated_at);


--
-- Name: pages__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages__status_idx ON public.pages USING btree (_status);


--
-- Name: pages_blocks_about_story_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_story_image_idx ON public.pages_blocks_about_story USING btree (image_id);


--
-- Name: pages_blocks_about_story_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_story_order_idx ON public.pages_blocks_about_story USING btree (_order);


--
-- Name: pages_blocks_about_story_page_intro_page_intro_hero_imag_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_story_page_intro_page_intro_hero_imag_idx ON public.pages_blocks_about_story USING btree (page_intro_hero_image_id);


--
-- Name: pages_blocks_about_story_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_story_parent_id_idx ON public.pages_blocks_about_story USING btree (_parent_id);


--
-- Name: pages_blocks_about_story_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_about_story_path_idx ON public.pages_blocks_about_story USING btree (_path);


--
-- Name: pages_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_archive_order_idx ON public.pages_blocks_archive USING btree (_order);


--
-- Name: pages_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_archive_parent_id_idx ON public.pages_blocks_archive USING btree (_parent_id);


--
-- Name: pages_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_archive_path_idx ON public.pages_blocks_archive USING btree (_path);


--
-- Name: pages_blocks_banner_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_banner_order_idx ON public.pages_blocks_banner USING btree (_order);


--
-- Name: pages_blocks_banner_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_banner_parent_id_idx ON public.pages_blocks_banner USING btree (_parent_id);


--
-- Name: pages_blocks_banner_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_banner_path_idx ON public.pages_blocks_banner USING btree (_path);


--
-- Name: pages_blocks_carousel_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_carousel_order_idx ON public.pages_blocks_carousel USING btree (_order);


--
-- Name: pages_blocks_carousel_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_carousel_parent_id_idx ON public.pages_blocks_carousel USING btree (_parent_id);


--
-- Name: pages_blocks_carousel_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_carousel_path_idx ON public.pages_blocks_carousel USING btree (_path);


--
-- Name: pages_blocks_contact_cards_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_cards_items_order_idx ON public.pages_blocks_contact_cards_items USING btree (_order);


--
-- Name: pages_blocks_contact_cards_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_cards_items_parent_id_idx ON public.pages_blocks_contact_cards_items USING btree (_parent_id);


--
-- Name: pages_blocks_contact_cards_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_cards_order_idx ON public.pages_blocks_contact_cards USING btree (_order);


--
-- Name: pages_blocks_contact_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_cards_parent_id_idx ON public.pages_blocks_contact_cards USING btree (_parent_id);


--
-- Name: pages_blocks_contact_cards_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_cards_path_idx ON public.pages_blocks_contact_cards USING btree (_path);


--
-- Name: pages_blocks_contact_page_cards_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_page_cards_order_idx ON public.pages_blocks_contact_page_cards USING btree (_order);


--
-- Name: pages_blocks_contact_page_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_page_cards_parent_id_idx ON public.pages_blocks_contact_page_cards USING btree (_parent_id);


--
-- Name: pages_blocks_contact_page_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_page_form_idx ON public.pages_blocks_contact_page USING btree (form_id);


--
-- Name: pages_blocks_contact_page_map_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_page_map_image_idx ON public.pages_blocks_contact_page USING btree (map_image_id);


--
-- Name: pages_blocks_contact_page_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_page_order_idx ON public.pages_blocks_contact_page USING btree (_order);


--
-- Name: pages_blocks_contact_page_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_page_parent_id_idx ON public.pages_blocks_contact_page USING btree (_parent_id);


--
-- Name: pages_blocks_contact_page_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_page_path_idx ON public.pages_blocks_contact_page USING btree (_path);


--
-- Name: pages_blocks_contact_page_store_hours_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_page_store_hours_order_idx ON public.pages_blocks_contact_page_store_hours USING btree (_order);


--
-- Name: pages_blocks_contact_page_store_hours_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_contact_page_store_hours_parent_id_idx ON public.pages_blocks_contact_page_store_hours USING btree (_parent_id);


--
-- Name: pages_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_columns_order_idx ON public.pages_blocks_content_columns USING btree (_order);


--
-- Name: pages_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_columns_parent_id_idx ON public.pages_blocks_content_columns USING btree (_parent_id);


--
-- Name: pages_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_order_idx ON public.pages_blocks_content USING btree (_order);


--
-- Name: pages_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_parent_id_idx ON public.pages_blocks_content USING btree (_parent_id);


--
-- Name: pages_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_path_idx ON public.pages_blocks_content USING btree (_path);


--
-- Name: pages_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_links_order_idx ON public.pages_blocks_cta_links USING btree (_order);


--
-- Name: pages_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_links_parent_id_idx ON public.pages_blocks_cta_links USING btree (_parent_id);


--
-- Name: pages_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_order_idx ON public.pages_blocks_cta USING btree (_order);


--
-- Name: pages_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_parent_id_idx ON public.pages_blocks_cta USING btree (_parent_id);


--
-- Name: pages_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_path_idx ON public.pages_blocks_cta USING btree (_path);


--
-- Name: pages_blocks_featured_cuts_items_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_cuts_items_image_idx ON public.pages_blocks_featured_cuts_items USING btree (image_id);


--
-- Name: pages_blocks_featured_cuts_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_cuts_items_order_idx ON public.pages_blocks_featured_cuts_items USING btree (_order);


--
-- Name: pages_blocks_featured_cuts_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_cuts_items_parent_id_idx ON public.pages_blocks_featured_cuts_items USING btree (_parent_id);


--
-- Name: pages_blocks_featured_cuts_items_product_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_cuts_items_product_idx ON public.pages_blocks_featured_cuts_items USING btree (product_id);


--
-- Name: pages_blocks_featured_cuts_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_cuts_order_idx ON public.pages_blocks_featured_cuts USING btree (_order);


--
-- Name: pages_blocks_featured_cuts_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_cuts_parent_id_idx ON public.pages_blocks_featured_cuts USING btree (_parent_id);


--
-- Name: pages_blocks_featured_cuts_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_featured_cuts_path_idx ON public.pages_blocks_featured_cuts USING btree (_path);


--
-- Name: pages_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_form_block_form_idx ON public.pages_blocks_form_block USING btree (form_id);


--
-- Name: pages_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_form_block_order_idx ON public.pages_blocks_form_block USING btree (_order);


--
-- Name: pages_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_form_block_parent_id_idx ON public.pages_blocks_form_block USING btree (_parent_id);


--
-- Name: pages_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_form_block_path_idx ON public.pages_blocks_form_block USING btree (_path);


--
-- Name: pages_blocks_how_it_works_bottom_cta_background_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_bottom_cta_background_image_idx ON public.pages_blocks_how_it_works USING btree (bottom_cta_background_image_id);


--
-- Name: pages_blocks_how_it_works_faqs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_faqs_order_idx ON public.pages_blocks_how_it_works_faqs USING btree (_order);


--
-- Name: pages_blocks_how_it_works_faqs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_faqs_parent_id_idx ON public.pages_blocks_how_it_works_faqs USING btree (_parent_id);


--
-- Name: pages_blocks_how_it_works_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_order_idx ON public.pages_blocks_how_it_works USING btree (_order);


--
-- Name: pages_blocks_how_it_works_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_parent_id_idx ON public.pages_blocks_how_it_works USING btree (_parent_id);


--
-- Name: pages_blocks_how_it_works_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_path_idx ON public.pages_blocks_how_it_works USING btree (_path);


--
-- Name: pages_blocks_how_it_works_steps_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_steps_image_idx ON public.pages_blocks_how_it_works_steps USING btree (image_id);


--
-- Name: pages_blocks_how_it_works_steps_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_steps_order_idx ON public.pages_blocks_how_it_works_steps USING btree (_order);


--
-- Name: pages_blocks_how_it_works_steps_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_steps_parent_id_idx ON public.pages_blocks_how_it_works_steps USING btree (_parent_id);


--
-- Name: pages_blocks_how_it_works_values_background_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_values_background_image_idx ON public.pages_blocks_how_it_works USING btree (values_background_image_id);


--
-- Name: pages_blocks_how_it_works_values_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_values_order_idx ON public.pages_blocks_how_it_works_values USING btree (_order);


--
-- Name: pages_blocks_how_it_works_values_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_how_it_works_values_parent_id_idx ON public.pages_blocks_how_it_works_values USING btree (_parent_id);


--
-- Name: pages_blocks_info_section_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_section_image_idx ON public.pages_blocks_info_section USING btree (image_id);


--
-- Name: pages_blocks_info_section_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_section_order_idx ON public.pages_blocks_info_section USING btree (_order);


--
-- Name: pages_blocks_info_section_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_section_parent_id_idx ON public.pages_blocks_info_section USING btree (_parent_id);


--
-- Name: pages_blocks_info_section_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_info_section_path_idx ON public.pages_blocks_info_section USING btree (_path);


--
-- Name: pages_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_media_idx ON public.pages_blocks_media_block USING btree (media_id);


--
-- Name: pages_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_order_idx ON public.pages_blocks_media_block USING btree (_order);


--
-- Name: pages_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_parent_id_idx ON public.pages_blocks_media_block USING btree (_parent_id);


--
-- Name: pages_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_path_idx ON public.pages_blocks_media_block USING btree (_path);


--
-- Name: pages_blocks_product_grid_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_product_grid_order_idx ON public.pages_blocks_product_grid USING btree (_order);


--
-- Name: pages_blocks_product_grid_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_product_grid_parent_id_idx ON public.pages_blocks_product_grid USING btree (_parent_id);


--
-- Name: pages_blocks_product_grid_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_product_grid_path_idx ON public.pages_blocks_product_grid USING btree (_path);


--
-- Name: pages_blocks_social_links_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_social_links_items_order_idx ON public.pages_blocks_social_links_items USING btree (_order);


--
-- Name: pages_blocks_social_links_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_social_links_items_parent_id_idx ON public.pages_blocks_social_links_items USING btree (_parent_id);


--
-- Name: pages_blocks_social_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_social_links_order_idx ON public.pages_blocks_social_links USING btree (_order);


--
-- Name: pages_blocks_social_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_social_links_parent_id_idx ON public.pages_blocks_social_links USING btree (_parent_id);


--
-- Name: pages_blocks_social_links_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_social_links_path_idx ON public.pages_blocks_social_links USING btree (_path);


--
-- Name: pages_blocks_testimonials_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_items_order_idx ON public.pages_blocks_testimonials_items USING btree (_order);


--
-- Name: pages_blocks_testimonials_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_items_parent_id_idx ON public.pages_blocks_testimonials_items USING btree (_parent_id);


--
-- Name: pages_blocks_testimonials_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_order_idx ON public.pages_blocks_testimonials USING btree (_order);


--
-- Name: pages_blocks_testimonials_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_parent_id_idx ON public.pages_blocks_testimonials USING btree (_parent_id);


--
-- Name: pages_blocks_testimonials_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_path_idx ON public.pages_blocks_testimonials USING btree (_path);


--
-- Name: pages_blocks_three_item_grid_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_three_item_grid_order_idx ON public.pages_blocks_three_item_grid USING btree (_order);


--
-- Name: pages_blocks_three_item_grid_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_three_item_grid_parent_id_idx ON public.pages_blocks_three_item_grid USING btree (_parent_id);


--
-- Name: pages_blocks_three_item_grid_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_three_item_grid_path_idx ON public.pages_blocks_three_item_grid USING btree (_path);


--
-- Name: pages_blocks_visit_section_hours_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_visit_section_hours_order_idx ON public.pages_blocks_visit_section_hours USING btree (_order);


--
-- Name: pages_blocks_visit_section_hours_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_visit_section_hours_parent_id_idx ON public.pages_blocks_visit_section_hours USING btree (_parent_id);


--
-- Name: pages_blocks_visit_section_image_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_visit_section_image_links_order_idx ON public.pages_blocks_visit_section_image_links USING btree (_order);


--
-- Name: pages_blocks_visit_section_image_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_visit_section_image_links_parent_id_idx ON public.pages_blocks_visit_section_image_links USING btree (_parent_id);


--
-- Name: pages_blocks_visit_section_map_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_visit_section_map_image_idx ON public.pages_blocks_visit_section USING btree (map_image_id);


--
-- Name: pages_blocks_visit_section_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_visit_section_order_idx ON public.pages_blocks_visit_section USING btree (_order);


--
-- Name: pages_blocks_visit_section_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_visit_section_parent_id_idx ON public.pages_blocks_visit_section USING btree (_parent_id);


--
-- Name: pages_blocks_visit_section_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_visit_section_path_idx ON public.pages_blocks_visit_section USING btree (_path);


--
-- Name: pages_blocks_visit_section_storefront_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_visit_section_storefront_image_idx ON public.pages_blocks_visit_section USING btree (storefront_image_id);


--
-- Name: pages_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_created_at_idx ON public.pages USING btree (created_at);


--
-- Name: pages_hero_hero_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_hero_media_idx ON public.pages USING btree (hero_media_id);


--
-- Name: pages_hero_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_links_order_idx ON public.pages_hero_links USING btree (_order);


--
-- Name: pages_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_links_parent_id_idx ON public.pages_hero_links USING btree (_parent_id);


--
-- Name: pages_hero_slides_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_slides_media_idx ON public.pages_hero_slides USING btree (media_id);


--
-- Name: pages_hero_slides_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_slides_order_idx ON public.pages_hero_slides USING btree (_order);


--
-- Name: pages_hero_slides_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_slides_parent_id_idx ON public.pages_hero_slides USING btree (_parent_id);


--
-- Name: pages_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_meta_meta_image_idx ON public.pages USING btree (meta_image_id);


--
-- Name: pages_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_categories_id_idx ON public.pages_rels USING btree (categories_id);


--
-- Name: pages_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_order_idx ON public.pages_rels USING btree ("order");


--
-- Name: pages_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_pages_id_idx ON public.pages_rels USING btree (pages_id);


--
-- Name: pages_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_parent_idx ON public.pages_rels USING btree (parent_id);


--
-- Name: pages_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_path_idx ON public.pages_rels USING btree (path);


--
-- Name: pages_rels_products_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_products_id_idx ON public.pages_rels USING btree (products_id);


--
-- Name: pages_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_slug_idx ON public.pages USING btree (slug);


--
-- Name: pages_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_updated_at_idx ON public.pages USING btree (updated_at);


--
-- Name: payload_kv_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX payload_kv_key_idx ON public.payload_kv USING btree (key);


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_created_at_idx ON public.payload_locked_documents USING btree (created_at);


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_global_slug_idx ON public.payload_locked_documents USING btree (global_slug);


--
-- Name: payload_locked_documents_rels_addresses_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_addresses_id_idx ON public.payload_locked_documents_rels USING btree (addresses_id);


--
-- Name: payload_locked_documents_rels_branch_holidays_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_branch_holidays_id_idx ON public.payload_locked_documents_rels USING btree (branch_holidays_id);


--
-- Name: payload_locked_documents_rels_branch_inventory_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_branch_inventory_id_idx ON public.payload_locked_documents_rels USING btree (branch_inventory_id);


--
-- Name: payload_locked_documents_rels_branches_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_branches_id_idx ON public.payload_locked_documents_rels USING btree (branches_id);


--
-- Name: payload_locked_documents_rels_carts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_carts_id_idx ON public.payload_locked_documents_rels USING btree (carts_id);


--
-- Name: payload_locked_documents_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_categories_id_idx ON public.payload_locked_documents_rels USING btree (categories_id);


--
-- Name: payload_locked_documents_rels_cut_types_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_cut_types_id_idx ON public.payload_locked_documents_rels USING btree (cut_types_id);


--
-- Name: payload_locked_documents_rels_flavors_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_flavors_id_idx ON public.payload_locked_documents_rels USING btree (flavors_id);


--
-- Name: payload_locked_documents_rels_form_submissions_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_form_submissions_id_idx ON public.payload_locked_documents_rels USING btree (form_submissions_id);


--
-- Name: payload_locked_documents_rels_forms_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_forms_id_idx ON public.payload_locked_documents_rels USING btree (forms_id);


--
-- Name: payload_locked_documents_rels_fulfillment_schedules_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_fulfillment_schedules_id_idx ON public.payload_locked_documents_rels USING btree (fulfillment_schedules_id);


--
-- Name: payload_locked_documents_rels_meat_types_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_meat_types_id_idx ON public.payload_locked_documents_rels USING btree (meat_types_id);


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_media_id_idx ON public.payload_locked_documents_rels USING btree (media_id);


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_order_idx ON public.payload_locked_documents_rels USING btree ("order");


--
-- Name: payload_locked_documents_rels_orders_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_orders_id_idx ON public.payload_locked_documents_rels USING btree (orders_id);


--
-- Name: payload_locked_documents_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_pages_id_idx ON public.payload_locked_documents_rels USING btree (pages_id);


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_parent_idx ON public.payload_locked_documents_rels USING btree (parent_id);


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_path_idx ON public.payload_locked_documents_rels USING btree (path);


--
-- Name: payload_locked_documents_rels_products_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_products_id_idx ON public.payload_locked_documents_rels USING btree (products_id);


--
-- Name: payload_locked_documents_rels_qualities_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_qualities_id_idx ON public.payload_locked_documents_rels USING btree (qualities_id);


--
-- Name: payload_locked_documents_rels_transactions_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_transactions_id_idx ON public.payload_locked_documents_rels USING btree (transactions_id);


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_users_id_idx ON public.payload_locked_documents_rels USING btree (users_id);


--
-- Name: payload_locked_documents_rels_variant_options_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_variant_options_id_idx ON public.payload_locked_documents_rels USING btree (variant_options_id);


--
-- Name: payload_locked_documents_rels_variant_types_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_variant_types_id_idx ON public.payload_locked_documents_rels USING btree (variant_types_id);


--
-- Name: payload_locked_documents_rels_variants_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_variants_id_idx ON public.payload_locked_documents_rels USING btree (variants_id);


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_updated_at_idx ON public.payload_locked_documents USING btree (updated_at);


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_created_at_idx ON public.payload_migrations USING btree (created_at);


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_updated_at_idx ON public.payload_migrations USING btree (updated_at);


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_created_at_idx ON public.payload_preferences USING btree (created_at);


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_key_idx ON public.payload_preferences USING btree (key);


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_order_idx ON public.payload_preferences_rels USING btree ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_parent_idx ON public.payload_preferences_rels USING btree (parent_id);


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_path_idx ON public.payload_preferences_rels USING btree (path);


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_users_id_idx ON public.payload_preferences_rels USING btree (users_id);


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_updated_at_idx ON public.payload_preferences USING btree (updated_at);


--
-- Name: products__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products__status_idx ON public.products USING btree (_status);


--
-- Name: products_badges_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_badges_order_idx ON public.products_badges USING btree (_order);


--
-- Name: products_badges_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_badges_parent_id_idx ON public.products_badges USING btree (_parent_id);


--
-- Name: products_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_created_at_idx ON public.products USING btree (created_at);


--
-- Name: products_deleted_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_deleted_at_idx ON public.products USING btree (deleted_at);


--
-- Name: products_product_gallery_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_product_gallery_image_idx ON public.products_product_gallery USING btree (image_id);


--
-- Name: products_product_gallery_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_product_gallery_order_idx ON public.products_product_gallery USING btree (_order);


--
-- Name: products_product_gallery_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_product_gallery_parent_id_idx ON public.products_product_gallery USING btree (_parent_id);


--
-- Name: products_quality_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_quality_order_idx ON public.products_quality USING btree ("order");


--
-- Name: products_quality_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_quality_parent_idx ON public.products_quality USING btree (parent_id);


--
-- Name: products_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_rels_order_idx ON public.products_rels USING btree ("order");


--
-- Name: products_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_rels_parent_idx ON public.products_rels USING btree (parent_id);


--
-- Name: products_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_rels_path_idx ON public.products_rels USING btree (path);


--
-- Name: products_rels_variant_types_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_rels_variant_types_id_idx ON public.products_rels USING btree (variant_types_id);


--
-- Name: products_reviews_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_reviews_order_idx ON public.products_reviews USING btree (_order);


--
-- Name: products_reviews_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_reviews_parent_id_idx ON public.products_reviews USING btree (_parent_id);


--
-- Name: products_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX products_slug_idx ON public.products USING btree (slug);


--
-- Name: products_tags_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_tags_order_idx ON public.products_tags USING btree ("order");


--
-- Name: products_tags_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_tags_parent_idx ON public.products_tags USING btree (parent_id);


--
-- Name: products_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_updated_at_idx ON public.products USING btree (updated_at);


--
-- Name: products_whats_inside_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_whats_inside_order_idx ON public.products_whats_inside USING btree (_order);


--
-- Name: products_whats_inside_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX products_whats_inside_parent_id_idx ON public.products_whats_inside USING btree (_parent_id);


--
-- Name: qualities_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX qualities_created_at_idx ON public.qualities USING btree (created_at);


--
-- Name: qualities_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX qualities_slug_idx ON public.qualities USING btree (slug);


--
-- Name: qualities_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX qualities_updated_at_idx ON public.qualities USING btree (updated_at);


--
-- Name: transactions_cart_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX transactions_cart_idx ON public.transactions USING btree (cart_id);


--
-- Name: transactions_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX transactions_created_at_idx ON public.transactions USING btree (created_at);


--
-- Name: transactions_customer_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX transactions_customer_idx ON public.transactions USING btree (customer_id);


--
-- Name: transactions_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX transactions_items_order_idx ON public.transactions_items USING btree (_order);


--
-- Name: transactions_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX transactions_items_parent_id_idx ON public.transactions_items USING btree (_parent_id);


--
-- Name: transactions_items_product_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX transactions_items_product_idx ON public.transactions_items USING btree (product_id);


--
-- Name: transactions_items_variant_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX transactions_items_variant_idx ON public.transactions_items USING btree (variant_id);


--
-- Name: transactions_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX transactions_order_idx ON public.transactions USING btree (order_id);


--
-- Name: transactions_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX transactions_updated_at_idx ON public.transactions USING btree (updated_at);


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_created_at_idx ON public.users USING btree (created_at);


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_email_idx ON public.users USING btree (email);


--
-- Name: users_roles_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_roles_order_idx ON public.users_roles USING btree ("order");


--
-- Name: users_roles_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_roles_parent_idx ON public.users_roles USING btree (parent_id);


--
-- Name: users_sessions_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_order_idx ON public.users_sessions USING btree (_order);


--
-- Name: users_sessions_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_parent_id_idx ON public.users_sessions USING btree (_parent_id);


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_updated_at_idx ON public.users USING btree (updated_at);


--
-- Name: variant_options__variantoptions_options_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variant_options__variantoptions_options_order_idx ON public.variant_options USING btree (_variantoptions_options_order);


--
-- Name: variant_options_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variant_options_created_at_idx ON public.variant_options USING btree (created_at);


--
-- Name: variant_options_deleted_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variant_options_deleted_at_idx ON public.variant_options USING btree (deleted_at);


--
-- Name: variant_options_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variant_options_updated_at_idx ON public.variant_options USING btree (updated_at);


--
-- Name: variant_options_variant_type_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variant_options_variant_type_idx ON public.variant_options USING btree (variant_type_id);


--
-- Name: variant_types_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variant_types_created_at_idx ON public.variant_types USING btree (created_at);


--
-- Name: variant_types_deleted_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variant_types_deleted_at_idx ON public.variant_types USING btree (deleted_at);


--
-- Name: variant_types_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variant_types_updated_at_idx ON public.variant_types USING btree (updated_at);


--
-- Name: variants__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variants__status_idx ON public.variants USING btree (_status);


--
-- Name: variants_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variants_created_at_idx ON public.variants USING btree (created_at);


--
-- Name: variants_deleted_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variants_deleted_at_idx ON public.variants USING btree (deleted_at);


--
-- Name: variants_product_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variants_product_idx ON public.variants USING btree (product_id);


--
-- Name: variants_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variants_rels_order_idx ON public.variants_rels USING btree ("order");


--
-- Name: variants_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variants_rels_parent_idx ON public.variants_rels USING btree (parent_id);


--
-- Name: variants_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variants_rels_path_idx ON public.variants_rels USING btree (path);


--
-- Name: variants_rels_variant_options_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variants_rels_variant_options_id_idx ON public.variants_rels USING btree (variant_options_id);


--
-- Name: variants_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variants_updated_at_idx ON public.variants USING btree (updated_at);


--
-- Name: _pages_v_blocks_about_story _pages_v_blocks_about_story_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_about_story
    ADD CONSTRAINT _pages_v_blocks_about_story_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_about_story _pages_v_blocks_about_story_page_intro_hero_image_id_media_id_f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_about_story
    ADD CONSTRAINT _pages_v_blocks_about_story_page_intro_hero_image_id_media_id_f FOREIGN KEY (page_intro_hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_about_story _pages_v_blocks_about_story_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_about_story
    ADD CONSTRAINT _pages_v_blocks_about_story_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_banner _pages_v_blocks_banner_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_banner
    ADD CONSTRAINT _pages_v_blocks_banner_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_carousel _pages_v_blocks_carousel_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_carousel
    ADD CONSTRAINT _pages_v_blocks_carousel_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_contact_cards_items _pages_v_blocks_contact_cards_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_cards_items
    ADD CONSTRAINT _pages_v_blocks_contact_cards_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_contact_cards(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_contact_cards _pages_v_blocks_contact_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_cards
    ADD CONSTRAINT _pages_v_blocks_contact_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_contact_page_cards _pages_v_blocks_contact_page_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page_cards
    ADD CONSTRAINT _pages_v_blocks_contact_page_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_contact_page(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_contact_page _pages_v_blocks_contact_page_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page
    ADD CONSTRAINT _pages_v_blocks_contact_page_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_contact_page _pages_v_blocks_contact_page_map_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page
    ADD CONSTRAINT _pages_v_blocks_contact_page_map_image_id_media_id_fk FOREIGN KEY (map_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_contact_page _pages_v_blocks_contact_page_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page
    ADD CONSTRAINT _pages_v_blocks_contact_page_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_contact_page_store_hours _pages_v_blocks_contact_page_store_hours_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_contact_page_store_hours
    ADD CONSTRAINT _pages_v_blocks_contact_page_store_hours_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_contact_page(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_content(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_featured_cuts_items _pages_v_blocks_featured_cuts_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_featured_cuts_items
    ADD CONSTRAINT _pages_v_blocks_featured_cuts_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_featured_cuts_items _pages_v_blocks_featured_cuts_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_featured_cuts_items
    ADD CONSTRAINT _pages_v_blocks_featured_cuts_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_featured_cuts(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_featured_cuts_items _pages_v_blocks_featured_cuts_items_product_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_featured_cuts_items
    ADD CONSTRAINT _pages_v_blocks_featured_cuts_items_product_id_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_featured_cuts _pages_v_blocks_featured_cuts_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_featured_cuts
    ADD CONSTRAINT _pages_v_blocks_featured_cuts_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_how_it_works _pages_v_blocks_how_it_works_bottom_cta_background_image_id_med; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works
    ADD CONSTRAINT _pages_v_blocks_how_it_works_bottom_cta_background_image_id_med FOREIGN KEY (bottom_cta_background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_how_it_works_faqs _pages_v_blocks_how_it_works_faqs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works_faqs
    ADD CONSTRAINT _pages_v_blocks_how_it_works_faqs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_how_it_works(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_how_it_works _pages_v_blocks_how_it_works_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works
    ADD CONSTRAINT _pages_v_blocks_how_it_works_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_how_it_works_steps _pages_v_blocks_how_it_works_steps_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works_steps
    ADD CONSTRAINT _pages_v_blocks_how_it_works_steps_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_how_it_works_steps _pages_v_blocks_how_it_works_steps_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works_steps
    ADD CONSTRAINT _pages_v_blocks_how_it_works_steps_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_how_it_works(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_how_it_works _pages_v_blocks_how_it_works_values_background_image_id_media_i; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works
    ADD CONSTRAINT _pages_v_blocks_how_it_works_values_background_image_id_media_i FOREIGN KEY (values_background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_how_it_works_values _pages_v_blocks_how_it_works_values_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_how_it_works_values
    ADD CONSTRAINT _pages_v_blocks_how_it_works_values_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_how_it_works(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_info_section _pages_v_blocks_info_section_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_info_section
    ADD CONSTRAINT _pages_v_blocks_info_section_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_info_section _pages_v_blocks_info_section_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_info_section
    ADD CONSTRAINT _pages_v_blocks_info_section_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_product_grid _pages_v_blocks_product_grid_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_product_grid
    ADD CONSTRAINT _pages_v_blocks_product_grid_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_social_links_items _pages_v_blocks_social_links_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_social_links_items
    ADD CONSTRAINT _pages_v_blocks_social_links_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_social_links(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_social_links _pages_v_blocks_social_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_social_links
    ADD CONSTRAINT _pages_v_blocks_social_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_testimonials_items _pages_v_blocks_testimonials_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_items
    ADD CONSTRAINT _pages_v_blocks_testimonials_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_testimonials(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_testimonials _pages_v_blocks_testimonials_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials
    ADD CONSTRAINT _pages_v_blocks_testimonials_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_three_item_grid _pages_v_blocks_three_item_grid_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_three_item_grid
    ADD CONSTRAINT _pages_v_blocks_three_item_grid_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_visit_section_hours _pages_v_blocks_visit_section_hours_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section_hours
    ADD CONSTRAINT _pages_v_blocks_visit_section_hours_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_visit_section(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_visit_section_image_links _pages_v_blocks_visit_section_image_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section_image_links
    ADD CONSTRAINT _pages_v_blocks_visit_section_image_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_visit_section(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_visit_section _pages_v_blocks_visit_section_map_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section
    ADD CONSTRAINT _pages_v_blocks_visit_section_map_image_id_media_id_fk FOREIGN KEY (map_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_visit_section _pages_v_blocks_visit_section_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section
    ADD CONSTRAINT _pages_v_blocks_visit_section_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_visit_section _pages_v_blocks_visit_section_storefront_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_visit_section
    ADD CONSTRAINT _pages_v_blocks_visit_section_storefront_image_id_media_id_fk FOREIGN KEY (storefront_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v _pages_v_parent_id_pages_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_parent_id_pages_id_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE SET NULL;


--
-- Name: _pages_v_rels _pages_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_products_fk FOREIGN KEY (products_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_version_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_hero_media_id_media_id_fk FOREIGN KEY (version_hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_version_hero_slides _pages_v_version_hero_slides_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_slides
    ADD CONSTRAINT _pages_v_version_hero_slides_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_version_hero_slides _pages_v_version_hero_slides_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_slides
    ADD CONSTRAINT _pages_v_version_hero_slides_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _products_v _products_v_parent_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v
    ADD CONSTRAINT _products_v_parent_id_products_id_fk FOREIGN KEY (parent_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: _products_v_rels _products_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_rels
    ADD CONSTRAINT _products_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._products_v(id) ON DELETE CASCADE;


--
-- Name: _products_v_rels _products_v_rels_variant_types_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_rels
    ADD CONSTRAINT _products_v_rels_variant_types_fk FOREIGN KEY (variant_types_id) REFERENCES public.variant_types(id) ON DELETE CASCADE;


--
-- Name: _products_v_version_badges _products_v_version_badges_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_badges
    ADD CONSTRAINT _products_v_version_badges_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._products_v(id) ON DELETE CASCADE;


--
-- Name: _products_v_version_product_gallery _products_v_version_product_gallery_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_product_gallery
    ADD CONSTRAINT _products_v_version_product_gallery_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _products_v_version_product_gallery _products_v_version_product_gallery_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_product_gallery
    ADD CONSTRAINT _products_v_version_product_gallery_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._products_v(id) ON DELETE CASCADE;


--
-- Name: _products_v_version_quality _products_v_version_quality_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_quality
    ADD CONSTRAINT _products_v_version_quality_parent_fk FOREIGN KEY (parent_id) REFERENCES public._products_v(id) ON DELETE CASCADE;


--
-- Name: _products_v_version_reviews _products_v_version_reviews_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_reviews
    ADD CONSTRAINT _products_v_version_reviews_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._products_v(id) ON DELETE CASCADE;


--
-- Name: _products_v_version_tags _products_v_version_tags_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_tags
    ADD CONSTRAINT _products_v_version_tags_parent_fk FOREIGN KEY (parent_id) REFERENCES public._products_v(id) ON DELETE CASCADE;


--
-- Name: _products_v_version_whats_inside _products_v_version_whats_inside_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._products_v_version_whats_inside
    ADD CONSTRAINT _products_v_version_whats_inside_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._products_v(id) ON DELETE CASCADE;


--
-- Name: _variants_v _variants_v_parent_id_variants_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._variants_v
    ADD CONSTRAINT _variants_v_parent_id_variants_id_fk FOREIGN KEY (parent_id) REFERENCES public.variants(id) ON DELETE SET NULL;


--
-- Name: _variants_v_rels _variants_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._variants_v_rels
    ADD CONSTRAINT _variants_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._variants_v(id) ON DELETE CASCADE;


--
-- Name: _variants_v_rels _variants_v_rels_variant_options_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._variants_v_rels
    ADD CONSTRAINT _variants_v_rels_variant_options_fk FOREIGN KEY (variant_options_id) REFERENCES public.variant_options(id) ON DELETE CASCADE;


--
-- Name: _variants_v _variants_v_version_product_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._variants_v
    ADD CONSTRAINT _variants_v_version_product_id_products_id_fk FOREIGN KEY (version_product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: addresses addresses_customer_id_users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_customer_id_users_id_fk FOREIGN KEY (customer_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: branch_holidays branch_holidays_branch_id_branches_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_holidays
    ADD CONSTRAINT branch_holidays_branch_id_branches_id_fk FOREIGN KEY (branch_id) REFERENCES public.branches(id) ON DELETE SET NULL;


--
-- Name: branch_holidays_service_types branch_holidays_service_types_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_holidays_service_types
    ADD CONSTRAINT branch_holidays_service_types_parent_fk FOREIGN KEY (parent_id) REFERENCES public.branch_holidays(id) ON DELETE CASCADE;


--
-- Name: branch_inventory branch_inventory_branch_id_branches_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_inventory
    ADD CONSTRAINT branch_inventory_branch_id_branches_id_fk FOREIGN KEY (branch_id) REFERENCES public.branches(id) ON DELETE SET NULL;


--
-- Name: branch_inventory branch_inventory_product_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch_inventory
    ADD CONSTRAINT branch_inventory_product_id_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: carts carts_customer_id_users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_customer_id_users_id_fk FOREIGN KEY (customer_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: carts_items carts_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carts_items
    ADD CONSTRAINT carts_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.carts(id) ON DELETE CASCADE;


--
-- Name: carts_items carts_items_product_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carts_items
    ADD CONSTRAINT carts_items_product_id_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: carts_items carts_items_variant_id_variants_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carts_items
    ADD CONSTRAINT carts_items_variant_id_variants_id_fk FOREIGN KEY (variant_id) REFERENCES public.variants(id) ON DELETE SET NULL;


--
-- Name: footer footer_logo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer
    ADD CONSTRAINT footer_logo_id_media_id_fk FOREIGN KEY (logo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: footer_nav_items footer_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_nav_items
    ADD CONSTRAINT footer_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_social_links footer_social_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_social_links
    ADD CONSTRAINT footer_social_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: form_submissions form_submissions_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_submissions
    ADD CONSTRAINT form_submissions_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: form_submissions_submission_data form_submissions_submission_data_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_submissions_submission_data
    ADD CONSTRAINT form_submissions_submission_data_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.form_submissions(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_checkbox
    ADD CONSTRAINT forms_blocks_checkbox_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_country forms_blocks_country_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_country
    ADD CONSTRAINT forms_blocks_country_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_email forms_blocks_email_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_email
    ADD CONSTRAINT forms_blocks_email_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_message forms_blocks_message_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_message
    ADD CONSTRAINT forms_blocks_message_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_number forms_blocks_number_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_number
    ADD CONSTRAINT forms_blocks_number_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_select_options forms_blocks_select_options_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_select_options
    ADD CONSTRAINT forms_blocks_select_options_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms_blocks_select(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_select forms_blocks_select_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_select
    ADD CONSTRAINT forms_blocks_select_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_state forms_blocks_state_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_state
    ADD CONSTRAINT forms_blocks_state_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_text forms_blocks_text_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_text
    ADD CONSTRAINT forms_blocks_text_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_textarea forms_blocks_textarea_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_textarea
    ADD CONSTRAINT forms_blocks_textarea_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_emails forms_emails_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_emails
    ADD CONSTRAINT forms_emails_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: fulfillment_schedules_available_dates fulfillment_schedules_available_dates_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_available_dates
    ADD CONSTRAINT fulfillment_schedules_available_dates_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.fulfillment_schedules(id) ON DELETE CASCADE;


--
-- Name: fulfillment_schedules_postal_codes fulfillment_schedules_postal_codes_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_postal_codes
    ADD CONSTRAINT fulfillment_schedules_postal_codes_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.fulfillment_schedules(id) ON DELETE CASCADE;


--
-- Name: fulfillment_schedules_rels fulfillment_schedules_rels_branches_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_rels
    ADD CONSTRAINT fulfillment_schedules_rels_branches_fk FOREIGN KEY (branches_id) REFERENCES public.branches(id) ON DELETE CASCADE;


--
-- Name: fulfillment_schedules_rels fulfillment_schedules_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_rels
    ADD CONSTRAINT fulfillment_schedules_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.fulfillment_schedules(id) ON DELETE CASCADE;


--
-- Name: fulfillment_schedules_rels fulfillment_schedules_rels_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_rels
    ADD CONSTRAINT fulfillment_schedules_rels_products_fk FOREIGN KEY (products_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: fulfillment_schedules_time_slots fulfillment_schedules_time_slots_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_time_slots
    ADD CONSTRAINT fulfillment_schedules_time_slots_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.fulfillment_schedules(id) ON DELETE CASCADE;


--
-- Name: fulfillment_schedules_weekly_days fulfillment_schedules_weekly_days_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_schedules_weekly_days
    ADD CONSTRAINT fulfillment_schedules_weekly_days_parent_fk FOREIGN KEY (parent_id) REFERENCES public.fulfillment_schedules(id) ON DELETE CASCADE;


--
-- Name: header header_logo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header
    ADD CONSTRAINT header_logo_id_media_id_fk FOREIGN KEY (logo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: header_nav_items header_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: newsletter_promo newsletter_promo_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.newsletter_promo
    ADD CONSTRAINT newsletter_promo_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: orders orders_customer_id_users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_users_id_fk FOREIGN KEY (customer_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: orders orders_fulfillment_branch_id_branches_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_fulfillment_branch_id_branches_id_fk FOREIGN KEY (fulfillment_branch_id) REFERENCES public.branches(id) ON DELETE SET NULL;


--
-- Name: orders_items orders_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_items
    ADD CONSTRAINT orders_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: orders_items orders_items_product_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_items
    ADD CONSTRAINT orders_items_product_id_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: orders_items orders_items_variant_id_variants_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_items
    ADD CONSTRAINT orders_items_variant_id_variants_id_fk FOREIGN KEY (variant_id) REFERENCES public.variants(id) ON DELETE SET NULL;


--
-- Name: orders_purchase_types orders_purchase_types_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_purchase_types
    ADD CONSTRAINT orders_purchase_types_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: orders_purchase_types orders_purchase_types_product_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_purchase_types
    ADD CONSTRAINT orders_purchase_types_product_id_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: orders_rels orders_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_rels
    ADD CONSTRAINT orders_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: orders_rels orders_rels_transactions_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders_rels
    ADD CONSTRAINT orders_rels_transactions_fk FOREIGN KEY (transactions_id) REFERENCES public.transactions(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_about_story pages_blocks_about_story_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_story
    ADD CONSTRAINT pages_blocks_about_story_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_about_story pages_blocks_about_story_page_intro_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_story
    ADD CONSTRAINT pages_blocks_about_story_page_intro_hero_image_id_media_id_fk FOREIGN KEY (page_intro_hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_about_story pages_blocks_about_story_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_about_story
    ADD CONSTRAINT pages_blocks_about_story_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_archive pages_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_banner pages_blocks_banner_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_banner
    ADD CONSTRAINT pages_blocks_banner_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_carousel pages_blocks_carousel_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_carousel
    ADD CONSTRAINT pages_blocks_carousel_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_contact_cards_items pages_blocks_contact_cards_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_cards_items
    ADD CONSTRAINT pages_blocks_contact_cards_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_contact_cards(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_contact_cards pages_blocks_contact_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_cards
    ADD CONSTRAINT pages_blocks_contact_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_contact_page_cards pages_blocks_contact_page_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_page_cards
    ADD CONSTRAINT pages_blocks_contact_page_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_contact_page(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_contact_page pages_blocks_contact_page_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_page
    ADD CONSTRAINT pages_blocks_contact_page_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_contact_page pages_blocks_contact_page_map_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_page
    ADD CONSTRAINT pages_blocks_contact_page_map_image_id_media_id_fk FOREIGN KEY (map_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_contact_page pages_blocks_contact_page_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_page
    ADD CONSTRAINT pages_blocks_contact_page_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_contact_page_store_hours pages_blocks_contact_page_store_hours_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_contact_page_store_hours
    ADD CONSTRAINT pages_blocks_contact_page_store_hours_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_contact_page(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content pages_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta pages_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_featured_cuts_items pages_blocks_featured_cuts_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_cuts_items
    ADD CONSTRAINT pages_blocks_featured_cuts_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_featured_cuts_items pages_blocks_featured_cuts_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_cuts_items
    ADD CONSTRAINT pages_blocks_featured_cuts_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_featured_cuts(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_featured_cuts_items pages_blocks_featured_cuts_items_product_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_cuts_items
    ADD CONSTRAINT pages_blocks_featured_cuts_items_product_id_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_featured_cuts pages_blocks_featured_cuts_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_featured_cuts
    ADD CONSTRAINT pages_blocks_featured_cuts_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_how_it_works pages_blocks_how_it_works_bottom_cta_background_image_id_media_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works
    ADD CONSTRAINT pages_blocks_how_it_works_bottom_cta_background_image_id_media_ FOREIGN KEY (bottom_cta_background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_how_it_works_faqs pages_blocks_how_it_works_faqs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works_faqs
    ADD CONSTRAINT pages_blocks_how_it_works_faqs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_how_it_works(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_how_it_works pages_blocks_how_it_works_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works
    ADD CONSTRAINT pages_blocks_how_it_works_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_how_it_works_steps pages_blocks_how_it_works_steps_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works_steps
    ADD CONSTRAINT pages_blocks_how_it_works_steps_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_how_it_works_steps pages_blocks_how_it_works_steps_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works_steps
    ADD CONSTRAINT pages_blocks_how_it_works_steps_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_how_it_works(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_how_it_works pages_blocks_how_it_works_values_background_image_id_media_id_f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works
    ADD CONSTRAINT pages_blocks_how_it_works_values_background_image_id_media_id_f FOREIGN KEY (values_background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_how_it_works_values pages_blocks_how_it_works_values_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_how_it_works_values
    ADD CONSTRAINT pages_blocks_how_it_works_values_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_how_it_works(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_info_section pages_blocks_info_section_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_section
    ADD CONSTRAINT pages_blocks_info_section_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_info_section pages_blocks_info_section_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_info_section
    ADD CONSTRAINT pages_blocks_info_section_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_product_grid pages_blocks_product_grid_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_product_grid
    ADD CONSTRAINT pages_blocks_product_grid_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_social_links_items pages_blocks_social_links_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_social_links_items
    ADD CONSTRAINT pages_blocks_social_links_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_social_links(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_social_links pages_blocks_social_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_social_links
    ADD CONSTRAINT pages_blocks_social_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_testimonials_items pages_blocks_testimonials_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_testimonials_items
    ADD CONSTRAINT pages_blocks_testimonials_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_testimonials(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_testimonials pages_blocks_testimonials_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_testimonials
    ADD CONSTRAINT pages_blocks_testimonials_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_three_item_grid pages_blocks_three_item_grid_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_three_item_grid
    ADD CONSTRAINT pages_blocks_three_item_grid_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_visit_section_hours pages_blocks_visit_section_hours_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_visit_section_hours
    ADD CONSTRAINT pages_blocks_visit_section_hours_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_visit_section(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_visit_section_image_links pages_blocks_visit_section_image_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_visit_section_image_links
    ADD CONSTRAINT pages_blocks_visit_section_image_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_visit_section(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_visit_section pages_blocks_visit_section_map_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_visit_section
    ADD CONSTRAINT pages_blocks_visit_section_map_image_id_media_id_fk FOREIGN KEY (map_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_visit_section pages_blocks_visit_section_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_visit_section
    ADD CONSTRAINT pages_blocks_visit_section_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_visit_section pages_blocks_visit_section_storefront_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_visit_section
    ADD CONSTRAINT pages_blocks_visit_section_storefront_image_id_media_id_fk FOREIGN KEY (storefront_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_hero_links pages_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_hero_media_id_media_id_fk FOREIGN KEY (hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_hero_slides pages_hero_slides_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_slides
    ADD CONSTRAINT pages_hero_slides_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_hero_slides pages_hero_slides_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_slides
    ADD CONSTRAINT pages_hero_slides_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_rels pages_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_products_fk FOREIGN KEY (products_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_addresses_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_addresses_fk FOREIGN KEY (addresses_id) REFERENCES public.addresses(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_branch_holidays_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_branch_holidays_fk FOREIGN KEY (branch_holidays_id) REFERENCES public.branch_holidays(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_branch_inventory_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_branch_inventory_fk FOREIGN KEY (branch_inventory_id) REFERENCES public.branch_inventory(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_branches_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_branches_fk FOREIGN KEY (branches_id) REFERENCES public.branches(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_carts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_carts_fk FOREIGN KEY (carts_id) REFERENCES public.carts(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_cut_types_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_cut_types_fk FOREIGN KEY (cut_types_id) REFERENCES public.cut_types(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_flavors_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_flavors_fk FOREIGN KEY (flavors_id) REFERENCES public.flavors(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_form_submissions_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_form_submissions_fk FOREIGN KEY (form_submissions_id) REFERENCES public.form_submissions(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_forms_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_forms_fk FOREIGN KEY (forms_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_fulfillment_schedules_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_fulfillment_schedules_fk FOREIGN KEY (fulfillment_schedules_id) REFERENCES public.fulfillment_schedules(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_meat_types_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_meat_types_fk FOREIGN KEY (meat_types_id) REFERENCES public.meat_types(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_orders_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_orders_fk FOREIGN KEY (orders_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_locked_documents(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_products_fk FOREIGN KEY (products_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_qualities_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_qualities_fk FOREIGN KEY (qualities_id) REFERENCES public.qualities(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_transactions_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_transactions_fk FOREIGN KEY (transactions_id) REFERENCES public.transactions(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_variant_options_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_variant_options_fk FOREIGN KEY (variant_options_id) REFERENCES public.variant_options(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_variant_types_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_variant_types_fk FOREIGN KEY (variant_types_id) REFERENCES public.variant_types(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_variants_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_variants_fk FOREIGN KEY (variants_id) REFERENCES public.variants(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_preferences(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: products_badges products_badges_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_badges
    ADD CONSTRAINT products_badges_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: products_product_gallery products_product_gallery_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_product_gallery
    ADD CONSTRAINT products_product_gallery_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: products_product_gallery products_product_gallery_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_product_gallery
    ADD CONSTRAINT products_product_gallery_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: products_quality products_quality_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_quality
    ADD CONSTRAINT products_quality_parent_fk FOREIGN KEY (parent_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: products_rels products_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_rels
    ADD CONSTRAINT products_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: products_rels products_rels_variant_types_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_rels
    ADD CONSTRAINT products_rels_variant_types_fk FOREIGN KEY (variant_types_id) REFERENCES public.variant_types(id) ON DELETE CASCADE;


--
-- Name: products_reviews products_reviews_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_reviews
    ADD CONSTRAINT products_reviews_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: products_tags products_tags_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_tags
    ADD CONSTRAINT products_tags_parent_fk FOREIGN KEY (parent_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: products_whats_inside products_whats_inside_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products_whats_inside
    ADD CONSTRAINT products_whats_inside_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: transactions transactions_cart_id_carts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_cart_id_carts_id_fk FOREIGN KEY (cart_id) REFERENCES public.carts(id) ON DELETE SET NULL;


--
-- Name: transactions transactions_customer_id_users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_customer_id_users_id_fk FOREIGN KEY (customer_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: transactions_items transactions_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions_items
    ADD CONSTRAINT transactions_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.transactions(id) ON DELETE CASCADE;


--
-- Name: transactions_items transactions_items_product_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions_items
    ADD CONSTRAINT transactions_items_product_id_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: transactions_items transactions_items_variant_id_variants_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions_items
    ADD CONSTRAINT transactions_items_variant_id_variants_id_fk FOREIGN KEY (variant_id) REFERENCES public.variants(id) ON DELETE SET NULL;


--
-- Name: transactions transactions_order_id_orders_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_order_id_orders_id_fk FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE SET NULL;


--
-- Name: users_roles users_roles_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_parent_fk FOREIGN KEY (parent_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users_sessions users_sessions_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: variant_options variant_options_variant_type_id_variant_types_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_options
    ADD CONSTRAINT variant_options_variant_type_id_variant_types_id_fk FOREIGN KEY (variant_type_id) REFERENCES public.variant_types(id) ON DELETE SET NULL;


--
-- Name: variants variants_product_id_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants
    ADD CONSTRAINT variants_product_id_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: variants_rels variants_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants_rels
    ADD CONSTRAINT variants_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.variants(id) ON DELETE CASCADE;


--
-- Name: variants_rels variants_rels_variant_options_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants_rels
    ADD CONSTRAINT variants_rels_variant_options_fk FOREIGN KEY (variant_options_id) REFERENCES public.variant_options(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict VflkE3sC9ouCrF9y5ZYLr9ejhxRsLbvYHqsvFqZ6hfbMlvNG7bMEXithgbI28pn

