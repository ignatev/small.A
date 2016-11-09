--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS smalla;
--
-- Name: smalla; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE smalla WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE smalla OWNER TO postgres;

\connect smalla

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: lists; Type: TABLE; Schema: public; Owner: smalla
--

CREATE TABLE lists (
    id integer NOT NULL,
    data jsonb
);


ALTER TABLE lists OWNER TO smalla;

--
-- Name: lists_id_seq; Type: SEQUENCE; Schema: public; Owner: smalla
--

CREATE SEQUENCE lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lists_id_seq OWNER TO smalla;

--
-- Name: lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smalla
--

ALTER SEQUENCE lists_id_seq OWNED BY lists.id;


--
-- Name: lists id; Type: DEFAULT; Schema: public; Owner: smalla
--

ALTER TABLE ONLY lists ALTER COLUMN id SET DEFAULT nextval('lists_id_seq'::regclass);


--
-- Data for Name: lists; Type: TABLE DATA; Schema: public; Owner: smalla
--

COPY lists (id, data) FROM stdin;
4	["bart", "homer"]
5	["allah", "jesus", "krishna", "pepe"]
6	["rick", "morty"]
\.


--
-- Name: lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: smalla
--

SELECT pg_catalog.setval('lists_id_seq', 6, true);


--
-- Name: lists lists_pkey; Type: CONSTRAINT; Schema: public; Owner: smalla
--

ALTER TABLE ONLY lists
    ADD CONSTRAINT lists_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

