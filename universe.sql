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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    gravity numeric(4,1),
    location text,
    size integer
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
    name character varying(40) NOT NULL,
    planet_id integer,
    gravity numeric(4,1),
    location text,
    mass integer,
    rotation integer,
    habitable boolean
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer,
    gravity numeric(4,1),
    location text,
    mass integer,
    rotation integer,
    habitable boolean
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
    name character varying(40) NOT NULL,
    galaxy_id integer,
    gravity numeric(4,1),
    location text,
    mass integer,
    rotation integer,
    habitable boolean
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 939);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 259);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 210);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1.2, 'RA 00h 42m 44.3s | Dec +41° 16′ 9″', 220000);
INSERT INTO public.galaxy VALUES (2, 'Via Láctea', 0.9, 'RA 17h 45m 40s | Dec -29° 00′ 28″', 200000);
INSERT INTO public.galaxy VALUES (3, 'Triângulo', 0.8, 'RA 01h 33m 50.02s | Dec +30° 39′ 36.7″', 60000);
INSERT INTO public.galaxy VALUES (4, 'Grande Nuvem de Magalhães', 0.2, 'RA 05h 23m 34.5s | Dec -69° 45′ 22″', 14000);
INSERT INTO public.galaxy VALUES (5, 'Pequena Nuvem de Magalhães', 0.2, 'RA 00h 52m 44.8s | Dec -72° 49′ 43″', 7000);
INSERT INTO public.galaxy VALUES (6, 'Galáxia do Girassol', 1.1, 'RA 13h 15m 8.3s | Dec +42° 1′ 45″', 100000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 3, 0.2, 'RA 04h 21m | Dec +19° 52′', 73500, 656, false);
INSERT INTO public.moon VALUES (2, 'Io', 5, 0.2, NULL, 8932, 43, false);
INSERT INTO public.moon VALUES (3, 'Europa', 5, 0.1, NULL, 4800, 85, false);
INSERT INTO public.moon VALUES (4, 'Ganimedes', 5, 0.1, NULL, 14820, 172, false);
INSERT INTO public.moon VALUES (5, 'Calisto', 5, 0.1, NULL, 10760, 400, false);
INSERT INTO public.moon VALUES (6, 'Titã', 6, 0.1, NULL, 13450, 383, false);
INSERT INTO public.moon VALUES (7, 'Reia', 6, 0.1, NULL, 2300, 108, false);
INSERT INTO public.moon VALUES (8, 'Jápeto', 6, 0.0, NULL, 1800, 190, false);
INSERT INTO public.moon VALUES (9, 'Dione', 6, 0.0, NULL, 1100, 66, false);
INSERT INTO public.moon VALUES (10, 'Tétis', 6, 0.0, NULL, 620, 44, false);
INSERT INTO public.moon VALUES (11, 'Encélado', 6, 0.0, NULL, 650, 33, false);
INSERT INTO public.moon VALUES (12, 'Miranda', 7, 0.1, NULL, 660, 1, false);
INSERT INTO public.moon VALUES (13, 'Ariel', 7, 0.0, NULL, 1350, 3, false);
INSERT INTO public.moon VALUES (14, 'Umbriel', 7, 0.0, NULL, 1170, 4, false);
INSERT INTO public.moon VALUES (15, 'Titânia', 7, 0.0, NULL, 3520, 9, false);
INSERT INTO public.moon VALUES (16, 'Oberon', 7, 0.0, NULL, 3010, 14, false);
INSERT INTO public.moon VALUES (17, 'Tritão', 8, 0.1, NULL, 2140, -6, false);
INSERT INTO public.moon VALUES (18, 'Nereida', 8, 0.0, NULL, 270, 1, false);
INSERT INTO public.moon VALUES (19, 'Caronte', 9, 0.0, NULL, 1585, 153, false);
INSERT INTO public.moon VALUES (20, 'Nix', 9, 0.0, NULL, 5, 2, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercúrio', 1, 0.4, 'RA 16h 29m 1.3s | Dec -26° 32′ 23″', 330, 1408, false);
INSERT INTO public.planet VALUES (2, 'Vênus', 1, 0.9, 'RA 02h 46m 19.7s | Dec +16° 00′ 06″', 4867, 5833, false);
INSERT INTO public.planet VALUES (3, 'Terra', 1, 1.0, 'RA 00h 00m 00s | Dec +00° 00′ 00″', 5972, 24, true);
INSERT INTO public.planet VALUES (4, 'Marte', 1, 0.4, 'RA 02h 06m 39s | Dec +24° 19′ 36″', 641, 25, false);
INSERT INTO public.planet VALUES (5, 'Júpiter', 1, 2.3, 'RA 02h 37m 24s | Dec +18° 26′ 37″', 1898000, 10, false);
INSERT INTO public.planet VALUES (6, 'Saturno', 1, 0.9, 'RA 02h 31m 19.9s | Dec +16° 23′ 35″', 568300, 11, false);
INSERT INTO public.planet VALUES (7, 'Urano', 1, 0.9, 'RA 02h 36m 03.2s | Dec +13° 22′ 41″', 86810, 17, false);
INSERT INTO public.planet VALUES (8, 'Netuno', 1, 1.1, 'RA 23h 26m 57.7s | Dec -06° 09′ 29″', 102400, 16, false);
INSERT INTO public.planet VALUES (9, 'Plutão', 1, 0.1, 'RA 19h 48m 03.2s | Dec -21° 46′ 48″', 13, 153, false);
INSERT INTO public.planet VALUES (10, 'Eris', 1, 0.8, 'RA 01h 47m 02.1s | Dec +04° 32′ 02″', 16, 26, false);
INSERT INTO public.planet VALUES (11, 'Haumea', 1, 0.4, 'RA 17h 20m 12.4s | Dec -22° 24′ 57″', 4, 4, false);
INSERT INTO public.planet VALUES (12, 'Makemake', 1, 0.5, 'RA 13h 45m 48.2s | Dec -29° 27′ 40″', 3, 8, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 2, 1.0, 'RA 08h 34m | Dec +89° 20′', 1989000, 24, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 0.1, 'RA 14h 29m 43s | Dec -62° 40′ 46″', 123000, 83, false);
INSERT INTO public.star VALUES (3, 'Sirius', 2, 1.7, 'RA 06h 45m 08.9s | Dec -16° 42′ 58″', 2089000, 5, false);
INSERT INTO public.star VALUES (4, 'Vega', 3, 2.1, 'RA 18h 36m 56.3s | Dec +38° 47′ 01″', 2360000, 1, false);
INSERT INTO public.star VALUES (5, 'Capella', 4, 0.9, 'RA 05h 16m 41.4s | Dec +45° 59′ 53″', 2100000, 104, true);
INSERT INTO public.star VALUES (6, 'Rigel', 5, 3.9, 'RA 05h 14m 32.3s | Dec -08° 12′ 06″', 21000000, 25, false);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


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

