--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    username character varying(22) NOT NULL,
    games integer DEFAULT 0,
    best integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1707945290790', 0, NULL);
INSERT INTO public.users VALUES ('user_1707945290789', 0, NULL);
INSERT INTO public.users VALUES ('4', 0, NULL);
INSERT INTO public.users VALUES ('user_1707945425722', 0, NULL);
INSERT INTO public.users VALUES ('user_1707945425721', 0, NULL);
INSERT INTO public.users VALUES ('user_1707946566951', 0, NULL);
INSERT INTO public.users VALUES ('user_1707946566950', 0, NULL);
INSERT INTO public.users VALUES ('3', 0, NULL);
INSERT INTO public.users VALUES ('user_1707946833917', 0, NULL);
INSERT INTO public.users VALUES ('user_1707946833916', 0, NULL);
INSERT INTO public.users VALUES ('6', 0, NULL);
INSERT INTO public.users VALUES ('213', 0, NULL);
INSERT INTO public.users VALUES ('64747', 0, NULL);
INSERT INTO public.users VALUES ('2', 1, 1);
INSERT INTO public.users VALUES ('53735', 0, NULL);
INSERT INTO public.users VALUES ('1', 2, 1);
INSERT INTO public.users VALUES ('user_1707953563881', 2, 267);
INSERT INTO public.users VALUES ('23', 2, 1);
INSERT INTO public.users VALUES ('123', 2, 2);
INSERT INTO public.users VALUES ('user_1707953563882', 5, 949);
INSERT INTO public.users VALUES ('user_1707953072881', 2, 954);
INSERT INTO public.users VALUES ('user_1707953072882', 5, 533);
INSERT INTO public.users VALUES ('user_1707953608509', 2, 145);
INSERT INTO public.users VALUES ('user_1707953192731', 2, 562);
INSERT INTO public.users VALUES ('user_1707953192732', 5, 343);
INSERT INTO public.users VALUES ('567', 1, 2);
INSERT INTO public.users VALUES ('user_1707953608510', 5, 290);
INSERT INTO public.users VALUES ('user_1707953258485', 2, 72);
INSERT INTO public.users VALUES ('user_1707953258486', 5, 989);
INSERT INTO public.users VALUES ('user_1707953289385', 2, 425);
INSERT INTO public.users VALUES ('user_1707953289386', 5, 73);
INSERT INTO public.users VALUES ('542', 1, 10);
INSERT INTO public.users VALUES ('user_1707953390064', 2, 4);
INSERT INTO public.users VALUES ('user_1707953390065', 5, 289);
INSERT INTO public.users VALUES ('user_1707953434058', 2, 974);
INSERT INTO public.users VALUES ('user_1707953434059', 5, 213);
INSERT INTO public.users VALUES ('user_1707953474061', 2, 739);
INSERT INTO public.users VALUES ('user_1707953474062', 5, 367);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

