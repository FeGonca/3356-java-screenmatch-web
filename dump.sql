--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: series; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.series (
    id bigint NOT NULL,
    atores character varying(255),
    avaliacao double precision,
    genero character varying(255),
    poster character varying(255),
    sinopse character varying(255),
    titulo character varying(255),
    total_temporadas integer,
    CONSTRAINT series_genero_check CHECK (((genero)::text = ANY (ARRAY[('ACAO'::character varying)::text, ('ROMANCE'::character varying)::text, ('COMEDIA'::character varying)::text, ('DRAMA'::character varying)::text, ('CRIME'::character varying)::text])))
);


ALTER TABLE public.series OWNER TO postgres;

--
-- Name: series_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.series_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.series_id_seq OWNER TO postgres;

--
-- Name: series_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.series_id_seq OWNED BY public.series.id;


--
-- Name: series id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.series ALTER COLUMN id SET DEFAULT nextval('public.series_id_seq'::regclass);


--
-- Name: series series_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_pkey PRIMARY KEY (id);


--
-- Name: series uk_sujdgbuv4embh3cjvu1sux7ri; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.series
    ADD CONSTRAINT uk_sujdgbuv4embh3cjvu1sux7ri UNIQUE (titulo);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: episodios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.episodios (
    id bigint NOT NULL,
    avaliacao double precision,
    data_lancamento date,
    numero_episodio integer,
    temporada integer,
    titulo character varying(255),
    serie_id bigint
);


ALTER TABLE public.episodios OWNER TO postgres;

--
-- Name: episodios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.episodios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.episodios_id_seq OWNER TO postgres;

--
-- Name: episodios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.episodios_id_seq OWNED BY public.episodios.id;


--
-- Name: episodios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodios ALTER COLUMN id SET DEFAULT nextval('public.episodios_id_seq'::regclass);


--
-- Name: episodios episodios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodios
    ADD CONSTRAINT episodios_pkey PRIMARY KEY (id);


--
-- Name: episodios fk8031rj1wc9dgbh8a9mr6env2m; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodios
    ADD CONSTRAINT fk8031rj1wc9dgbh8a9mr6env2m FOREIGN KEY (serie_id) REFERENCES public.series(id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

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
-- Data for Name: series; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.series VALUES (1, 'Karl Urban, Jack Quaid, Antony Starr', 8.7, 'ACAO', 'https://m.media-amazon.com/images/M/MV5BMWJlN2U5MzItNjU4My00NTM2LWFjOWUtOWFiNjg3ZTMxZDY1XkEyXkFqcGc@._V1_SX300.jpg', 'Um grupo de vigilantes partiu para derrubar super-heróis corruptos que abusam de seus superpoderes.', 'The Boys', 5);
INSERT INTO public.series VALUES (2, 'Steve Carell, Jenna Fischer, John Krasinski', 9, 'COMEDIA', 'https://m.media-amazon.com/images/M/MV5BZjQwYzBlYzUtZjhhOS00ZDQ0LWE0NzAtYTk4MjgzZTNkZWEzXkEyXkFqcGc@._V1_SX300.jpg', 'Um mockumentary sobre um grupo de trabalhadores de escritório típicos, onde a jornada de trabalho consiste em confrontos de ego, comportamento inadequado, tédio e romance.', 'The Office', 9);
INSERT INTO public.series VALUES (3, 'Pedro Pascal, Chris Bartlett, Katee Sackhoff', 8.6, 'ACAO', 'https://m.media-amazon.com/images/M/MV5BNjgxZGM0OWUtZGY1MS00MWRmLTk2N2ItYjQyZTI1OThlZDliXkEyXkFqcGc@._V1_SX300.jpg', 'As viagens de um solitário caçador de recompensas nos confins da galáxia, longe da autoridade da Nova República.', 'The Mandalorian', 3);
INSERT INTO public.series VALUES (4, 'Steve Carell, John Malkovich, Ben Schwartz', 6.7, 'COMEDIA', 'https://m.media-amazon.com/images/M/MV5BYzFiODc5Y2YtMDZlMS00ZTk4LWIzYTEtYzAyMjU2NmQ2MjQ0XkEyXkFqcGc@._V1_SX300.jpg', 'As pessoas encarregadas de criar um sexto ramo das forças armadas: a Força Espacial.', 'Space Force', 2);
INSERT INTO public.series VALUES (5, 'Bryan Cranston, Aaron Paul, Anna Gunn', 9.5, 'CRIME', 'https://m.media-amazon.com/images/M/MV5BMzU5ZGYzNmQtMTdhYy00OGRiLTg0NmQtYjVjNzliZTg1ZGE4XkEyXkFqcGc@._V1_SX300.jpg', 'Um professor de química diagnosticado com câncer de pulmão inoperável passa a fabricar e vender metanfetamina com um ex-aluno para garantir o futuro de sua família.', 'Breaking Bad', 5);
INSERT INTO public.series VALUES (6, 'Jessie Buckley, Jared Harris, Stellan Skarsgård', 9.3, 'DRAMA', 'https://m.media-amazon.com/images/M/MV5BMmQ0Y2JiM2EtOWIwMy00MWVjLTgxZDctZTQzOWU3ODkzMWY4XkEyXkFqcGc@._V1_SX300.jpg', 'Em abril de 1986, a cidade de Chernobyl, na União Soviética, sofre um dos piores desastres nucleares da história da humanidade. Consequentemente, muitos heróis arriscaram suas vidas nos dias, semanas e meses seguintes.', 'Chernobyl', 1);


--
-- Name: series_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.series_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

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
-- Data for Name: episodios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.episodios VALUES (41, 8.7, '2019-07-26', 1, 1, 'The Name of the Game', 1);
INSERT INTO public.episodios VALUES (42, 8.5, '2019-07-26', 2, 1, 'Cherry', 1);
INSERT INTO public.episodios VALUES (43, 8.3, '2019-07-26', 3, 1, 'Get Some', 1);
INSERT INTO public.episodios VALUES (44, 8.7, '2019-07-26', 4, 1, 'The Female of the Species', 1);
INSERT INTO public.episodios VALUES (45, 8.3, '2019-07-26', 5, 1, 'Good for the Soul', 1);
INSERT INTO public.episodios VALUES (46, 8.1, '2019-07-26', 6, 1, 'The Innocents', 1);
INSERT INTO public.episodios VALUES (47, 8.7, '2019-07-26', 7, 1, 'The Self-Preservation Society', 1);
INSERT INTO public.episodios VALUES (48, 9, '2019-07-26', 8, 1, 'You Found Me', 1);
INSERT INTO public.episodios VALUES (49, 8.1, '2020-09-04', 1, 2, 'The Big Ride', 1);
INSERT INTO public.episodios VALUES (50, 7.7, '2020-09-04', 2, 2, 'Proper Preparation and Planning', 1);
INSERT INTO public.episodios VALUES (51, 9, '2020-09-04', 3, 2, 'Over the Hill with the Swords of a Thousand Men', 1);
INSERT INTO public.episodios VALUES (52, 8, '2020-09-11', 4, 2, 'Nothing Like It in the World', 1);
INSERT INTO public.episodios VALUES (53, 0, '2020-09-18', 5, 2, 'We Gotta Go Now', 1);
INSERT INTO public.episodios VALUES (54, 8.9, '2020-09-25', 6, 2, 'The Bloody Doors Off', 1);
INSERT INTO public.episodios VALUES (55, 9, '2020-10-02', 7, 2, 'Butcher, Baker, Candlestick Maker', 1);
INSERT INTO public.episodios VALUES (56, 9.4, '2020-10-09', 8, 2, 'What I Know', 1);
INSERT INTO public.episodios VALUES (57, 8.3, '2022-06-03', 1, 3, 'Payback', 1);
INSERT INTO public.episodios VALUES (58, 8.6, '2022-06-03', 2, 3, 'The Only Man in the Sky', 1);
INSERT INTO public.episodios VALUES (59, 8.2, '2022-06-03', 3, 3, 'Barbary Coast', 1);
INSERT INTO public.episodios VALUES (60, 8.9, '2022-06-10', 4, 3, 'Glorious Five Year Plan', 1);
INSERT INTO public.episodios VALUES (61, 8.3, '2022-06-17', 5, 3, 'The Last Time to Look on This World of Lies', 1);
INSERT INTO public.episodios VALUES (62, 9.6, '2022-06-24', 6, 3, 'Herogasm', 1);
INSERT INTO public.episodios VALUES (63, 8.8, '2022-07-01', 7, 3, 'Here Comes a Candle to Light You to Bed', 1);
INSERT INTO public.episodios VALUES (64, 8.3, '2022-07-08', 8, 3, 'The Instant White-Hot Wild', 1);
INSERT INTO public.episodios VALUES (65, 7.4, '2024-06-13', 1, 4, 'Department of Dirty Tricks', 1);
INSERT INTO public.episodios VALUES (66, 7.1, '2024-06-13', 2, 4, 'Life Among the Septics', 1);
INSERT INTO public.episodios VALUES (67, 7.5, '2024-06-13', 3, 4, 'We''ll Keep the Red Flag Flying Here', 1);
INSERT INTO public.episodios VALUES (68, 8.9, '2024-06-20', 4, 4, 'Wisdom of the Ages', 1);
INSERT INTO public.episodios VALUES (69, 8.1, '2024-06-27', 5, 4, 'Beware the Jabberwock, My Son', 1);
INSERT INTO public.episodios VALUES (70, 7.5, '2024-07-04', 6, 4, 'Dirty Business', 1);
INSERT INTO public.episodios VALUES (71, 8.3, '2024-07-11', 7, 4, 'The Insider', 1);
INSERT INTO public.episodios VALUES (72, 9.1, '2024-07-18', 8, 4, 'Season Four Finale', 1);
INSERT INTO public.episodios VALUES (73, 0, NULL, 1, 5, 'Episode #5.1', 1);
INSERT INTO public.episodios VALUES (74, 0, NULL, 2, 5, 'Episode #5.2', 1);
INSERT INTO public.episodios VALUES (75, 0, NULL, 3, 5, 'Episode #5.3', 1);
INSERT INTO public.episodios VALUES (76, 0, NULL, 4, 5, 'Episode #5.4', 1);
INSERT INTO public.episodios VALUES (77, 0, NULL, 5, 5, 'Episode #5.5', 1);
INSERT INTO public.episodios VALUES (78, 0, NULL, 6, 5, 'Episode #5.6', 1);
INSERT INTO public.episodios VALUES (79, 0, NULL, 7, 5, 'Episode #5.7', 1);
INSERT INTO public.episodios VALUES (80, 0, NULL, 8, 5, 'Episode #5.8', 1);
INSERT INTO public.episodios VALUES (81, 7.3, '2005-03-24', 1, 1, 'Pilot', 2);
INSERT INTO public.episodios VALUES (82, 8.1, '2005-03-16', 2, 1, 'Diversity Day', 2);
INSERT INTO public.episodios VALUES (83, 7.6, '2005-04-05', 3, 1, 'Health Care', 2);
INSERT INTO public.episodios VALUES (84, 7.8, '2005-04-12', 4, 1, 'The Alliance', 2);
INSERT INTO public.episodios VALUES (85, 0, '2005-04-19', 5, 1, 'Basketball', 2);
INSERT INTO public.episodios VALUES (86, 7.6, '2005-04-26', 6, 1, 'Hot Girl', 2);
INSERT INTO public.episodios VALUES (87, 8.6, '2005-09-20', 1, 2, 'The Dundies', 2);
INSERT INTO public.episodios VALUES (88, 8.1, '2005-09-27', 2, 2, 'Sexual Harassment', 2);
INSERT INTO public.episodios VALUES (89, 8.2, '2005-10-04', 3, 2, 'Office Olympics', 2);
INSERT INTO public.episodios VALUES (90, 8.1, '2005-10-11', 4, 2, 'The Fire', 2);
INSERT INTO public.episodios VALUES (91, 7.9, '2005-10-18', 5, 2, 'Halloween', 2);
INSERT INTO public.episodios VALUES (92, 7.9, '2005-11-01', 6, 2, 'The Fight', 2);
INSERT INTO public.episodios VALUES (93, 8.5, '2005-11-08', 7, 2, 'The Client', 2);
INSERT INTO public.episodios VALUES (94, 8, '2005-11-15', 8, 2, 'Performance Review', 2);
INSERT INTO public.episodios VALUES (95, 8.2, '2005-11-22', 9, 2, 'E-Mail Surveillance', 2);
INSERT INTO public.episodios VALUES (96, 8.7, '2005-12-06', 10, 2, 'Christmas Party', 2);
INSERT INTO public.episodios VALUES (97, 8.5, '2006-01-05', 11, 2, 'Booze Cruise', 2);
INSERT INTO public.episodios VALUES (98, 9, '2006-01-12', 12, 2, 'The Injury', 2);
INSERT INTO public.episodios VALUES (99, 8.1, '2006-01-19', 13, 2, 'The Secret', 2);
INSERT INTO public.episodios VALUES (100, 7.6, '2006-01-26', 14, 2, 'The Carpet', 2);
INSERT INTO public.episodios VALUES (101, 8, '2006-02-02', 15, 2, 'Boys and Girls', 2);
INSERT INTO public.episodios VALUES (102, 8.1, '2006-02-09', 16, 2, 'Valentine''s Day', 2);
INSERT INTO public.episodios VALUES (103, 8.3, '2006-03-02', 17, 2, 'Dwight''s Speech', 2);
INSERT INTO public.episodios VALUES (104, 8.2, '2006-03-16', 18, 2, 'Take Your Daughter to Work Day', 2);
INSERT INTO public.episodios VALUES (105, 8, '2006-03-30', 19, 2, 'Michael''s Birthday', 2);
INSERT INTO public.episodios VALUES (106, 8.2, '2006-04-27', 20, 2, 'Drug Testing', 2);
INSERT INTO public.episodios VALUES (107, 8.6, '2006-05-04', 21, 2, 'Conflict Resolution', 2);
INSERT INTO public.episodios VALUES (108, 9.3, '2006-05-11', 22, 2, 'Casino Night', 2);
INSERT INTO public.episodios VALUES (109, 8.9, '2006-09-21', 1, 3, 'Gay Witch Hunt', 2);
INSERT INTO public.episodios VALUES (110, 8, '2006-09-28', 2, 3, 'The Convention', 2);
INSERT INTO public.episodios VALUES (111, 8.4, '2006-10-05', 3, 3, 'The Coup', 2);
INSERT INTO public.episodios VALUES (112, 7.8, '2006-10-12', 4, 3, 'Grief Counseling', 2);
INSERT INTO public.episodios VALUES (113, 7.9, '2006-10-19', 5, 3, 'Initiation', 2);
INSERT INTO public.episodios VALUES (114, 7.7, '2006-11-02', 6, 3, 'Diwali', 2);
INSERT INTO public.episodios VALUES (115, 8.5, '2006-11-09', 7, 3, 'Branch Closing', 2);
INSERT INTO public.episodios VALUES (116, 8.6, '2006-11-16', 8, 3, 'The Merger', 2);
INSERT INTO public.episodios VALUES (117, 8.2, '2006-11-30', 9, 3, 'The Convict', 2);
INSERT INTO public.episodios VALUES (118, 8.6, '2006-12-14', 10, 3, 'A Benihana Christmas', 2);
INSERT INTO public.episodios VALUES (119, 8.5, '2007-01-04', 11, 3, 'Back from Vacation', 2);
INSERT INTO public.episodios VALUES (120, 8.5, '2007-01-11', 12, 3, 'Traveling Salesmen', 2);
INSERT INTO public.episodios VALUES (121, 8.7, '2007-01-18', 13, 3, 'The Return', 2);
INSERT INTO public.episodios VALUES (122, 7.8, '2007-02-01', 14, 3, 'Ben Franklin', 2);
INSERT INTO public.episodios VALUES (123, 8, '2007-02-08', 15, 3, 'Phyllis'' Wedding', 2);
INSERT INTO public.episodios VALUES (124, 8.8, '2007-02-15', 16, 3, 'Business School', 2);
INSERT INTO public.episodios VALUES (125, 8.3, '2007-02-22', 17, 3, 'Cocktails', 2);
INSERT INTO public.episodios VALUES (126, 8.9, '2007-04-05', 18, 3, 'The Negotiation', 2);
INSERT INTO public.episodios VALUES (127, 8.6, '2007-04-12', 19, 3, 'Safety Training', 2);
INSERT INTO public.episodios VALUES (128, 8.5, '2007-04-26', 20, 3, 'Product Recall', 2);
INSERT INTO public.episodios VALUES (129, 8.6, '2007-05-03', 21, 3, 'Women''s Appreciation', 2);
INSERT INTO public.episodios VALUES (130, 9, '2007-05-10', 22, 3, 'Beach Games', 2);
INSERT INTO public.episodios VALUES (131, 0, '2007-05-17', 23, 3, 'The Job', 2);
INSERT INTO public.episodios VALUES (132, 8.7, '2007-09-27', 1, 4, 'Fun Run', 2);
INSERT INTO public.episodios VALUES (133, 8.1, '2007-10-04', 2, 4, 'Dunder Mifflin Infinity', 2);
INSERT INTO public.episodios VALUES (134, 8.2, '2007-10-11', 3, 4, 'Launch Party', 2);
INSERT INTO public.episodios VALUES (135, 8.5, '2007-10-18', 4, 4, 'Money', 2);
INSERT INTO public.episodios VALUES (136, 8.6, '2007-10-25', 5, 4, 'Local Ad', 2);
INSERT INTO public.episodios VALUES (137, 8.3, '2007-11-01', 6, 4, 'Branch Wars', 2);
INSERT INTO public.episodios VALUES (138, 8, '2007-11-08', 7, 4, 'Survivor Man', 2);
INSERT INTO public.episodios VALUES (139, 8.6, '2007-11-15', 8, 4, 'The Deposition', 2);
INSERT INTO public.episodios VALUES (140, 9.4, '2008-04-10', 9, 4, 'Dinner Party', 2);
INSERT INTO public.episodios VALUES (141, 7.8, '2008-04-17', 10, 4, 'Chair Model', 2);
INSERT INTO public.episodios VALUES (142, 8.5, '2008-04-24', 11, 4, 'Night Out', 2);
INSERT INTO public.episodios VALUES (143, 8.1, '2008-05-01', 12, 4, 'Did I Stutter?', 2);
INSERT INTO public.episodios VALUES (144, 7.6, '2008-05-08', 13, 4, 'Job Fair', 2);
INSERT INTO public.episodios VALUES (145, 9.2, '2008-05-15', 14, 4, 'Goodbye, Toby', 2);
INSERT INTO public.episodios VALUES (146, 0, '2008-09-25', 1, 5, 'Weight Loss', 2);
INSERT INTO public.episodios VALUES (147, 0, '2008-10-09', 2, 5, 'Business Ethics', 2);
INSERT INTO public.episodios VALUES (148, 7.8, '2008-10-16', 3, 5, 'Baby Shower', 2);
INSERT INTO public.episodios VALUES (149, 7.9, '2008-10-23', 4, 5, 'Crime Aid', 2);
INSERT INTO public.episodios VALUES (150, 7.9, '2008-10-30', 5, 5, 'Employee Transfer', 2);
INSERT INTO public.episodios VALUES (151, 8.4, '2008-11-06', 6, 5, 'Customer Survey', 2);
INSERT INTO public.episodios VALUES (152, 8, '2008-11-13', 7, 5, 'Business Trip', 2);
INSERT INTO public.episodios VALUES (153, 8.5, '2008-11-20', 8, 5, 'Frame Toby', 2);
INSERT INTO public.episodios VALUES (154, 8.6, '2008-12-04', 9, 5, 'The Surplus', 2);
INSERT INTO public.episodios VALUES (155, 8.2, '2008-12-11', 10, 5, 'Moroccan Christmas', 2);
INSERT INTO public.episodios VALUES (156, 8.6, '2009-01-15', 11, 5, 'The Duel', 2);
INSERT INTO public.episodios VALUES (157, 7.8, '2009-01-22', 12, 5, 'Prince Family Paper', 2);
INSERT INTO public.episodios VALUES (158, 9.7, '2009-02-01', 13, 5, 'Stress Relief', 2);
INSERT INTO public.episodios VALUES (159, 8, '2009-02-05', 14, 5, 'Lecture Circuit: Part 1', 2);
INSERT INTO public.episodios VALUES (160, 8, '2009-02-12', 15, 5, 'Lecture Circuit: Part 2', 2);
INSERT INTO public.episodios VALUES (161, 7.8, '2009-03-05', 16, 5, 'Blood Drive', 2);
INSERT INTO public.episodios VALUES (162, 8.5, '2009-03-12', 17, 5, 'Golden Ticket', 2);
INSERT INTO public.episodios VALUES (163, 8.1, '2009-03-19', 18, 5, 'New Boss', 2);
INSERT INTO public.episodios VALUES (164, 8.2, '2009-03-26', 19, 5, 'Two Weeks', 2);
INSERT INTO public.episodios VALUES (165, 8.1, '2009-04-09', 20, 5, 'Dream Team', 2);
INSERT INTO public.episodios VALUES (166, 8.5, '2009-04-09', 21, 5, 'Michael Scott Paper Company', 2);
INSERT INTO public.episodios VALUES (167, 8.5, '2009-04-16', 22, 5, 'Heavy Competition', 2);
INSERT INTO public.episodios VALUES (168, 9.2, '2009-04-23', 23, 5, 'Broke', 2);
INSERT INTO public.episodios VALUES (169, 8.1, '2009-04-30', 24, 5, 'Casual Friday', 2);
INSERT INTO public.episodios VALUES (170, 8.7, '2009-05-07', 25, 5, 'Cafe Disco', 2);
INSERT INTO public.episodios VALUES (171, 8.9, '2009-05-14', 26, 5, 'Company Picnic', 2);
INSERT INTO public.episodios VALUES (172, 8.7, '2009-09-17', 1, 6, 'Gossip', 2);
INSERT INTO public.episodios VALUES (173, 0, '2009-09-24', 2, 6, 'The Meeting', 2);
INSERT INTO public.episodios VALUES (174, 0, '2009-10-01', 3, 6, 'The Promotion', 2);
INSERT INTO public.episodios VALUES (175, 9.2, '2009-10-08', 4, 6, 'Niagara: Part 1', 2);
INSERT INTO public.episodios VALUES (176, 9.4, '2009-10-08', 5, 6, 'Niagara: Part 2', 2);
INSERT INTO public.episodios VALUES (177, 7.5, '2009-10-15', 6, 6, 'Mafia', 2);
INSERT INTO public.episodios VALUES (178, 8.5, '2009-10-22', 7, 6, 'The Lover', 2);
INSERT INTO public.episodios VALUES (179, 8, '2009-10-29', 8, 6, 'Koi Pond', 2);
INSERT INTO public.episodios VALUES (180, 0, '2009-11-05', 9, 6, 'Double Date', 2);
INSERT INTO public.episodios VALUES (181, 8.6, '2009-11-12', 10, 6, 'Murder', 2);
INSERT INTO public.episodios VALUES (182, 8, '2009-11-19', 11, 6, 'Shareholder Meeting', 2);
INSERT INTO public.episodios VALUES (183, 8.1, '2009-12-03', 12, 6, 'Scott''s Tots', 2);
INSERT INTO public.episodios VALUES (184, 8.4, '2009-12-10', 13, 6, 'Secret Santa', 2);
INSERT INTO public.episodios VALUES (185, 0, '2010-01-21', 14, 6, 'The Banker', 2);
INSERT INTO public.episodios VALUES (186, 7.5, '2010-02-04', 15, 6, 'Sabre', 2);
INSERT INTO public.episodios VALUES (187, 7.8, '2010-02-11', 16, 6, 'Manager and Salesman', 2);
INSERT INTO public.episodios VALUES (188, 0, '2010-03-04', 17, 6, 'The Delivery: Part 1', 2);
INSERT INTO public.episodios VALUES (189, 8.4, '2010-03-04', 18, 6, 'The Delivery: Part 2', 2);
INSERT INTO public.episodios VALUES (190, 7.5, '2010-03-11', 19, 6, 'St. Patrick''s Day', 2);
INSERT INTO public.episodios VALUES (191, 7.6, '2010-03-18', 20, 6, 'New Leads', 2);
INSERT INTO public.episodios VALUES (192, 8.4, '2010-03-25', 21, 6, 'Happy Hour', 2);
INSERT INTO public.episodios VALUES (193, 7.6, '2010-04-22', 22, 6, 'Secretary''s Day', 2);
INSERT INTO public.episodios VALUES (194, 7.7, '2010-04-29', 23, 6, 'Body Language', 2);
INSERT INTO public.episodios VALUES (195, 8, '2010-05-06', 24, 6, 'The Cover-Up', 2);
INSERT INTO public.episodios VALUES (196, 7.6, '2010-05-13', 25, 6, 'The Chump', 2);
INSERT INTO public.episodios VALUES (197, 7.8, '2010-05-20', 26, 6, 'Whistleblower', 2);
INSERT INTO public.episodios VALUES (198, 8.2, '2010-09-23', 1, 7, 'Nepotism', 2);
INSERT INTO public.episodios VALUES (199, 8, '2010-09-30', 2, 7, 'Counseling', 2);
INSERT INTO public.episodios VALUES (200, 8.1, '2010-10-07', 3, 7, 'Andy''s Play', 2);
INSERT INTO public.episodios VALUES (201, 7.7, '2010-10-14', 4, 7, 'Sex Ed', 2);
INSERT INTO public.episodios VALUES (202, 7.6, '2010-10-21', 5, 7, 'The Sting', 2);
INSERT INTO public.episodios VALUES (203, 8, '2010-10-28', 6, 7, 'Costume Contest', 2);
INSERT INTO public.episodios VALUES (204, 7.2, '2010-11-04', 7, 7, 'Christening', 2);
INSERT INTO public.episodios VALUES (205, 7.7, '2010-11-11', 8, 7, 'Viewing Party', 2);
INSERT INTO public.episodios VALUES (206, 7.5, '2010-11-18', 9, 7, 'WUPHF.com', 2);
INSERT INTO public.episodios VALUES (207, 8, '2010-12-02', 10, 7, 'China', 2);
INSERT INTO public.episodios VALUES (208, 8.8, '2010-12-09', 11, 7, 'Classy Christmas', 2);
INSERT INTO public.episodios VALUES (209, 8.1, '2011-01-20', 12, 7, 'Ultimatum', 2);
INSERT INTO public.episodios VALUES (210, 7.5, '2011-01-27', 13, 7, 'The Seminar', 2);
INSERT INTO public.episodios VALUES (211, 8.4, '2011-02-03', 14, 7, 'The Search', 2);
INSERT INTO public.episodios VALUES (212, 8.3, '2011-02-10', 15, 7, 'PDA', 2);
INSERT INTO public.episodios VALUES (213, 9.3, '2011-02-17', 16, 7, 'Threat Level Midnight', 2);
INSERT INTO public.episodios VALUES (214, 0, '2011-02-24', 17, 7, 'Todd Packer', 2);
INSERT INTO public.episodios VALUES (215, 9.3, '2011-03-24', 18, 7, 'Garage Sale', 2);
INSERT INTO public.episodios VALUES (216, 7.5, '2011-04-14', 19, 7, 'Training Day', 2);
INSERT INTO public.episodios VALUES (217, 8.9, '2011-04-21', 20, 7, 'Michael''s Last Dundies', 2);
INSERT INTO public.episodios VALUES (218, 9.8, '2011-04-28', 21, 7, 'Goodbye, Michael', 2);
INSERT INTO public.episodios VALUES (219, 7.4, '2011-05-05', 22, 7, 'The Inner Circle', 2);
INSERT INTO public.episodios VALUES (220, 0, '2011-05-12', 23, 7, 'Dwight K. Schrute, (Acting) Manager', 2);
INSERT INTO public.episodios VALUES (221, 8.5, '2011-05-19', 24, 7, 'Search Committee', 2);
INSERT INTO public.episodios VALUES (222, 7.9, '2011-09-22', 1, 8, 'The List', 2);
INSERT INTO public.episodios VALUES (223, 8, '2011-09-29', 2, 8, 'The Incentive', 2);
INSERT INTO public.episodios VALUES (224, 7.1, '2011-10-06', 3, 8, 'Lotto', 2);
INSERT INTO public.episodios VALUES (225, 8, '2011-10-13', 4, 8, 'Garden Party', 2);
INSERT INTO public.episodios VALUES (226, 7.3, '2011-10-27', 5, 8, 'Spooked', 2);
INSERT INTO public.episodios VALUES (227, 7.4, '2011-11-03', 6, 8, 'Doomsday', 2);
INSERT INTO public.episodios VALUES (228, 7.5, '2011-11-10', 7, 8, 'Pam''s Replacement', 2);
INSERT INTO public.episodios VALUES (229, 6.6, '2011-11-17', 8, 8, 'Gettysburg', 2);
INSERT INTO public.episodios VALUES (230, 7.5, '2011-12-01', 9, 8, 'Mrs. California', 2);
INSERT INTO public.episodios VALUES (231, 0, '2011-12-08', 10, 8, 'Christmas Wishes', 2);
INSERT INTO public.episodios VALUES (232, 7.7, '2012-01-12', 11, 8, 'Trivia', 2);
INSERT INTO public.episodios VALUES (233, 0, '2012-01-19', 12, 8, 'Pool Party', 2);
INSERT INTO public.episodios VALUES (234, 0, '2012-02-02', 13, 8, 'Jury Duty', 2);
INSERT INTO public.episodios VALUES (235, 7.5, '2012-02-09', 14, 8, 'Special Project', 2);
INSERT INTO public.episodios VALUES (236, 7.6, '2012-02-16', 15, 8, 'Tallahassee', 2);
INSERT INTO public.episodios VALUES (237, 7.9, '2012-02-23', 16, 8, 'After Hours', 2);
INSERT INTO public.episodios VALUES (238, 7.6, '2012-03-01', 17, 8, 'Test the Store', 2);
INSERT INTO public.episodios VALUES (239, 7.6, '2012-03-08', 18, 8, 'Last Day in Florida', 2);
INSERT INTO public.episodios VALUES (240, 6.3, '2012-03-15', 19, 8, 'Get the Girl', 2);
INSERT INTO public.episodios VALUES (241, 6.8, '2012-04-12', 20, 8, 'Welcome Party', 2);
INSERT INTO public.episodios VALUES (242, 6.7, '2012-04-19', 21, 8, 'Angry Andy', 2);
INSERT INTO public.episodios VALUES (243, 6.8, '2012-04-26', 22, 8, 'Fundraiser', 2);
INSERT INTO public.episodios VALUES (244, 7.4, '2012-05-03', 23, 8, 'Turf War', 2);
INSERT INTO public.episodios VALUES (245, 0, '2012-05-10', 24, 8, 'Free Family Portrait Studio', 2);
INSERT INTO public.episodios VALUES (246, 7.3, '2012-09-20', 1, 9, 'New Guys', 2);
INSERT INTO public.episodios VALUES (247, 6.9, '2012-09-27', 2, 9, 'Roy''s Wedding', 2);
INSERT INTO public.episodios VALUES (248, 7.1, '2012-10-04', 3, 9, 'Andy''s Ancestry', 2);
INSERT INTO public.episodios VALUES (249, 7.6, '2012-10-18', 4, 9, 'Work Bus', 2);
INSERT INTO public.episodios VALUES (250, 6.7, '2012-10-25', 5, 9, 'Here Comes Treble', 2);
INSERT INTO public.episodios VALUES (251, 7.5, '2012-11-08', 6, 9, 'The Boat', 2);
INSERT INTO public.episodios VALUES (252, 7.4, '2012-11-15', 7, 9, 'The Whale', 2);
INSERT INTO public.episodios VALUES (253, 7.7, '2012-11-29', 8, 9, 'The Target', 2);
INSERT INTO public.episodios VALUES (254, 8.2, '2012-12-06', 9, 9, 'Dwight Christmas', 2);
INSERT INTO public.episodios VALUES (255, 0, '2013-01-10', 10, 9, 'Lice', 2);
INSERT INTO public.episodios VALUES (256, 7.6, '2013-01-17', 11, 9, 'Suit Warehouse', 2);
INSERT INTO public.episodios VALUES (257, 7.6, '2013-01-24', 12, 9, 'Customer Loyalty', 2);
INSERT INTO public.episodios VALUES (258, 7.3, '2013-01-31', 13, 9, 'Junior Salesman', 2);
INSERT INTO public.episodios VALUES (259, 7.1, '2013-01-31', 14, 9, 'Vandalism', 2);
INSERT INTO public.episodios VALUES (260, 7, '2013-02-07', 15, 9, 'Couples Discount', 2);
INSERT INTO public.episodios VALUES (261, 0, '2013-02-14', 16, 9, 'Moving On', 2);
INSERT INTO public.episodios VALUES (262, 7.3, '2013-03-14', 17, 9, 'The Farm', 2);
INSERT INTO public.episodios VALUES (263, 7.7, '2013-04-04', 18, 9, 'Promos', 2);
INSERT INTO public.episodios VALUES (264, 7.8, '2013-04-11', 19, 9, 'Stairmageddon', 2);
INSERT INTO public.episodios VALUES (265, 7.8, '2013-04-25', 20, 9, 'Paper Airplane', 2);
INSERT INTO public.episodios VALUES (266, 9, '2013-05-02', 21, 9, 'Livin'' the Dream', 2);
INSERT INTO public.episodios VALUES (267, 9.4, '2013-05-09', 22, 9, 'A.A.R.M.', 2);
INSERT INTO public.episodios VALUES (268, 9.8, '2013-05-16', 23, 9, 'Finale', 2);


--
-- Name: episodios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.episodios_id_seq', 268, true);


--
-- PostgreSQL database dump complete
--

