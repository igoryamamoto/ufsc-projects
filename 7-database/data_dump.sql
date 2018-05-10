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

SET search_path = public, pg_catalog;

--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: peixeboi
--

COPY company (id, name, cnpj, address) FROM stdin;
1	Servidores	111	UFSC
2	UFSC	666	UFSC
3	Paula Ramos	333	Madre Benvenuta
\.


--
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: peixeboi
--

SELECT pg_catalog.setval('company_id_seq', 1, false);


--
-- Data for Name: sport; Type: TABLE DATA; Schema: public; Owner: peixeboi
--

COPY sport (id, category, max_players, min_players) FROM stdin;
1	futebol                       	22	2
2	volei                         	12	2
3	tenis                         	4	2
\.


--
-- Data for Name: company_sport; Type: TABLE DATA; Schema: public; Owner: peixeboi
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
-- Data for Name: userr; Type: TABLE DATA; Schema: public; Owner: peixeboi
--

COPY userr (id, name, credit_card, email, password) FROM stdin;
1	Ígor	123	japa@gmail.com	123
2	Felipe	321	kaka@gmail.com	321
3	Fernando	666	battisti@gmail.com	666
4	Eduardo	999	marschall@gmail.com	999
5	Leonardo	888	werk@gmail.com	888
6	Miguel	555	bauschat@gmail.com	555
\.


--
-- Data for Name: favorite_sport; Type: TABLE DATA; Schema: public; Owner: peixeboi
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
-- Data for Name: groupp; Type: TABLE DATA; Schema: public; Owner: peixeboi
--

COPY groupp (id, name) FROM stdin;
1	Automacao141                  
2	Codenation                    
3	Loadsmart                     
\.


--
-- Name: groupp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: peixeboi
--

SELECT pg_catalog.setval('groupp_id_seq', 1, false);


--
-- Data for Name: match; Type: TABLE DATA; Schema: public; Owner: peixeboi
--

COPY match (id, date, result_0, result_1, id_company, id_sport) FROM stdin;
1	2017-06-28 00:00:00	3	0	1	1
2	2017-05-28 00:00:00	2	1	2	1
3	2016-04-12 00:00:00	7	5	3	1
\.


--
-- Name: match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: peixeboi
--

SELECT pg_catalog.setval('match_id_seq', 1, false);


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: peixeboi
--

COPY payment (id, price, deadline, status, method, id_match) FROM stdin;
1	100	2017-06-28 00:00:00	pago      	dinheiro  	1
2	50	2017-05-29 00:00:00	pendente  	dinheiro  	2
3	150	2016-04-12 00:00:00	pago      	cartao    	3
\.


--
-- Name: payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: peixeboi
--

SELECT pg_catalog.setval('payment_id_seq', 1, false);


--
-- Data for Name: plays; Type: TABLE DATA; Schema: public; Owner: peixeboi
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
-- Data for Name: rating; Type: TABLE DATA; Schema: public; Owner: peixeboi
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
-- Name: sport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: peixeboi
--

SELECT pg_catalog.setval('sport_id_seq', 1, false);


--
-- Data for Name: userr_groupp; Type: TABLE DATA; Schema: public; Owner: peixeboi
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
-- Name: userr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: peixeboi
--

SELECT pg_catalog.setval('userr_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

