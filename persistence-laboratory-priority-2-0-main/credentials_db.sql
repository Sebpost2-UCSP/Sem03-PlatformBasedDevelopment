--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-26 18:05:36

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
-- TOC entry 200 (class 1259 OID 16435)
-- Name: Access_Table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Access_Table" (
    username text,
    password text,
    "doctor_ID" smallint,
    role text,
    "ID" smallint NOT NULL
);


ALTER TABLE public."Access_Table" OWNER TO postgres;

--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 200
-- Name: TABLE "Access_Table"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public."Access_Table" IS 'Guardadas las claves de los administradores y doctores ';


--
-- TOC entry 205 (class 1259 OID 16475)
-- Name: Access_Table_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Access_Table_ID_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Access_Table_ID_seq" OWNER TO postgres;

--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 205
-- Name: Access_Table_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Access_Table_ID_seq" OWNED BY public."Access_Table"."ID";


--
-- TOC entry 202 (class 1259 OID 16454)
-- Name: Patients_Table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Patients_Table" (
    "ID" smallint NOT NULL,
    "doctor_ID" smallint,
    name text,
    age smallint,
    "birthday " date,
    phone integer
);


ALTER TABLE public."Patients_Table" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16452)
-- Name: Patients_Table_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Patients_Table_ID_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Patients_Table_ID_seq" OWNER TO postgres;

--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 201
-- Name: Patients_Table_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Patients_Table_ID_seq" OWNED BY public."Patients_Table"."ID";


--
-- TOC entry 204 (class 1259 OID 16466)
-- Name: Physicians_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Physicians_table" (
    id smallint NOT NULL,
    name text,
    email text,
    license_id integer,
    specialty text
);


ALTER TABLE public."Physicians_table" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16464)
-- Name: Physicians_table_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Physicians_table_id_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Physicians_table_id_seq" OWNER TO postgres;

--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 203
-- Name: Physicians_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Physicians_table_id_seq" OWNED BY public."Physicians_table".id;


--
-- TOC entry 2865 (class 2604 OID 16477)
-- Name: Access_Table ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Access_Table" ALTER COLUMN "ID" SET DEFAULT nextval('public."Access_Table_ID_seq"'::regclass);


--
-- TOC entry 2866 (class 2604 OID 16457)
-- Name: Patients_Table ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Patients_Table" ALTER COLUMN "ID" SET DEFAULT nextval('public."Patients_Table_ID_seq"'::regclass);


--
-- TOC entry 2867 (class 2604 OID 16469)
-- Name: Physicians_table id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Physicians_table" ALTER COLUMN id SET DEFAULT nextval('public."Physicians_table_id_seq"'::regclass);


--
-- TOC entry 3004 (class 0 OID 16435)
-- Dependencies: 200
-- Data for Name: Access_Table; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Access_Table" VALUES ('admin
', 'admin', NULL, 'admin', 2);
INSERT INTO public."Access_Table" VALUES ('drstrange', 'p4ssw0rd', 1, 'physician
', 1);


--
-- TOC entry 3006 (class 0 OID 16454)
-- Dependencies: 202
-- Data for Name: Patients_Table; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Patients_Table" VALUES (1, 1, 'Patient 1', 20, '2000-04-04', 999123456);


--
-- TOC entry 3008 (class 0 OID 16466)
-- Dependencies: 204
-- Data for Name: Physicians_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Physicians_table" VALUES (1, 'Dr.Strange
', 'dr.strange@medic.com', 12345, 'neurosurgeon');
INSERT INTO public."Physicians_table" VALUES (2, 'Dr. House', 'dr.house@medic.com
', 54321, 'internist');


--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 205
-- Name: Access_Table_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Access_Table_ID_seq"', 1, false);


--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 201
-- Name: Patients_Table_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Patients_Table_ID_seq"', 1, false);


--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 203
-- Name: Physicians_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Physicians_table_id_seq"', 1, false);


--
-- TOC entry 2869 (class 2606 OID 16485)
-- Name: Access_Table Access_Table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Access_Table"
    ADD CONSTRAINT "Access_Table_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 2871 (class 2606 OID 16462)
-- Name: Patients_Table Patients_Table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Patients_Table"
    ADD CONSTRAINT "Patients_Table_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 2873 (class 2606 OID 16474)
-- Name: Physicians_table Physicians_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Physicians_table"
    ADD CONSTRAINT "Physicians_table_pkey" PRIMARY KEY (id);


-- Completed on 2021-04-26 18:05:37

--
-- PostgreSQL database dump complete
--

