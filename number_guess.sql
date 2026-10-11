--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 197);
INSERT INTO public.games VALUES (2, 1, 949);
INSERT INTO public.games VALUES (3, 2, 846);
INSERT INTO public.games VALUES (4, 2, 281);
INSERT INTO public.games VALUES (5, 1, 750);
INSERT INTO public.games VALUES (6, 1, 47);
INSERT INTO public.games VALUES (7, 1, 681);
INSERT INTO public.games VALUES (8, 3, 462);
INSERT INTO public.games VALUES (9, 3, 792);
INSERT INTO public.games VALUES (10, 4, 318);
INSERT INTO public.games VALUES (11, 4, 671);
INSERT INTO public.games VALUES (12, 3, 138);
INSERT INTO public.games VALUES (13, 3, 643);
INSERT INTO public.games VALUES (14, 3, 683);
INSERT INTO public.games VALUES (15, 5, 389);
INSERT INTO public.games VALUES (16, 5, 680);
INSERT INTO public.games VALUES (17, 6, 55);
INSERT INTO public.games VALUES (18, 6, 712);
INSERT INTO public.games VALUES (19, 5, 191);
INSERT INTO public.games VALUES (20, 5, 963);
INSERT INTO public.games VALUES (21, 5, 940);
INSERT INTO public.games VALUES (22, 7, 503);
INSERT INTO public.games VALUES (23, 7, 822);
INSERT INTO public.games VALUES (24, 8, 117);
INSERT INTO public.games VALUES (25, 8, 816);
INSERT INTO public.games VALUES (26, 7, 286);
INSERT INTO public.games VALUES (27, 7, 175);
INSERT INTO public.games VALUES (28, 7, 246);
INSERT INTO public.games VALUES (29, 9, 335);
INSERT INTO public.games VALUES (30, 9, 87);
INSERT INTO public.games VALUES (31, 10, 762);
INSERT INTO public.games VALUES (32, 10, 135);
INSERT INTO public.games VALUES (33, 9, 942);
INSERT INTO public.games VALUES (34, 9, 363);
INSERT INTO public.games VALUES (35, 9, 887);
INSERT INTO public.games VALUES (36, 11, 217);
INSERT INTO public.games VALUES (37, 11, 714);
INSERT INTO public.games VALUES (38, 12, 584);
INSERT INTO public.games VALUES (39, 12, 982);
INSERT INTO public.games VALUES (40, 11, 571);
INSERT INTO public.games VALUES (41, 11, 180);
INSERT INTO public.games VALUES (42, 11, 99);
INSERT INTO public.games VALUES (43, 13, 499);
INSERT INTO public.games VALUES (44, 13, 230);
INSERT INTO public.games VALUES (45, 14, 766);
INSERT INTO public.games VALUES (46, 14, 732);
INSERT INTO public.games VALUES (47, 13, 362);
INSERT INTO public.games VALUES (48, 13, 367);
INSERT INTO public.games VALUES (49, 13, 575);
INSERT INTO public.games VALUES (50, 15, 22);
INSERT INTO public.games VALUES (51, 15, 307);
INSERT INTO public.games VALUES (52, 16, 659);
INSERT INTO public.games VALUES (53, 16, 699);
INSERT INTO public.games VALUES (54, 15, 232);
INSERT INTO public.games VALUES (55, 15, 691);
INSERT INTO public.games VALUES (56, 15, 357);
INSERT INTO public.games VALUES (57, 17, 902);
INSERT INTO public.games VALUES (58, 17, 787);
INSERT INTO public.games VALUES (59, 18, 601);
INSERT INTO public.games VALUES (60, 18, 240);
INSERT INTO public.games VALUES (61, 17, 661);
INSERT INTO public.games VALUES (62, 17, 884);
INSERT INTO public.games VALUES (63, 17, 943);
INSERT INTO public.games VALUES (64, 19, 103);
INSERT INTO public.games VALUES (65, 19, 751);
INSERT INTO public.games VALUES (66, 20, 193);
INSERT INTO public.games VALUES (67, 20, 285);
INSERT INTO public.games VALUES (68, 19, 544);
INSERT INTO public.games VALUES (69, 19, 409);
INSERT INTO public.games VALUES (70, 19, 30);
INSERT INTO public.games VALUES (71, 21, 828);
INSERT INTO public.games VALUES (72, 21, 855);
INSERT INTO public.games VALUES (73, 22, 42);
INSERT INTO public.games VALUES (74, 22, 63);
INSERT INTO public.games VALUES (75, 21, 990);
INSERT INTO public.games VALUES (76, 21, 513);
INSERT INTO public.games VALUES (77, 21, 471);
INSERT INTO public.games VALUES (78, 23, 255);
INSERT INTO public.games VALUES (79, 23, 660);
INSERT INTO public.games VALUES (80, 24, 985);
INSERT INTO public.games VALUES (81, 24, 360);
INSERT INTO public.games VALUES (82, 23, 808);
INSERT INTO public.games VALUES (83, 23, 23);
INSERT INTO public.games VALUES (84, 23, 458);
INSERT INTO public.games VALUES (85, 25, 331);
INSERT INTO public.games VALUES (86, 25, 548);
INSERT INTO public.games VALUES (87, 26, 142);
INSERT INTO public.games VALUES (88, 26, 899);
INSERT INTO public.games VALUES (89, 25, 464);
INSERT INTO public.games VALUES (90, 25, 375);
INSERT INTO public.games VALUES (91, 25, 386);
INSERT INTO public.games VALUES (92, 27, 723);
INSERT INTO public.games VALUES (93, 27, 68);
INSERT INTO public.games VALUES (94, 28, 449);
INSERT INTO public.games VALUES (95, 28, 222);
INSERT INTO public.games VALUES (96, 27, 324);
INSERT INTO public.games VALUES (97, 27, 428);
INSERT INTO public.games VALUES (98, 27, 648);
INSERT INTO public.games VALUES (99, 29, 360);
INSERT INTO public.games VALUES (100, 29, 53);
INSERT INTO public.games VALUES (101, 30, 267);
INSERT INTO public.games VALUES (102, 30, 63);
INSERT INTO public.games VALUES (103, 29, 520);
INSERT INTO public.games VALUES (104, 29, 479);
INSERT INTO public.games VALUES (105, 29, 413);
INSERT INTO public.games VALUES (106, 31, 105);
INSERT INTO public.games VALUES (107, 31, 556);
INSERT INTO public.games VALUES (108, 32, 7);
INSERT INTO public.games VALUES (109, 32, 998);
INSERT INTO public.games VALUES (110, 31, 604);
INSERT INTO public.games VALUES (111, 31, 896);
INSERT INTO public.games VALUES (112, 31, 323);
INSERT INTO public.games VALUES (113, 33, 130);
INSERT INTO public.games VALUES (114, 33, 337);
INSERT INTO public.games VALUES (115, 34, 561);
INSERT INTO public.games VALUES (116, 34, 187);
INSERT INTO public.games VALUES (117, 33, 68);
INSERT INTO public.games VALUES (118, 33, 218);
INSERT INTO public.games VALUES (119, 33, 774);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1791756440167');
INSERT INTO public.users VALUES (2, 'user_1791756440166');
INSERT INTO public.users VALUES (3, 'user_1791756476736');
INSERT INTO public.users VALUES (4, 'user_1791756476735');
INSERT INTO public.users VALUES (5, 'user_1791756493149');
INSERT INTO public.users VALUES (6, 'user_1791756493148');
INSERT INTO public.users VALUES (7, 'user_1791756543582');
INSERT INTO public.users VALUES (8, 'user_1791756543581');
INSERT INTO public.users VALUES (9, 'user_1791756558481');
INSERT INTO public.users VALUES (10, 'user_1791756558480');
INSERT INTO public.users VALUES (11, 'user_1791756561816');
INSERT INTO public.users VALUES (12, 'user_1791756561815');
INSERT INTO public.users VALUES (13, 'user_1791756608728');
INSERT INTO public.users VALUES (14, 'user_1791756608727');
INSERT INTO public.users VALUES (15, 'user_1791756639760');
INSERT INTO public.users VALUES (16, 'user_1791756639759');
INSERT INTO public.users VALUES (17, 'user_1791756649315');
INSERT INTO public.users VALUES (18, 'user_1791756649314');
INSERT INTO public.users VALUES (19, 'user_1791756675082');
INSERT INTO public.users VALUES (20, 'user_1791756675081');
INSERT INTO public.users VALUES (21, 'user_1791756679312');
INSERT INTO public.users VALUES (22, 'user_1791756679311');
INSERT INTO public.users VALUES (23, 'user_1791756691900');
INSERT INTO public.users VALUES (24, 'user_1791756691899');
INSERT INTO public.users VALUES (25, 'user_1791756700646');
INSERT INTO public.users VALUES (26, 'user_1791756700645');
INSERT INTO public.users VALUES (27, 'user_1791756737147');
INSERT INTO public.users VALUES (28, 'user_1791756737146');
INSERT INTO public.users VALUES (29, 'user_1791756806584');
INSERT INTO public.users VALUES (30, 'user_1791756806583');
INSERT INTO public.users VALUES (31, 'user_1791756823300');
INSERT INTO public.users VALUES (32, 'user_1791756823299');
INSERT INTO public.users VALUES (33, 'user_1791756952965');
INSERT INTO public.users VALUES (34, 'user_1791756952964');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 119, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 34, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

