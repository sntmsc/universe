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
    name character varying(30),
    age integer NOT NULL,
    galaxy_length numeric,
    description text,
    has_life boolean,
    verified_data boolean
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
    name character varying(30),
    planet_id integer NOT NULL,
    age integer NOT NULL,
    moon_length numeric,
    description text,
    has_life boolean,
    verified_data boolean
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
    name character varying(30),
    star_id integer NOT NULL,
    age integer NOT NULL,
    planet_length numeric,
    description text,
    has_life boolean,
    verified_data boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    age integer NOT NULL,
    star_length numeric,
    description text,
    has_life boolean,
    verified_data boolean
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
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    students_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer NOT NULL,
    study_years integer,
    is_professional boolean,
    has_life boolean,
    weight numeric
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.students_id;


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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: students students_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN students_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Peqiwop', 21321, 12321.3, 'ajpo oepaj jaopdj', true, true);
INSERT INTO public.galaxy VALUES (2, 'Padjopdj', 21312, 13414.9, 'ajfpaj jopaj japdoj', true, false);
INSERT INTO public.galaxy VALUES (3, 'Pdajiodwjio', 2339, 9312.322, 'adpjoa awjopdjf ejfaopjp', false, false);
INSERT INTO public.galaxy VALUES (4, 'Jawdpojop', 2309, 1229.221, 'aopidj jdaop djadpoj', true, true);
INSERT INTO public.galaxy VALUES (5, 'Padjapo', 231, 29.394, 'pdoawdj jpadojw jopdajdwpo', false, false);
INSERT INTO public.galaxy VALUES (6, 'Tadjpo', 321, 213.321, 'padoi ipdoas iofpadio', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Peqiwop', 27, 21321, 12321.3, 'ajpo oepaj jaopdj', true, true);
INSERT INTO public.moon VALUES (2, 'Padjopdj', 36, 21312, 13414.9, 'ajfpaj jopaj japdoj', true, false);
INSERT INTO public.moon VALUES (3, 'Pdajiodwjio', 29, 2339, 9312.322, 'adpjoa awjopdjf ejfaopjp', false, false);
INSERT INTO public.moon VALUES (4, 'Jawdpojop', 28, 2309, 1229.221, 'aopidj jdaop djadpoj', true, true);
INSERT INTO public.moon VALUES (5, 'Padjapo', 27, 231, 29.394, 'pdoawdj jpadojw jopdajdwpo', false, false);
INSERT INTO public.moon VALUES (6, 'Tadjpo', 28, 321, 213.321, 'padoi ipdoas iofpadio', true, false);
INSERT INTO public.moon VALUES (7, 'Pdawdko', 27, 321321, 123132.3, 'adkao dkaodak wajoawdjo', true, false);
INSERT INTO public.moon VALUES (8, 'Qsdkaop', 29, 1321, 23312.2, 'dkasodask', true, true);
INSERT INTO public.moon VALUES (9, 'Qsdajkoj', 35, 2312, 1232.1, 'sadkaos kadoask akdo', false, false);
INSERT INTO public.moon VALUES (10, 'Qsdakop', 26, 1111, 1112.1, 'adako adjo asjdwoqjo', true, false);
INSERT INTO public.moon VALUES (11, 'Eqroepqr', 29, 123, 123.123123, 'eipoadi soko qpo saoko', false, false);
INSERT INTO public.moon VALUES (12, 'Qiowpqi', 27, 32424, 3423513.123131, 'aodiwo diaodioaw fkeafnak', true, true);
INSERT INTO public.moon VALUES (13, 'Tapjoda', 28, 211431, 5435.1, 'aeadoaj', true, true);
INSERT INTO public.moon VALUES (14, 'Aeaiowp', 36, 2132312, 21312421.1, 'qwewoqp kdsaj ncneqi', true, true);
INSERT INTO public.moon VALUES (15, 'Reqipoqei', 29, 15324234, 34223325.1, 'jsefopfsej ', true, true);
INSERT INTO public.moon VALUES (16, 'pioiro', 36, 111, 111.1, 'ieqwopriwr', true, false);
INSERT INTO public.moon VALUES (17, 'Reiropiap', 29, 222, 222.2, 'daskodkods', true, true);
INSERT INTO public.moon VALUES (18, 'QPewqeqio', 28, 231111, 11.111, 'dsaiodpsdqewq', false, false);
INSERT INTO public.moon VALUES (19, 'Yeiopeiq', 26, 1111, 1111.1111, 'qwieopqeiwoq', true, true);
INSERT INTO public.moon VALUES (20, 'Tqiepwqeipo', 29, 2222, 22222.111, 'aiwoeqpiewqq', false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (25, 'Peqiwop', 5, 21321, 12321.3, 'ajpo oepaj jaopdj', true, true);
INSERT INTO public.planet VALUES (26, 'Padjopdj', 3, 21312, 13414.9, 'ajfpaj jopaj japdoj', true, false);
INSERT INTO public.planet VALUES (27, 'Pdajiodwjio', 2, 2339, 9312.322, 'adpjoa awjopdjf ejfaopjp', false, false);
INSERT INTO public.planet VALUES (28, 'Jawdpojop', 2, 2309, 1229.221, 'aopidj jdaop djadpoj', true, true);
INSERT INTO public.planet VALUES (29, 'Padjapo', 4, 231, 29.394, 'pdoawdj jpadojw jopdajdwpo', false, false);
INSERT INTO public.planet VALUES (30, 'Tadjpo', 2, 321, 213.321, 'padoi ipdoas iofpadio', true, false);
INSERT INTO public.planet VALUES (31, 'Pdawdko', 7, 321321, 123132.3, 'adkao dkaodak wajoawdjo', true, false);
INSERT INTO public.planet VALUES (32, 'Qsdkaop', 2, 1321, 23312.2, 'dkasodask', true, true);
INSERT INTO public.planet VALUES (33, 'Qsdajkoj', 3, 2312, 1232.1, 'sadkaos kadoask akdo', false, false);
INSERT INTO public.planet VALUES (34, 'Qsdakop', 7, 1111, 1112.1, 'adako adjo asjdwoqjo', true, false);
INSERT INTO public.planet VALUES (35, 'Eqroepqr', 2, 123, 123.123123, 'eipoadi soko qpo saoko', false, false);
INSERT INTO public.planet VALUES (36, 'Qiowpqi', 2, 32424, 3423513.123131, 'aodiwo diaodioaw fkeafnak', true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Peqiwop', 1, 21321, 12321.3, 'ajpo oepaj jaopdj', true, true);
INSERT INTO public.star VALUES (3, 'Padjopdj', 1, 21312, 13414.9, 'ajfpaj jopaj japdoj', true, false);
INSERT INTO public.star VALUES (4, 'Pdajiodwjio', 1, 2339, 9312.322, 'adpjoa awjopdjf ejfaopjp', false, false);
INSERT INTO public.star VALUES (5, 'Jawdpojop', 2, 2309, 1229.221, 'aopidj jdaop djadpoj', true, true);
INSERT INTO public.star VALUES (6, 'Padjapo', 4, 231, 29.394, 'pdoawdj jpadojw jopdajdwpo', false, false);
INSERT INTO public.star VALUES (7, 'Tadjpo', 1, 321, 213.321, 'padoi ipdoas iofpadio', true, false);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (1, 'Sergio', 'Aficionado por las estrellas', 20, 1, false, true, 71.2);
INSERT INTO public.students VALUES (2, 'Malena', 'estudiante', 21, 2, true, true, 69.2);
INSERT INTO public.students VALUES (3, 'Agustina', 'científica', 37, 8, true, true, 81.3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_seq', 36, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 3, true);


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
-- Name: students students_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_name_key UNIQUE (name);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (students_id);


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
