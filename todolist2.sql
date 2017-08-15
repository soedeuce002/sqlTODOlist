--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

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
-- Name: todos; Type: TABLE; Schema: public; Owner: ree
--

CREATE TABLE todos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    details character varying(3000),
    priority integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    completed_at timestamp without time zone
);


ALTER TABLE todos OWNER TO ree;

--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: public; Owner: ree
--

CREATE SEQUENCE todos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE todos_id_seq OWNER TO ree;

--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ree
--

ALTER SEQUENCE todos_id_seq OWNED BY todos.id;


--
-- Name: todos id; Type: DEFAULT; Schema: public; Owner: ree
--

ALTER TABLE ONLY todos ALTER COLUMN id SET DEFAULT nextval('todos_id_seq'::regclass);


--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: ree
--

COPY todos (id, title, details, priority, created_at, completed_at) FROM stdin;
1	take out garbage	from both bathrooms	5	2017-08-10 13:51:29.861185	\N
2	sewing project	cut out patterns	5	2017-08-10 13:55:30.800943	\N
3	wash clothes	whites and lights	3	2017-08-10 13:55:30.800943	\N
4	cut the grass	might be a snake in there	2	2017-08-10 14:10:35.883394	\N
5	wash clothes	darks	4	2017-08-10 14:10:35.883394	\N
6	wash the car	dont need to wax it	5	2017-08-10 14:10:35.883394	\N
7	sweep	kitchen and dining room	3	2017-08-10 14:22:27.884198	\N
8	hang up clothes	all the shirts and sweaters	4	2017-08-10 14:22:27.884198	\N
9	water the plants	they are gonna die	5	2017-08-10 14:22:27.884198	\N
10	vacuum	back bedroom	3	2017-08-10 14:24:35.380528	\N
11	organize closet	back bathrooms	4	2017-08-10 14:24:35.380528	\N
12	clean tub	get hair out of the drain	5	2017-08-10 14:24:35.380528	\N
14	pick vegetables	corn and stringbeans	4	2017-08-10 14:27:29.342622	\N
15	feed the dog	remember to give him his meds	5	2017-08-10 14:27:29.342622	\N
16	visit grandma	take her birthday card	3	2017-08-10 14:31:06.14807	\N
17	check the mail	throw away all the junkmail	4	2017-08-10 14:31:06.14807	\N
18	go to grocery store	get everything on the list	1	2017-08-10 14:31:06.14807	\N
19	complete assignments	robots and authentication	1	2017-08-10 14:33:45.32904	\N
20	clean stoneys room	pick up toys and make the bed	3	2017-08-10 14:33:45.32904	\N
21	clean the toilet	front bathroom	2	2017-08-10 14:33:45.32904	\N
22	plan our vacation	book hotel and rental car	3	2017-08-10 14:37:44.562409	\N
24	shred old bills	make sure they are paid first	2	2017-08-10 14:37:44.562409	\N
25	cook dinner	thurkey thaco thursday	1	2017-08-10 14:37:44.562409	\N
13	change the oil	in the envoy	3	2017-08-10 14:27:29.342622	2017-08-10 14:45:53.740594
23	clean out fridge	throw out leftover food	2	2017-08-10 14:37:44.562409	2017-08-10 14:46:06.450696
\.


--
-- Name: todos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ree
--

SELECT pg_catalog.setval('todos_id_seq', 25, true);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: ree
--

ALTER TABLE ONLY todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

