--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

SET statement_timeout = 0;
SET lock_timeout = 0;
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
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE company (
    id integer NOT NULL,
    name character(100),
    cnpj integer,
    address character(100)
);


ALTER TABLE company OWNER TO postgres;

--
-- Name: company_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE company_id_seq OWNER TO postgres;

--
-- Name: company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE company_id_seq OWNED BY company.id;


--
-- Name: company_sport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE company_sport (
    id_company integer NOT NULL,
    id_sport integer NOT NULL
);


ALTER TABLE company_sport OWNER TO postgres;

--
-- Name: favorite_sport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE favorite_sport (
    id_user integer NOT NULL,
    id_sport integer NOT NULL
);


ALTER TABLE favorite_sport OWNER TO postgres;

--
-- Name: groupp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE groupp (
    id integer NOT NULL,
    name character(30)
);


ALTER TABLE groupp OWNER TO postgres;

--
-- Name: groupp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE groupp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE groupp_id_seq OWNER TO postgres;

--
-- Name: groupp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE groupp_id_seq OWNED BY groupp.id;


--
-- Name: match; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE match (
    id integer NOT NULL,
    date timestamp without time zone,
    result_0 integer,
    result_1 integer,
    id_company integer,
    id_sport integer
);


ALTER TABLE match OWNER TO postgres;

--
-- Name: match_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE match_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE match_id_seq OWNER TO postgres;

--
-- Name: match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE match_id_seq OWNED BY match.id;


--
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE payment (
    id integer NOT NULL,
    price numeric,
    deadline timestamp without time zone,
    status character(10),
    method character(10),
    id_match integer
);


ALTER TABLE payment OWNER TO postgres;

--
-- Name: payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE payment_id_seq OWNER TO postgres;

--
-- Name: payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE payment_id_seq OWNED BY payment.id;


--
-- Name: plays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE plays (
    id_user integer NOT NULL,
    id_match integer NOT NULL,
    team boolean
);


ALTER TABLE plays OWNER TO postgres;

--
-- Name: rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE rating (
    id_user integer NOT NULL,
    id_company integer NOT NULL,
    score integer
);


ALTER TABLE rating OWNER TO postgres;

--
-- Name: sport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sport (
    id integer NOT NULL,
    category character(30),
    max_players integer,
    min_players integer
);


ALTER TABLE sport OWNER TO postgres;

--
-- Name: sport_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sport_id_seq OWNER TO postgres;

--
-- Name: sport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sport_id_seq OWNED BY sport.id;


--
-- Name: userr; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE userr (
    id integer NOT NULL,
    name character(100),
    credit_card integer,
    email character(100),
    password character(30)
);


ALTER TABLE userr OWNER TO postgres;

--
-- Name: userr_groupp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE userr_groupp (
    id_group integer NOT NULL,
    id_user integer NOT NULL,
    is_admin boolean
);


ALTER TABLE userr_groupp OWNER TO postgres;

--
-- Name: userr_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE userr_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE userr_id_seq OWNER TO postgres;

--
-- Name: userr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE userr_id_seq OWNED BY userr.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY company ALTER COLUMN id SET DEFAULT nextval('company_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groupp ALTER COLUMN id SET DEFAULT nextval('groupp_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY match ALTER COLUMN id SET DEFAULT nextval('match_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY payment ALTER COLUMN id SET DEFAULT nextval('payment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sport ALTER COLUMN id SET DEFAULT nextval('sport_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userr ALTER COLUMN id SET DEFAULT nextval('userr_id_seq'::regclass);


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY company (id, name, cnpj, address) FROM stdin;
1	Servidores                                                                                          	111	UFSC                                                                                                
2	UFSC                                                                                                	666	UFSC                                                                                                
3	Paula Ramos                                                                                         	333	Madre Benvenuta                                                                                     
\.


--
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('company_id_seq', 1, false);


--
-- Data for Name: company_sport; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY company_sport (id_company, id_sport) FROM stdin;
1	1
2	1
2	2
2	3
3	1
3	2
\.


--
-- Data for Name: favorite_sport; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY favorite_sport (id_user, id_sport) FROM stdin;
1	1
2	1
3	2
5	2
4	1
6	3
\.


--
-- Data for Name: groupp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY groupp (id, name) FROM stdin;
1	Automacao141                  
2	Codenation                    
3	Loadsmart                     
\.


--
-- Name: groupp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('groupp_id_seq', 1, false);


--
-- Data for Name: match; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY match (id, date, result_0, result_1, id_company, id_sport) FROM stdin;
1	2017-06-28 00:00:00	3	0	1	1
2	2017-05-28 00:00:00	2	1	2	1
3	2016-04-12 00:00:00	7	5	3	1
\.


--
-- Name: match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('match_id_seq', 1, false);


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY payment (id, price, deadline, status, method, id_match) FROM stdin;
1	100	2017-06-28 00:00:00	pago      	dinheiro  	1
2	50	2017-05-29 00:00:00	pendente  	dinheiro  	2
3	150	2016-04-12 00:00:00	pago      	cartao    	3
\.


--
-- Name: payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('payment_id_seq', 1, false);


--
-- Data for Name: plays; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY plays (id_user, id_match, team) FROM stdin;
1	1	f
2	1	t
1	2	t
3	2	f
4	3	t
1	3	f
\.


--
-- Data for Name: rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY rating (id_user, id_company, score) FROM stdin;
1	1	3
1	2	2
1	3	4
2	1	5
2	2	5
2	3	5
3	2	5
3	3	5
4	2	5
5	1	1
6	3	5
\.


--
-- Data for Name: sport; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sport (id, category, max_players, min_players) FROM stdin;
1	futebol                       	22	2
2	volei                         	12	2
3	tenis                         	4	2
\.


--
-- Name: sport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sport_id_seq', 1, false);


--
-- Data for Name: userr; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userr (id, name, credit_card, email, password) FROM stdin;
1	Ígor                                                                                                	123	japa@gmail.com                                                                                      	123                           
2	Felipe                                                                                              	321	kaka@gmail.com                                                                                      	321                           
3	Fernando                                                                                            	666	battisti@gmail.com                                                                                  	666                           
4	Eduardo                                                                                             	999	marschall@gmail.com                                                                                 	999                           
5	Leonardo                                                                                            	888	werk@gmail.com                                                                                      	888                           
6	Miguel                                                                                              	555	bauschat@gmail.com                                                                                  	555                           
\.


--
-- Data for Name: userr_groupp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userr_groupp (id_group, id_user, is_admin) FROM stdin;
1	1	t
1	2	t
1	3	f
1	4	f
2	1	t
2	2	t
2	5	f
2	6	f
3	1	t
3	5	t
3	6	t
\.


--
-- Name: userr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('userr_id_seq', 1, false);


--
-- Name: company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);


--
-- Name: company_sport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY company_sport
    ADD CONSTRAINT company_sport_pkey PRIMARY KEY (id_company, id_sport);


--
-- Name: favorite_sport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favorite_sport
    ADD CONSTRAINT favorite_sport_pkey PRIMARY KEY (id_user, id_sport);


--
-- Name: groupp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groupp
    ADD CONSTRAINT groupp_pkey PRIMARY KEY (id);


--
-- Name: match_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY match
    ADD CONSTRAINT match_pkey PRIMARY KEY (id);


--
-- Name: payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);


--
-- Name: plays_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY plays
    ADD CONSTRAINT plays_pkey PRIMARY KEY (id_user, id_match);


--
-- Name: rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id_user, id_company);


--
-- Name: sport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sport
    ADD CONSTRAINT sport_pkey PRIMARY KEY (id);


--
-- Name: userr_groupp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userr_groupp
    ADD CONSTRAINT userr_groupp_pkey PRIMARY KEY (id_group, id_user);


--
-- Name: userr_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userr
    ADD CONSTRAINT userr_pkey PRIMARY KEY (id);


--
-- Name: fk_1_company_sport; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY company_sport
    ADD CONSTRAINT fk_1_company_sport FOREIGN KEY (id_company) REFERENCES company(id);


--
-- Name: fk_1_favorite_sport; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favorite_sport
    ADD CONSTRAINT fk_1_favorite_sport FOREIGN KEY (id_user) REFERENCES userr(id);


--
-- Name: fk_1_match; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY match
    ADD CONSTRAINT fk_1_match FOREIGN KEY (id_company) REFERENCES company(id);


--
-- Name: fk_1_plays; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY plays
    ADD CONSTRAINT fk_1_plays FOREIGN KEY (id_user) REFERENCES userr(id);


--
-- Name: fk_1_rating; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rating
    ADD CONSTRAINT fk_1_rating FOREIGN KEY (id_user) REFERENCES userr(id);


--
-- Name: fk_1_user_groupp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userr_groupp
    ADD CONSTRAINT fk_1_user_groupp FOREIGN KEY (id_group) REFERENCES groupp(id);


--
-- Name: fk_2_company_sport; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY company_sport
    ADD CONSTRAINT fk_2_company_sport FOREIGN KEY (id_sport) REFERENCES sport(id);


--
-- Name: fk_2_favorite_sport; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favorite_sport
    ADD CONSTRAINT fk_2_favorite_sport FOREIGN KEY (id_sport) REFERENCES sport(id);


--
-- Name: fk_2_match; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY match
    ADD CONSTRAINT fk_2_match FOREIGN KEY (id_sport) REFERENCES sport(id);


--
-- Name: fk_2_plays; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY plays
    ADD CONSTRAINT fk_2_plays FOREIGN KEY (id_match) REFERENCES match(id);


--
-- Name: fk_2_rating; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rating
    ADD CONSTRAINT fk_2_rating FOREIGN KEY (id_company) REFERENCES company(id);


--
-- Name: fk_2_user_groupp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userr_groupp
    ADD CONSTRAINT fk_2_user_groupp FOREIGN KEY (id_user) REFERENCES userr(id);


--
-- Name: fk_payment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT fk_payment FOREIGN KEY (id_match) REFERENCES match(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

