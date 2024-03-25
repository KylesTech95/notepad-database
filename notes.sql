--
-- PostgreSQL database dump
--

-- Dumped from database version 13.14 (Debian 13.14-0+deb11u1)
-- Dumped by pg_dump version 13.14 (Debian 13.14-0+deb11u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: notepad; Type: TABLE; Schema: public; Owner: kylestech95
--

CREATE TABLE public.notepad (
    id integer NOT NULL,
    notes text NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.notepad OWNER TO kylestech95;

--
-- Name: notepad_id_seq; Type: SEQUENCE; Schema: public; Owner: kylestech95
--

CREATE SEQUENCE public.notepad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notepad_id_seq OWNER TO kylestech95;

--
-- Name: notepad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kylestech95
--

ALTER SEQUENCE public.notepad_id_seq OWNED BY public.notepad.id;


--
-- Name: notepad id; Type: DEFAULT; Schema: public; Owner: kylestech95
--

ALTER TABLE ONLY public.notepad ALTER COLUMN id SET DEFAULT nextval('public.notepad_id_seq'::regclass);


--
-- Data for Name: notepad; Type: TABLE DATA; Schema: public; Owner: kylestech95
--

COPY public.notepad (id, notes, "timestamp") FROM stdin;
1	eat food	2024-03-25 11:09:58.271348-04
\.


--
-- Name: notepad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kylestech95
--

SELECT pg_catalog.setval('public.notepad_id_seq', 1, true);


--
-- Name: notepad notepad_pkey; Type: CONSTRAINT; Schema: public; Owner: kylestech95
--

ALTER TABLE ONLY public.notepad
    ADD CONSTRAINT notepad_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

