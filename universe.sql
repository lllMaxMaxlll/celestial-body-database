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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_million_years integer,
    galaxy_type character varying(30),
    distance_light_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radio_km numeric,
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: other_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other_table (
    other_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    quantity integer
);


ALTER TABLE public.other_table OWNER TO freecodecamp;

--
-- Name: other_table_other_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_table_other_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_table_other_table_id_seq OWNER TO freecodecamp;

--
-- Name: other_table_other_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_table_other_table_id_seq OWNED BY public.other_table.other_table_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_light_from_earth integer,
    galaxy_id integer NOT NULL,
    star_type character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: other_table other_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_table ALTER COLUMN other_table_id SET DEFAULT nextval('public.other_table_other_table_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'M88', 1500, 'Espiral', 34);
INSERT INTO public.galaxy VALUES (2, 'NGC 2787', 1000, 'Lenticular', 50);
INSERT INTO public.galaxy VALUES (3, 'Via Lactea', 1500, 'Espiral', 0);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 100, 'Eliptica', 13);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 150, 'Espiral', 3);
INSERT INTO public.galaxy VALUES (6, 'Carina', 10, 'Anular', 50);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, 12);
INSERT INTO public.moon VALUES (2, 'Fobos', NULL, NULL, 16);
INSERT INTO public.moon VALUES (3, 'Europa', NULL, NULL, 13);
INSERT INTO public.moon VALUES (4, 'Titan', NULL, NULL, 14);
INSERT INTO public.moon VALUES (5, 'America', NULL, NULL, 15);
INSERT INTO public.moon VALUES (6, 'Vella', NULL, NULL, 16);
INSERT INTO public.moon VALUES (7, 'AMichi', NULL, NULL, 12);
INSERT INTO public.moon VALUES (8, 'Enaread', NULL, NULL, 14);
INSERT INTO public.moon VALUES (9, 'Luna1', NULL, NULL, 12);
INSERT INTO public.moon VALUES (10, 'Fobos1', NULL, NULL, 16);
INSERT INTO public.moon VALUES (11, 'Europa1', NULL, NULL, 13);
INSERT INTO public.moon VALUES (12, 'Titan1', NULL, NULL, 14);
INSERT INTO public.moon VALUES (13, 'America1', NULL, NULL, 15);
INSERT INTO public.moon VALUES (14, 'Vella1', NULL, NULL, 16);
INSERT INTO public.moon VALUES (15, 'AMichi1', NULL, NULL, 12);
INSERT INTO public.moon VALUES (16, 'Enaread1', NULL, NULL, 14);
INSERT INTO public.moon VALUES (17, 'Luna21', NULL, NULL, 12);
INSERT INTO public.moon VALUES (18, 'Fobos21', NULL, NULL, 16);
INSERT INTO public.moon VALUES (19, 'Europa21', NULL, NULL, 13);
INSERT INTO public.moon VALUES (20, 'Titan21', NULL, NULL, 14);
INSERT INTO public.moon VALUES (21, 'America21', NULL, NULL, 15);
INSERT INTO public.moon VALUES (22, 'Vella12', NULL, NULL, 16);
INSERT INTO public.moon VALUES (23, 'AMichi12', NULL, NULL, 12);
INSERT INTO public.moon VALUES (24, 'Enaread2', NULL, NULL, 14);


--
-- Data for Name: other_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other_table VALUES (1, 'Max', NULL);
INSERT INTO public.other_table VALUES (2, 'Milo', NULL);
INSERT INTO public.other_table VALUES (3, 'Mar', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9, 'Tierra', NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Marte', NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Jupiter', NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Gigante', NULL, NULL, 2);
INSERT INTO public.planet VALUES (13, 'Saturno', NULL, NULL, 5);
INSERT INTO public.planet VALUES (14, 'Neptuno', NULL, NULL, 6);
INSERT INTO public.planet VALUES (15, 'Arctu', NULL, NULL, 2);
INSERT INTO public.planet VALUES (16, 'Enare', NULL, NULL, 4);
INSERT INTO public.planet VALUES (17, 'Tierra1', NULL, NULL, 2);
INSERT INTO public.planet VALUES (18, 'Marte1', NULL, NULL, 2);
INSERT INTO public.planet VALUES (19, 'Jupiter1', NULL, NULL, 2);
INSERT INTO public.planet VALUES (20, 'Gigante1', NULL, NULL, 2);
INSERT INTO public.planet VALUES (21, 'Saturno1', NULL, NULL, 5);
INSERT INTO public.planet VALUES (22, 'Neptuno1', NULL, NULL, 6);
INSERT INTO public.planet VALUES (23, 'Arctu1', NULL, NULL, 2);
INSERT INTO public.planet VALUES (24, 'Enare1', NULL, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sol', 1, 2, 'Enana');
INSERT INTO public.star VALUES (3, 'Sirio', 10, 1, 'Enana');
INSERT INTO public.star VALUES (4, 'Alfa', 2, 2, 'Gigante');
INSERT INTO public.star VALUES (5, 'Canopus', 3, 3, 'Enana');
INSERT INTO public.star VALUES (6, 'Arcturus', 2, 4, 'Enana');
INSERT INTO public.star VALUES (7, 'Solana', 1, 2, 'Enana');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: other_table_other_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_table_other_table_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: other_table other_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_table
    ADD CONSTRAINT other_table_name_key UNIQUE (name);


--
-- Name: other_table other_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_table
    ADD CONSTRAINT other_table_pkey PRIMARY KEY (other_table_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
