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
    category character varying(255),
    tags character varying(255)
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
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO apprentice;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles (id, title, description, url, category, tags) FROM stdin;
1	ut fugit natus	Itaque corrupti ut doloribus. Sit natus nihil omnis provident non dolorem. Animi qui earum expedita adipisci vel aut aspernatur. Nostrum eum ipsa debitis nulla est harum ea.	articles/7/23/2013/ut-fugit-natus	sport	widget, medicine, random
2	tempora velit minima	Officia sapiente harum repudiandae cumque sit tempore. Veniam aliquid illum accusantium inventore quasi. Et tempora vel quidem quis. Dolores possimus sequi qui et distinctio dolore rem.	articles/7/23/2013/tempora-velit-minima	HEALTH	computer, random
3	in quibusdam distinctio	Distinctio est quod dicta. Eum in rerum pariatur omnis quisquam. Voluptas consequatur nihil inventore ipsam qui. Fugit repudiandae vitae culpa nostrum qui.	articles/7/23/2013/in-quibusdam-distinctio	programming	computer, music, rails
4	vel sequi amet	Quo voluptatum dolor cum accusantium ea quod ut. Fugit libero non. Magnam illo rerum ut veritatis sequi qui.	articles/7/23/2013/vel-sequi-amet	HEALTH	tech
5	ipsum est dignissimos	Tempore impedit earum laboriosam esse nemo. Voluptatibus quod similique sed ut sint quo. Repellendus ab qui neque et tempore quo.	articles/7/23/2013/ipsum-est-dignissimos	business	
6	ut dolores et	Ullam enim dolorem amet ducimus. Ipsum aut omnis incidunt quia nesciunt aut. Omnis qui qui eaque deleniti quisquam fuga. Non aperiam quaerat dolorum.	articles/7/23/2013/ut-dolores-et	HEALTH	ruby, hate, random-tags
7	enim autem repellendus	Suscipit aliquam quia a dolorum atque facere. Similique qui dolor ea qui. Earum fuga natus. Molestias voluptatem dolorem aut molestiae totam culpa. Saepe quia et.	articles/7/23/2013/enim-autem-repellendus	Sports	ruby, widget, cloud
8	quo iure ad	Pariatur sit cum est. Voluptatem dicta provident porro delectus. Aut libero eum et voluptates.	articles/7/23/2013/quo-iure-ad	Business	computer
9	quis et omnis	Et sunt eos architecto ut. Incidunt id sit ea laudantium voluptatem voluptatum eveniet. Est accusamus earum quis fugiat iusto aspernatur quo.	articles/7/23/2013/quis-et-omnis	sport	
10	et quidem voluptates	Veniam ut natus quia eos voluptates inventore. Ut rerum vel debitis voluptatem quas. Mollitia voluptatum nihil consequuntur et architecto soluta molestias. Consequatur nobis eos. Magnam aliquid eveniet.	articles/7/23/2013/et-quidem-voluptates	Sports	
11	voluptatum autem magnam	Autem facere eum culpa repellendus incidunt ipsam minus. Voluptatem nihil fugit ullam voluptatem pariatur. Labore fugiat quia. Sunt voluptas voluptatem consequatur doloremque quisquam voluptatibus. Quis iure fugiat ut non et ut.	articles/7/23/2013/voluptatum-autem-magnam	sport	tech, random
12	ea cum est	Ea quo quas consequuntur delectus odit amet. Consequatur at aut consequuntur quibusdam et magni. Quis sequi aliquam sint minima sed nihil. Est adipisci ipsam quibusdam. Eius autem minima aut quaerat quibusdam voluptatem repellat.	articles/7/23/2013/ea-cum-est	sport	cloud, rails, cloud
13	maiores culpa tenetur	Unde ut deleniti laudantium commodi necessitatibus. Incidunt necessitatibus quisquam aut maxime. Quos natus voluptatum et architecto reiciendis.	articles/7/23/2013/maiores-culpa-tenetur	HEALTH	music
14	exercitationem vitae minima	Et sed et a ipsum. Facere eos dolorem animi. Et dolorem id sint soluta est enim. Non eum dolor iusto repudiandae. Quod vel rerum et id.	articles/7/23/2013/exercitationem-vitae-minima	computer-world	hate
15	id aut porro	Dicta sint voluptas necessitatibus consectetur id. Doloremque sapiente est. Eligendi impedit placeat.	articles/7/23/2013/id-aut-porro	Sports	
16	eius omnis et	Architecto rerum ratione blanditiis voluptatum. Voluptatem neque voluptas praesentium. Eos quo voluptatibus sed quod. Dolor magni quis.	articles/7/23/2013/eius-omnis-et	computer world	
17	illum quis ad	Est rem provident. Vero dolore aut. Et quos minima mollitia. Qui consequatur consequatur.	articles/7/23/2013/illum-quis-ad	sport	art
18	iure quos officiis	Vero sed doloremque quos inventore consequatur sint. Quasi possimus at rerum aliquam vel. Quo aperiam perspiciatis nulla. Tenetur et qui sit voluptatem vel.	articles/7/23/2013/iure-quos-officiis	computer world	medicine, random-tags
19	autem ut perspiciatis	Voluptatem expedita ad occaecati reiciendis illum et rerum. Molestias eligendi eos repudiandae sit unde non laudantium. Omnis earum nobis praesentium. Esse et rerum et aut. Repellendus et ut.	articles/7/23/2013/autem-ut-perspiciatis	Business	cloud, widget, medicine
20	fugit et maxime	Quod quis voluptates et facilis ut et. Id enim distinctio. Quaerat repudiandae quod qui inventore amet. Provident omnis dolorum laudantium. Beatae itaque aliquam et dolorem officiis soluta quia.	articles/7/23/2013/fugit-et-maxime	computer-world	ruby
21	aut iusto inventore	Et alias aut. Dolorum in rem aliquam accusantium. Voluptate et impedit est eveniet. Porro et laborum reiciendis. Et sint molestias asperiores est dignissimos.	articles/7/23/2013/aut-iusto-inventore	Business	love, jquery, ruby
22	voluptatem porro dolorem	Dolor quos eligendi ex quae nulla cupiditate fuga. Incidunt blanditiis ratione. Quis illo amet cupiditate nisi velit et.	articles/7/23/2013/voluptatem-porro-dolorem	HEALTH	medicine
23	eveniet ut quasi	Voluptatum excepturi asperiores veritatis quia suscipit quas vel. Repellat iste sunt facere porro quisquam odit quo. Nam officia necessitatibus quod quia. Cupiditate quis aut illum neque sit a.	articles/7/23/2013/eveniet-ut-quasi	Business	
24	placeat omnis aperiam	Qui quasi incidunt. Illo rerum quia qui. Est sed ut tenetur odit. Magnam aut debitis. Ut hic qui nobis nihil nulla voluptatibus aut.	articles/7/23/2013/placeat-omnis-aperiam	Business	rails
25	repellendus architecto sed	Et beatae repellendus. Magnam sapiente atque porro veritatis omnis illo. Blanditiis nihil illum quidem ut. Molestiae tenetur qui dicta nobis ut sint qui.	articles/7/23/2013/repellendus-architecto-sed	computer world	computer, cloud, medicine
26	excepturi modi quo	Maiores quis minus sit error recusandae aut labore. Qui voluptates tenetur esse harum sunt. Voluptatem dolor voluptatum consequatur quo ea saepe.	articles/7/23/2013/excepturi-modi-quo	sport	
27	ea asperiores eum	Error iure velit nemo sit dolor. Dicta porro eos inventore. Praesentium consequatur voluptatem et deleniti doloremque. Et iure magnam praesentium saepe animi fuga aut.	articles/7/23/2013/ea-asperiores-eum	computer-world	random, ruby
28	voluptatem minus quidem	Nulla et aut. Hic earum rerum ea. Explicabo ex in itaque consectetur adipisci labore.	articles/7/23/2013/voluptatem-minus-quidem	business	art, medicine
29	voluptate praesentium reprehenderit	Facere magni cupiditate vero dolorem aut sed autem. Enim quis nisi excepturi. Ipsam quasi eaque veritatis non ea. Fuga ut sunt iste consequatur rerum.	articles/7/23/2013/voluptate-praesentium-reprehenderit	Sports	jquery
30	quia omnis et	Ea omnis magnam architecto eaque aut asperiores omnis. Magnam quo et quos nobis. Quia numquam sit odit incidunt reiciendis eum vel. Dolorum reiciendis explicabo ut. In veritatis dolorem quia cumque.	articles/7/23/2013/quia-omnis-et	computer world	love, rails
31	eum blanditiis maiores	Eum dolores qui dicta iure. Quia magnam ab quisquam qui dolorum doloribus. Nostrum voluptas soluta iure temporibus aut illo voluptatem. Blanditiis fugiat ut praesentium nam.	articles/7/23/2013/eum-blanditiis-maiores	sport	music
32	maxime eos explicabo	Aut numquam cumque. Voluptas et aut accusantium quis maiores molestiae nostrum. Velit aut autem eum officia. Voluptatem nihil repellendus rerum officiis ut. Blanditiis nam ut ut accusamus et.	articles/7/23/2013/maxime-eos-explicabo	business	widget, computer
33	aut quam quis	Eveniet dolorem fugit sed consequatur quae. Qui aspernatur non ipsum non quia totam voluptatem. Omnis ratione ut.	articles/7/23/2013/aut-quam-quis	computer-world	medicine, cloud
34	doloremque porro laboriosam	Eum blanditiis non. Accusamus consequuntur et quis maiores cupiditate. Est eos architecto nihil facilis recusandae. Doloribus non qui recusandae eum dolorem libero error. Eos atque culpa totam aliquam debitis explicabo.	articles/7/23/2013/doloremque-porro-laboriosam	Business	jquery, ruby
35	laborum molestiae quia	Nisi cumque voluptatibus molestiae. Ut in omnis aut excepturi molestias. Dolor vitae nemo ad sunt est. Natus voluptas aperiam non consequatur.	articles/7/23/2013/laborum-molestiae-quia	sport	art, hate
36	nesciunt quia officia	Molestiae saepe officiis iure ab voluptatem rerum id. Ea autem et est nihil dolor id. Ut veritatis deleniti distinctio voluptates nobis voluptatem expedita. Dolores magnam minus dicta similique facilis. Vel nulla autem officiis quo ducimus.	articles/7/23/2013/nesciunt-quia-officia	computer world	
37	qui aut cupiditate	Impedit est quia. Enim vel repudiandae exercitationem id. Voluptatem velit dolorem eius ut corrupti.	articles/7/23/2013/qui-aut-cupiditate	HEALTH	random, tech, hate
38	exercitationem in eligendi	Deleniti dolorem omnis aut dolorem reprehenderit eum sed. Vero nostrum consequuntur maxime. Alias ea est itaque. Dolor molestiae consequatur dicta qui atque tempora aut. Animi repellat maxime tempore occaecati sed.	articles/7/23/2013/exercitationem-in-eligendi	business	rails, cloud, random
39	esse velit odio	Saepe consectetur iure et. Eligendi quae quibusdam debitis non. Minus dignissimos inventore. Est nihil in dolores illum qui.	articles/7/23/2013/esse-velit-odio	HEALTH	ruby, tech
40	est non fugiat	Eos quibusdam enim. Aut blanditiis et aut aliquid possimus modi in. Odit voluptatum aspernatur fugiat quasi et veritatis. Consectetur nihil deserunt corporis enim eveniet ea est.	articles/7/23/2013/est-non-fugiat	Business	ruby, medicine, hate
41	qui esse deserunt	Nesciunt ullam voluptatem eligendi nisi. Aut id nulla. Et est exercitationem aliquid earum.	articles/7/23/2013/qui-esse-deserunt	computer world	love, cloud
42	molestiae tenetur unde	Magni et earum est delectus. Qui sint aut totam ipsa quo. Ullam cum et in ut.	articles/7/23/2013/molestiae-tenetur-unde	Sports	rails
43	at culpa placeat	Nisi consequatur suscipit. Exercitationem explicabo qui vitae dolorem est inventore similique. Dolores qui sint dolores aut aut voluptas. Quos ex molestias earum quis autem voluptas.	articles/7/23/2013/at-culpa-placeat	programming	random
44	explicabo deleniti culpa	Sint animi repudiandae voluptas id explicabo. Illo consequatur reprehenderit est. Omnis neque atque. Repellendus autem et quos necessitatibus molestias.	articles/7/23/2013/explicabo-deleniti-culpa	business	art
45	velit minus temporibus	Et aut ut qui voluptatem recusandae officia voluptas. Quo ex reiciendis rerum dolor enim nulla et. Odio placeat aut.	articles/7/23/2013/velit-minus-temporibus	HEALTH	
46	laborum et rem	Distinctio sit nobis. Quis esse dolores pariatur et consequatur. Adipisci ut quas molestiae blanditiis ut dolorem. Aspernatur ea repellendus eos quibusdam qui vero qui.	articles/7/23/2013/laborum-et-rem	programming	tech, art
47	rem a velit	Facere sint consequatur architecto amet nulla facilis. Voluptatem iusto aut odio. Cum amet a ipsum et. Aperiam id impedit. Fugiat a natus dolorum.	articles/7/23/2013/rem-a-velit	Business	random-tags
48	ut est et	Occaecati esse omnis atque ratione quia repellat nulla. In sed sint molestias aliquid. Delectus ducimus consequatur omnis ex sed corrupti recusandae. Tenetur nihil voluptate quos itaque nihil dicta. Quaerat delectus quidem quas molestiae dolore fuga.	articles/7/23/2013/ut-est-et	computer world	hate
49	ut voluptas nihil	Magnam aliquam quas eveniet tempore rerum officia. Rerum accusamus voluptatem distinctio alias. Laboriosam quisquam eveniet. Beatae adipisci voluptatem error explicabo et.	articles/7/23/2013/ut-voluptas-nihil	computer world	tech, cloud
50	reprehenderit in non	Doloremque velit ut nostrum cumque dolores magni facilis. Adipisci est quidem debitis voluptatibus. Maiores est dolore. Tempore enim quasi.	articles/7/23/2013/reprehenderit-in-non	sport	widget, jquery
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_id_seq', 50, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY schema_migrations (version) FROM stdin;
20130311183138
\.


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


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

