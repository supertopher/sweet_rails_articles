--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: articles; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    url character varying(255),
    category_id integer,
    slug character varying(255)
);


ALTER TABLE public.articles OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE categories (
    id integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.categories OWNER TO apprentice;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO apprentice;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO apprentice;

--
-- Name: taggings; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE taggings (
    id integer NOT NULL,
    article_id integer,
    tag_id integer
);


ALTER TABLE public.taggings OWNER TO apprentice;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO apprentice;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE taggings_id_seq OWNED BY taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.tags OWNER TO apprentice;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO apprentice;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY taggings ALTER COLUMN id SET DEFAULT nextval('taggings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles (id, title, description, url, category_id, slug) FROM stdin;
4	vel sequi amet	Quo voluptatum dolor cum accusantium ea quod ut. Fugit libero non. Magnam illo rerum ut veritatis sequi qui.	articles/7/23/2013/vel-sequi-amet	3	vel-sequi-amet
5	ipsum est dignissimos	Tempore impedit earum laboriosam esse nemo. Voluptatibus quod similique sed ut sint quo. Repellendus ab qui neque et tempore quo.	articles/7/23/2013/ipsum-est-dignissimos	5	ipsum-est-dignissimos
6	ut dolores et	Ullam enim dolorem amet ducimus. Ipsum aut omnis incidunt quia nesciunt aut. Omnis qui qui eaque deleniti quisquam fuga. Non aperiam quaerat dolorum.	articles/7/23/2013/ut-dolores-et	3	ut-dolores-et
7	enim autem repellendus	Suscipit aliquam quia a dolorum atque facere. Similique qui dolor ea qui. Earum fuga natus. Molestias voluptatem dolorem aut molestiae totam culpa. Saepe quia et.	articles/7/23/2013/enim-autem-repellendus	6	enim-autem-repellendus
8	quo iure ad	Pariatur sit cum est. Voluptatem dicta provident porro delectus. Aut libero eum et voluptates.	articles/7/23/2013/quo-iure-ad	7	quo-iure-ad
9	quis et omnis	Et sunt eos architecto ut. Incidunt id sit ea laudantium voluptatem voluptatum eveniet. Est accusamus earum quis fugiat iusto aspernatur quo.	articles/7/23/2013/quis-et-omnis	2	quis-et-omnis
10	et quidem voluptates	Veniam ut natus quia eos voluptates inventore. Ut rerum vel debitis voluptatem quas. Mollitia voluptatum nihil consequuntur et architecto soluta molestias. Consequatur nobis eos. Magnam aliquid eveniet.	articles/7/23/2013/et-quidem-voluptates	6	et-quidem-voluptates
11	voluptatum autem magnam	Autem facere eum culpa repellendus incidunt ipsam minus. Voluptatem nihil fugit ullam voluptatem pariatur. Labore fugiat quia. Sunt voluptas voluptatem consequatur doloremque quisquam voluptatibus. Quis iure fugiat ut non et ut.	articles/7/23/2013/voluptatum-autem-magnam	2	voluptatum-autem-magnam
12	ea cum est	Ea quo quas consequuntur delectus odit amet. Consequatur at aut consequuntur quibusdam et magni. Quis sequi aliquam sint minima sed nihil. Est adipisci ipsam quibusdam. Eius autem minima aut quaerat quibusdam voluptatem repellat.	articles/7/23/2013/ea-cum-est	2	ea-cum-est
13	maiores culpa tenetur	Unde ut deleniti laudantium commodi necessitatibus. Incidunt necessitatibus quisquam aut maxime. Quos natus voluptatum et architecto reiciendis.	articles/7/23/2013/maiores-culpa-tenetur	3	maiores-culpa-tenetur
14	exercitationem vitae minima	Et sed et a ipsum. Facere eos dolorem animi. Et dolorem id sint soluta est enim. Non eum dolor iusto repudiandae. Quod vel rerum et id.	articles/7/23/2013/exercitationem-vitae-minima	8	exercitationem-vitae-minima
15	id aut porro	Dicta sint voluptas necessitatibus consectetur id. Doloremque sapiente est. Eligendi impedit placeat.	articles/7/23/2013/id-aut-porro	6	id-aut-porro
16	eius omnis et	Architecto rerum ratione blanditiis voluptatum. Voluptatem neque voluptas praesentium. Eos quo voluptatibus sed quod. Dolor magni quis.	articles/7/23/2013/eius-omnis-et	9	eius-omnis-et
17	illum quis ad	Est rem provident. Vero dolore aut. Et quos minima mollitia. Qui consequatur consequatur.	articles/7/23/2013/illum-quis-ad	2	illum-quis-ad
18	iure quos officiis	Vero sed doloremque quos inventore consequatur sint. Quasi possimus at rerum aliquam vel. Quo aperiam perspiciatis nulla. Tenetur et qui sit voluptatem vel.	articles/7/23/2013/iure-quos-officiis	9	iure-quos-officiis
19	autem ut perspiciatis	Voluptatem expedita ad occaecati reiciendis illum et rerum. Molestias eligendi eos repudiandae sit unde non laudantium. Omnis earum nobis praesentium. Esse et rerum et aut. Repellendus et ut.	articles/7/23/2013/autem-ut-perspiciatis	7	autem-ut-perspiciatis
20	fugit et maxime	Quod quis voluptates et facilis ut et. Id enim distinctio. Quaerat repudiandae quod qui inventore amet. Provident omnis dolorum laudantium. Beatae itaque aliquam et dolorem officiis soluta quia.	articles/7/23/2013/fugit-et-maxime	8	fugit-et-maxime
21	aut iusto inventore	Et alias aut. Dolorum in rem aliquam accusantium. Voluptate et impedit est eveniet. Porro et laborum reiciendis. Et sint molestias asperiores est dignissimos.	articles/7/23/2013/aut-iusto-inventore	7	aut-iusto-inventore
22	voluptatem porro dolorem	Dolor quos eligendi ex quae nulla cupiditate fuga. Incidunt blanditiis ratione. Quis illo amet cupiditate nisi velit et.	articles/7/23/2013/voluptatem-porro-dolorem	3	voluptatem-porro-dolorem
23	eveniet ut quasi	Voluptatum excepturi asperiores veritatis quia suscipit quas vel. Repellat iste sunt facere porro quisquam odit quo. Nam officia necessitatibus quod quia. Cupiditate quis aut illum neque sit a.	articles/7/23/2013/eveniet-ut-quasi	7	eveniet-ut-quasi
24	placeat omnis aperiam	Qui quasi incidunt. Illo rerum quia qui. Est sed ut tenetur odit. Magnam aut debitis. Ut hic qui nobis nihil nulla voluptatibus aut.	articles/7/23/2013/placeat-omnis-aperiam	7	placeat-omnis-aperiam
25	repellendus architecto sed	Et beatae repellendus. Magnam sapiente atque porro veritatis omnis illo. Blanditiis nihil illum quidem ut. Molestiae tenetur qui dicta nobis ut sint qui.	articles/7/23/2013/repellendus-architecto-sed	9	repellendus-architecto-sed
26	excepturi modi quo	Maiores quis minus sit error recusandae aut labore. Qui voluptates tenetur esse harum sunt. Voluptatem dolor voluptatum consequatur quo ea saepe.	articles/7/23/2013/excepturi-modi-quo	2	excepturi-modi-quo
27	ea asperiores eum	Error iure velit nemo sit dolor. Dicta porro eos inventore. Praesentium consequatur voluptatem et deleniti doloremque. Et iure magnam praesentium saepe animi fuga aut.	articles/7/23/2013/ea-asperiores-eum	8	ea-asperiores-eum
28	voluptatem minus quidem	Nulla et aut. Hic earum rerum ea. Explicabo ex in itaque consectetur adipisci labore.	articles/7/23/2013/voluptatem-minus-quidem	5	voluptatem-minus-quidem
29	voluptate praesentium reprehenderit	Facere magni cupiditate vero dolorem aut sed autem. Enim quis nisi excepturi. Ipsam quasi eaque veritatis non ea. Fuga ut sunt iste consequatur rerum.	articles/7/23/2013/voluptate-praesentium-reprehenderit	6	voluptate-praesentium-reprehenderit
30	quia omnis et	Ea omnis magnam architecto eaque aut asperiores omnis. Magnam quo et quos nobis. Quia numquam sit odit incidunt reiciendis eum vel. Dolorum reiciendis explicabo ut. In veritatis dolorem quia cumque.	articles/7/23/2013/quia-omnis-et	9	quia-omnis-et
3	in quibusdam distinctio	Distinctio est quod dicta. Eum in rerum pariatur omnis quisquam. Voluptas consequatur nihil inventore ipsam qui. Fugit repudiandae vitae culpa nostrum qui.	articles/7/23/2013/in-quibusdam-distinctio	4	in-quibusdam-distinctio
35	laborum molestiae quia	Nisi cumque voluptatibus molestiae. Ut in omnis aut excepturi molestias. Dolor vitae nemo ad sunt est. Natus voluptas aperiam non consequatur.	articles/7/23/2013/laborum-molestiae-quia	2	laborum-molestiae-quia
36	nesciunt quia officia	Molestiae saepe officiis iure ab voluptatem rerum id. Ea autem et est nihil dolor id. Ut veritatis deleniti distinctio voluptates nobis voluptatem expedita. Dolores magnam minus dicta similique facilis. Vel nulla autem officiis quo ducimus.	articles/7/23/2013/nesciunt-quia-officia	9	nesciunt-quia-officia
37	qui aut cupiditate	Impedit est quia. Enim vel repudiandae exercitationem id. Voluptatem velit dolorem eius ut corrupti.	articles/7/23/2013/qui-aut-cupiditate	3	qui-aut-cupiditate
38	exercitationem in eligendi	Deleniti dolorem omnis aut dolorem reprehenderit eum sed. Vero nostrum consequuntur maxime. Alias ea est itaque. Dolor molestiae consequatur dicta qui atque tempora aut. Animi repellat maxime tempore occaecati sed.	articles/7/23/2013/exercitationem-in-eligendi	5	exercitationem-in-eligendi
39	esse velit odio	Saepe consectetur iure et. Eligendi quae quibusdam debitis non. Minus dignissimos inventore. Est nihil in dolores illum qui.	articles/7/23/2013/esse-velit-odio	3	esse-velit-odio
40	est non fugiat	Eos quibusdam enim. Aut blanditiis et aut aliquid possimus modi in. Odit voluptatum aspernatur fugiat quasi et veritatis. Consectetur nihil deserunt corporis enim eveniet ea est.	articles/7/23/2013/est-non-fugiat	7	est-non-fugiat
41	qui esse deserunt	Nesciunt ullam voluptatem eligendi nisi. Aut id nulla. Et est exercitationem aliquid earum.	articles/7/23/2013/qui-esse-deserunt	9	qui-esse-deserunt
42	molestiae tenetur unde	Magni et earum est delectus. Qui sint aut totam ipsa quo. Ullam cum et in ut.	articles/7/23/2013/molestiae-tenetur-unde	6	molestiae-tenetur-unde
44	explicabo deleniti culpa	Sint animi repudiandae voluptas id explicabo. Illo consequatur reprehenderit est. Omnis neque atque. Repellendus autem et quos necessitatibus molestias.	articles/7/23/2013/explicabo-deleniti-culpa	5	explicabo-deleniti-culpa
45	velit minus temporibus	Et aut ut qui voluptatem recusandae officia voluptas. Quo ex reiciendis rerum dolor enim nulla et. Odio placeat aut.	articles/7/23/2013/velit-minus-temporibus	3	velit-minus-temporibus
46	laborum et rem	Distinctio sit nobis. Quis esse dolores pariatur et consequatur. Adipisci ut quas molestiae blanditiis ut dolorem. Aspernatur ea repellendus eos quibusdam qui vero qui.	articles/7/23/2013/laborum-et-rem	4	laborum-et-rem
47	rem a velit	Facere sint consequatur architecto amet nulla facilis. Voluptatem iusto aut odio. Cum amet a ipsum et. Aperiam id impedit. Fugiat a natus dolorum.	articles/7/23/2013/rem-a-velit	7	rem-a-velit
48	ut est et	Occaecati esse omnis atque ratione quia repellat nulla. In sed sint molestias aliquid. Delectus ducimus consequatur omnis ex sed corrupti recusandae. Tenetur nihil voluptate quos itaque nihil dicta. Quaerat delectus quidem quas molestiae dolore fuga.	articles/7/23/2013/ut-est-et	9	ut-est-et
49	ut voluptas nihil	Magnam aliquam quas eveniet tempore rerum officia. Rerum accusamus voluptatem distinctio alias. Laboriosam quisquam eveniet. Beatae adipisci voluptatem error explicabo et.	articles/7/23/2013/ut-voluptas-nihil	9	ut-voluptas-nihil
50	reprehenderit in non	Doloremque velit ut nostrum cumque dolores magni facilis. Adipisci est quidem debitis voluptatibus. Maiores est dolore. Tempore enim quasi.	articles/7/23/2013/reprehenderit-in-non	2	reprehenderit-in-non
1	ut fugit natus	Itaque corrupti ut doloribus. Sit natus nihil omnis provident non dolorem. Animi qui earum expedita adipisci vel aut aspernatur. Nostrum eum ipsa debitis nulla est harum ea.	articles/7/23/2013/ut-fugit-natus	2	ut-fugit-natus
2	tempora velit minima	Officia sapiente harum repudiandae cumque sit tempore. Veniam aliquid illum accusantium inventore quasi. Et tempora vel quidem quis. Dolores possimus sequi qui et distinctio dolore rem.	articles/7/23/2013/tempora-velit-minima	3	tempora-velit-minima
31	eum blanditiis maiores	Eum dolores qui dicta iure. Quia magnam ab quisquam qui dolorum doloribus. Nostrum voluptas soluta iure temporibus aut illo voluptatem. Blanditiis fugiat ut praesentium nam.	articles/7/23/2013/eum-blanditiis-maiores	2	eum-blanditiis-maiores
32	maxime eos explicabo	Aut numquam cumque. Voluptas et aut accusantium quis maiores molestiae nostrum. Velit aut autem eum officia. Voluptatem nihil repellendus rerum officiis ut. Blanditiis nam ut ut accusamus et.	articles/7/23/2013/maxime-eos-explicabo	5	maxime-eos-explicabo
33	aut quam quis	Eveniet dolorem fugit sed consequatur quae. Qui aspernatur non ipsum non quia totam voluptatem. Omnis ratione ut.	articles/7/23/2013/aut-quam-quis	8	aut-quam-quis
34	doloremque porro laboriosam	Eum blanditiis non. Accusamus consequuntur et quis maiores cupiditate. Est eos architecto nihil facilis recusandae. Doloribus non qui recusandae eum dolorem libero error. Eos atque culpa totam aliquam debitis explicabo.	articles/7/23/2013/doloremque-porro-laboriosam	7	doloremque-porro-laboriosam
43	at culpa placeat	Nisi consequatur suscipit. Exercitationem explicabo qui vitae dolorem est inventore similique. Dolores qui sint dolores aut aut voluptas. Quos ex molestias earum quis autem voluptas.	articles/7/23/2013/at-culpa-placeat	4	at-culpa-placeat
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_id_seq', 50, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY categories (id, description) FROM stdin;
2	sport
3	HEALTH
4	programming
5	business
6	Sports
7	Business
8	computer-world
9	computer world
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('categories_id_seq', 9, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY schema_migrations (version) FROM stdin;
20130311183138
20130723170236
20130723170247
20130723170650
20130723182940
\.


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY taggings (id, article_id, tag_id) FROM stdin;
1	3	4
2	3	5
3	3	6
4	4	7
5	6	8
6	6	9
7	6	10
8	7	8
9	7	1
10	7	11
11	8	4
12	11	7
13	11	3
14	12	11
15	12	6
16	12	11
17	13	5
18	14	9
19	17	12
20	18	2
21	18	10
22	19	11
23	19	1
24	19	2
25	20	8
26	21	13
27	21	14
28	21	8
29	22	2
30	24	6
31	25	4
32	25	11
33	25	2
34	27	3
35	27	8
36	28	12
37	28	2
38	29	14
39	30	13
40	30	6
41	1	1
42	1	2
43	1	3
44	2	4
45	2	3
46	31	5
47	32	1
48	32	4
49	33	2
50	33	11
51	34	14
52	34	8
53	35	12
54	35	9
55	37	3
56	37	7
57	37	9
58	38	6
59	38	11
60	38	3
61	39	8
62	39	7
63	40	8
64	40	2
65	40	9
66	41	13
67	41	11
68	42	6
69	43	3
70	44	12
71	46	7
72	46	12
73	47	10
74	48	9
75	49	7
76	49	11
77	50	1
78	50	14
\.


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('taggings_id_seq', 78, true);


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY tags (id, description) FROM stdin;
1	widget
2	medicine
3	random
4	computer
5	music
6	rails
7	tech
8	ruby
9	hate
10	random-tags
11	cloud
12	art
13	love
14	jquery
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('tags_id_seq', 14, true);


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: apprentice
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM apprentice;
GRANT ALL ON SCHEMA public TO apprentice;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

