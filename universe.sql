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
    size_ly integer,
    constellation text,
    name character varying(40) NOT NULL,
    type character varying(20),
    year_disc numeric,
    distance_earth double precision,
    tech_id integer
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
    name character varying(20) NOT NULL,
    radius_km double precision,
    year_disc numeric,
    planet_id integer,
    tech_id integer
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
    name character varying(20) NOT NULL,
    radius_km double precision,
    year_disc numeric,
    have_moons boolean,
    n_moons integer,
    star_id integer,
    tech_id integer
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
    name character varying(20) NOT NULL,
    spectral_type character varying(20),
    dis_year numeric,
    have_planets boolean,
    n_planets integer,
    galaxy_id integer,
    tech_id integer
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
-- Name: tech; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tech (
    tech_id integer NOT NULL,
    name character varying(20) NOT NULL,
    dev_year numeric,
    country text,
    developer character varying(40)
);


ALTER TABLE public.tech OWNER TO freecodecamp;

--
-- Name: tech__tech_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tech__tech_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tech__tech_id_seq OWNER TO freecodecamp;

--
-- Name: tech__tech_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.tech__tech_id_seq OWNED BY public.tech.tech_id;


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
-- Name: tech tech_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tech ALTER COLUMN tech_id SET DEFAULT nextval('public.tech__tech_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 52850, 'Sagittaurus', 'Milky_way', 'barred_spiral', 1610, 0.026, 1);
INSERT INTO public.galaxy VALUES (2, 110000, 'Andromeda', 'Andromeda', 'barred_spiral', 964, 2537, 1);
INSERT INTO public.galaxy VALUES (3, 48500, 'Centaurus', 'Centaurus_A', 'elliptical', 1826, 13.5, 5);
INSERT INTO public.galaxy VALUES (4, 16800, 'Canis_Major', 'Canis_Major_dwarf', 'irregular', 2003, 0.025, 5);
INSERT INTO public.galaxy VALUES (5, 7000, 'Dorado', 'Large_Megallanic_cloud', 'barred_dwarf_spiral', 1913, 0.163, 4);
INSERT INTO public.galaxy VALUES (6, 25000, 'Virgo', 'Sombrero', 'elliptical', NULL, 0.49, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3473, 428, 1, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 22.2, 1877, 2, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 6.2, 1877, 2, 4);
INSERT INTO public.moon VALUES (4, 'Io', 1821.6, 1610, 5, 2);
INSERT INTO public.moon VALUES (5, 'Europa', 1560.8, 1610, 5, 1);
INSERT INTO public.moon VALUES (6, 'Ganymede', 2631, 1610, 5, 1);
INSERT INTO public.moon VALUES (7, 'Callisto', 2410.3, 1610, 5, 1);
INSERT INTO public.moon VALUES (8, 'Amalthea', 83.5, 1979, 5, 2);
INSERT INTO public.moon VALUES (9, 'Metis', 43, 1979, 5, 2);
INSERT INTO public.moon VALUES (10, 'Adrasthea', 16.4, 1979, 5, 2);
INSERT INTO public.moon VALUES (11, 'Thebe', 98.6, 1979, 5, 1);
INSERT INTO public.moon VALUES (12, 'Leda', 21.5, 1974, 5, 2);
INSERT INTO public.moon VALUES (13, 'Triton', 1353.4, 1846, 6, 1);
INSERT INTO public.moon VALUES (14, 'Nereid', 170, 1949, 6, 2);
INSERT INTO public.moon VALUES (15, 'Galatea', 87.4, 1989, 6, 1);
INSERT INTO public.moon VALUES (16, 'Despina', 75, 1989, 6, 2);
INSERT INTO public.moon VALUES (17, 'Proteus', 210, 1989, 6, 2);
INSERT INTO public.moon VALUES (18, 'Thalassa', 41, 1989, 6, 2);
INSERT INTO public.moon VALUES (19, 'Halimede', 31, 2002, 6, 2);
INSERT INTO public.moon VALUES (20, 'Titan', 2474.3, 1965, 7, 1);
INSERT INTO public.moon VALUES (21, 'Enceladus', 500, 1789, 7, 2);
INSERT INTO public.moon VALUES (22, 'Mimas', 198.2, 1789, 7, 2);
INSERT INTO public.moon VALUES (23, 'Atlas', 15, 1980, 7, 1);
INSERT INTO public.moon VALUES (24, 'Lapetus', 734.5, 1671, 7, 2);
INSERT INTO public.moon VALUES (25, 'Elara', 80, 1905, 5, 1);
INSERT INTO public.moon VALUES (26, 'Himalia', 149, 1904, 5, 1);
INSERT INTO public.moon VALUES (27, 'Callirrhoe', 1.3, 2000, 5, 1);
INSERT INTO public.moon VALUES (28, 'Carpo', 3, 2003, 5, 1);
INSERT INTO public.moon VALUES (29, 'Charon', 606, 1978, 8, 1);
INSERT INTO public.moon VALUES (30, 'Eukelade', 4, 2003, 5, 3);
INSERT INTO public.moon VALUES (31, 'Hyperion', 135, 1848, 7, 1);
INSERT INTO public.moon VALUES (32, 'Iapetus', 734.5, 1671, 7, 1);
INSERT INTO public.moon VALUES (33, 'Miranda', 500, 1986, 9, 1);
INSERT INTO public.moon VALUES (34, 'KOI-268.01_moon', NULL, 2013, 15, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742, NULL, true, 1, 1, 2);
INSERT INTO public.planet VALUES (2, 'Mars', 6778, 1610, true, 2, 1, 1);
INSERT INTO public.planet VALUES (3, 'Mercury', 4871.4, 1631, false, 0, 1, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 12104, 1610, false, 0, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139829, 1610, true, 80, 1, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 49244, 1846, true, 14, 1, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 58232, 1610, true, 83, 1, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', 1188.3, 1930, true, 4, 1, 1);
INSERT INTO public.planet VALUES (9, 'Uranus', 25362, 1781, true, 27, 1, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-1649c', 6753.3, 2020, NULL, NULL, 2, 3);
INSERT INTO public.planet VALUES (11, 'Gliese-163c', 28000, 2012, NULL, NULL, 3, 2);
INSERT INTO public.planet VALUES (12, '51_Pegasi_b', 135830, 1995, false, 0, 6, 2);
INSERT INTO public.planet VALUES (13, 'L 98-59-f', 3140, 2021, NULL, NULL, 9, 2);
INSERT INTO public.planet VALUES (14, 'Bocaprins', 167820, 2011, NULL, NULL, 12, 4);
INSERT INTO public.planet VALUES (15, 'KOI-268.01', 112000, 2013, true, 1, 13, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 450, true, 8, 1, 1);
INSERT INTO public.star VALUES (2, 'Kepler-1649', 'M5V', 2020, true, 2, 1, 4);
INSERT INTO public.star VALUES (3, 'Gliese 163', 'M3V', 2012, true, 5, 5, 3);
INSERT INTO public.star VALUES (4, 'Alpha_andromedae', 'A3V', 1993, false, 0, 2, 3);
INSERT INTO public.star VALUES (5, 'Mirach', 'MOIII', 1521, false, 0, 2, 5);
INSERT INTO public.star VALUES (6, '51_pegasi', 'G2IV', 1995, true, 1, 2, 3);
INSERT INTO public.star VALUES (7, 'Delta_Centauri', 'B-type', NULL, false, 0, 3, 3);
INSERT INTO public.star VALUES (8, 'Canis_Major', 'DA2', 2000, NULL, NULL, 4, 4);
INSERT INTO public.star VALUES (9, 'L 98-59', 'M3V', 2019, true, 4, 3, 3);
INSERT INTO public.star VALUES (10, 'Antares', 'B2.5V', 1819, false, 0, 1, 5);
INSERT INTO public.star VALUES (11, 'WASP-39', 'G8', 2011, true, 1, 1, 4);
INSERT INTO public.star VALUES (12, 'KOI-268', NULL, 2013, true, 1, 1, 3);
INSERT INTO public.star VALUES (13, 'VEGA', 'A0Va', 2005, false, 0, 2, 4);


--
-- Data for Name: tech; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tech VALUES (1, 'optical', 1608, 'Germany-Dutch', 'Hans Lippershey');
INSERT INTO public.tech VALUES (2, 'occultation', 1590, 'Germany', 'Michael Maestlin');
INSERT INTO public.tech VALUES (3, 'X-ray astronomy', 1927, 'USA', 'US_Naval_Research_Laboratory');
INSERT INTO public.tech VALUES (4, 'infrared', 1830, 'Scotland', 'Charles Piazzi Smyth');
INSERT INTO public.tech VALUES (5, 'radio_astronomy', 1933, 'USA', 'Karl_Jansky');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 34, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: tech__tech_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.tech__tech_id_seq', 5, true);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: tech obs_technology_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tech
    ADD CONSTRAINT obs_technology_name_key UNIQUE (name);


--
-- Name: tech obs_technology_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tech
    ADD CONSTRAINT obs_technology_pkey PRIMARY KEY (tech_id);


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
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: tech unique_name_tech; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tech
    ADD CONSTRAINT unique_name_tech UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy fk_tech_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_tech_id FOREIGN KEY (tech_id) REFERENCES public.tech(tech_id);


--
-- Name: star fk_tech_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_tech_id FOREIGN KEY (tech_id) REFERENCES public.tech(tech_id);


--
-- Name: planet fk_tech_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_tech_id FOREIGN KEY (tech_id) REFERENCES public.tech(tech_id);


--
-- Name: moon fk_tech_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_tech_id FOREIGN KEY (tech_id) REFERENCES public.tech(tech_id);


--
-- PostgreSQL database dump complete
--

