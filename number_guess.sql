--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    best_game integer DEFAULT 0,
    games_played integer DEFAULT 1
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Alistair', 80, 1);
INSERT INTO public.users VALUES (2, 'Britney', 0, 1);
INSERT INTO public.users VALUES (3, 'David', 0, 2);
INSERT INTO public.users VALUES (4, 'Anna', 4, 1);
INSERT INTO public.users VALUES (5, 'John', 50, 5);
INSERT INTO public.users VALUES (6, 'Alexei', 0, 7);
INSERT INTO public.users VALUES (7, 'Jean-Baptiste', 912, 2);
INSERT INTO public.users VALUES (8, 'Leah', 8, 47);
INSERT INTO public.users VALUES (9, 'Charlie', 567, 5);
INSERT INTO public.users VALUES (10, 'Alan', 0, 2);
INSERT INTO public.users VALUES (11, 'Joanna', 0, 5);
INSERT INTO public.users VALUES (12, 'Luke', 76, 5);
INSERT INTO public.users VALUES (13, 'Matt', 5, 2);
INSERT INTO public.users VALUES (14, 'Rohan', 43, 2);
INSERT INTO public.users VALUES (15, 'Peter', 163, 42);
INSERT INTO public.users VALUES (16, 'Mary', 4, 5);
INSERT INTO public.users VALUES (17, 'Paul', 451, 2);
INSERT INTO public.users VALUES (18, 'Anthony', 560, 2);
INSERT INTO public.users VALUES (19, 'Iris', 337, 8);
INSERT INTO public.users VALUES (20, 'Jayden', 36, 9);
INSERT INTO public.users VALUES (21, 'Eva', 226, 10);
INSERT INTO public.users VALUES (22, 'Kendra', 251, 6);
INSERT INTO public.users VALUES (23, 'Jada', 250, 7);
INSERT INTO public.users VALUES (24, 'Michael', 703, 3);
INSERT INTO public.users VALUES (25, 'Abdul', 292, 5);
INSERT INTO public.users VALUES (26, 'Christian', 529, 2);
INSERT INTO public.users VALUES (27, 'Sebastian', 141, 5);
INSERT INTO public.users VALUES (28, 'Oscar', 874, 2);
INSERT INTO public.users VALUES (29, 'Will', 24, 5);
INSERT INTO public.users VALUES (30, 'Aziz', 9, 6);

--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);

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
-- PostgreSQL database dump complete
--
