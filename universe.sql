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
    description text,
    has_life integer,
    age_in_mill_years integer,
    dist_from_earth numeric(10,2),
    is_habitable boolean,
    is_spherical boolean,
    name character varying(30) NOT NULL
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
    description text,
    has_life integer,
    age_in_mill_years integer,
    dist_from_earth numeric(10,2),
    is_habitable boolean,
    is_spherical boolean,
    planet_id integer,
    name character varying(30) NOT NULL
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
    description text,
    has_life integer,
    age_in_mill_years integer,
    dist_from_earth numeric(10,2),
    is_habitable boolean,
    is_spherical boolean,
    star_id integer,
    name character varying(30) NOT NULL
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
    description text,
    has_life integer,
    age_in_mill_years integer,
    dist_from_earth numeric(10,2),
    is_habitable boolean,
    is_spherical boolean,
    galaxy_id integer,
    name character varying(30) NOT NULL
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
-- Name: temp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.temp (
    name character varying(30) NOT NULL,
    temp_id integer NOT NULL,
    description text
);


ALTER TABLE public.temp OWNER TO freecodecamp;

--
-- Name: temp_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.temp_temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_temp_id_seq OWNER TO freecodecamp;

--
-- Name: temp_temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.temp_temp_id_seq OWNED BY public.temp.temp_id;


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
-- Name: temp temp_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp ALTER COLUMN temp_id SET DEFAULT nextval('public.temp_temp_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 'milky way');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy2');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy3');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy4');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy5');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, 'galaxy6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'moon');
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'moon22');
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'moon31');
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'moon42');
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'moon53');
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'moon63');
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'moon71');
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'moon82');
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'moon93');
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'moon104');
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'moon115');
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'moon121');
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'moon132');
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'moon145');
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'moon156');
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'moon164');
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'moon172');
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'moon183');
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'moon196');
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'moon203');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'earth');
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'planet13');
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'planet24');
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'planet31');
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'planet41');
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'planet53');
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'planet62');
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'planet71');
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'planet82');
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'planet95');
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'planet103');
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'planet111');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'sun');
INSERT INTO public.star VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'star11');
INSERT INTO public.star VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'star22');
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'star31');
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'star42');
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'star53');


--
-- Data for Name: temp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.temp VALUES ('tp1', 1, NULL);
INSERT INTO public.temp VALUES ('tp2', 2, NULL);
INSERT INTO public.temp VALUES ('tp3', 3, NULL);


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
-- Name: temp_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.temp_temp_id_seq', 3, true);


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
-- Name: temp temp_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_name_key UNIQUE (name);


--
-- Name: temp temp_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_pkey PRIMARY KEY (temp_id);


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

