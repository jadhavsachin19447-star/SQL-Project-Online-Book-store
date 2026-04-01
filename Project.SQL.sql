--
-- PostgreSQL database cluster dump
--

-- Started on 2026-04-01 09:18:06

\restrict eU5ccMuTXV1q5vnvVR1Gn7FGOqiwY5ArpxUyFj1uECvFk2QyPQLa0dvdRXMpkhe

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:mIWhG4PDX+SxfNe7KMSA1w==$jcn47rq3eTQDsgpytjYrqsisEIirWjdX9Ifh8coVeYw=:SsekTsQWrihrHdahSR+goeeVVKh/yLfV9EUp5EwhqPc=';

--
-- User Configurations
--








\unrestrict eU5ccMuTXV1q5vnvVR1Gn7FGOqiwY5ArpxUyFj1uECvFk2QyPQLa0dvdRXMpkhe

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict oSoXtgcsv3cPbe70tuhunmxPErWJliN1oY7JmvQJH49YQaPPUODGwgVEnOAbC8W

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-01 09:18:06

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

-- Completed on 2026-04-01 09:18:06

--
-- PostgreSQL database dump complete
--

\unrestrict oSoXtgcsv3cPbe70tuhunmxPErWJliN1oY7JmvQJH49YQaPPUODGwgVEnOAbC8W

--
-- Database "Case Statement " dump
--

--
-- PostgreSQL database dump
--

\restrict 0abrzVlyNdsZibfoQIdk1aNZIyiyK8rUT5Y54IZeidc7BPmbOG6NE6Zls4gYLOO

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-01 09:18:06

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
-- TOC entry 5028 (class 1262 OID 24603)
-- Name: Case Statement ; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Case Statement " WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE "Case Statement " OWNER TO postgres;

\unrestrict 0abrzVlyNdsZibfoQIdk1aNZIyiyK8rUT5Y54IZeidc7BPmbOG6NE6Zls4gYLOO
\encoding SQL_ASCII
\connect -reuse-previous=on "dbname='Case Statement '"
\restrict 0abrzVlyNdsZibfoQIdk1aNZIyiyK8rUT5Y54IZeidc7BPmbOG6NE6Zls4gYLOO

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
-- TOC entry 223 (class 1259 OID 24620)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    emp_id integer,
    name character varying(50),
    salary numeric(10,2),
    department character varying(50),
    gender character varying(10)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24605)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_id integer NOT NULL,
    name character varying(50),
    salary numeric(10,2),
    department character varying(50),
    gender character varying(10)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24604)
-- Name: employees_emp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_emp_id_seq OWNER TO postgres;

--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 219
-- Name: employees_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_emp_id_seq OWNED BY public.employees.emp_id;


--
-- TOC entry 222 (class 1259 OID 24613)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer,
    order_date date,
    total_amount numeric(10,2),
    region character varying(10)
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24612)
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_order_id_seq OWNER TO postgres;

--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- TOC entry 4865 (class 2604 OID 24608)
-- Name: employees emp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN emp_id SET DEFAULT nextval('public.employees_emp_id_seq'::regclass);


--
-- TOC entry 4866 (class 2604 OID 24616)
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- TOC entry 5022 (class 0 OID 24620)
-- Dependencies: 223
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (emp_id, name, salary, department, gender) FROM stdin;
3	Vikas	48000.00	HR	Male
\.


--
-- TOC entry 5019 (class 0 OID 24605)
-- Dependencies: 220
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (emp_id, name, salary, department, gender) FROM stdin;
1	Aditi	90000.00	Finance	Female
2	Santosh	75000.00	IT	Male
3	Vikas	48000.00	HR	Male
4	Vinita	50000.00	Finance	Female
5	Arti	30000.00	IT	Female
\.


--
-- TOC entry 5021 (class 0 OID 24613)
-- Dependencies: 222
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, customer_id, order_date, total_amount, region) FROM stdin;
1	101	2024-11-01	1500.00	north
2	102	2024-11-05	800.00	south
3	103	2024-11-10	2000.00	east
4	104	2024-11-15	600.00	north
5	105	2024-11-20	3000.00	west
\.


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 219
-- Name: employees_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_emp_id_seq', 5, true);


--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 5, true);


--
-- TOC entry 4868 (class 2606 OID 24611)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);


--
-- TOC entry 4870 (class 2606 OID 24619)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


-- Completed on 2026-04-01 09:18:07

--
-- PostgreSQL database dump complete
--

\unrestrict 0abrzVlyNdsZibfoQIdk1aNZIyiyK8rUT5Y54IZeidc7BPmbOG6NE6Zls4gYLOO

--
-- Database "Company" dump
--

--
-- PostgreSQL database dump
--

\restrict 12sTojQEnrysVUbwCX88gL9qfgrKhRPDIXfBhzHM0rxGi6sAUVGdtGbm3ougiH4

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-01 09:18:07

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
-- TOC entry 5020 (class 1262 OID 16384)
-- Name: Company; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Company" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE "Company" OWNER TO postgres;

\unrestrict 12sTojQEnrysVUbwCX88gL9qfgrKhRPDIXfBhzHM0rxGi6sAUVGdtGbm3ougiH4
\connect "Company"
\restrict 12sTojQEnrysVUbwCX88gL9qfgrKhRPDIXfBhzHM0rxGi6sAUVGdtGbm3ougiH4

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
-- TOC entry 219 (class 1259 OID 16401)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    name character varying(30) NOT NULL,
    emp_id integer NOT NULL,
    salary integer NOT NULL,
    designation character varying(20) NOT NULL,
    accounts character varying(20) NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16493)
-- Name: employees_back; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees_back (
    name character varying(30),
    emp_id integer,
    salary integer,
    designation character varying(20),
    accounts character varying(20)
);


ALTER TABLE public.employees_back OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16490)
-- Name: employees_backup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees_backup (
    name character varying(30),
    emp_id integer,
    salary integer,
    designation character varying(20),
    accounts character varying(20)
);


ALTER TABLE public.employees_backup OWNER TO postgres;

--
-- TOC entry 5012 (class 0 OID 16401)
-- Dependencies: 219
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (name, emp_id, salary, designation, accounts) FROM stdin;
sanju jadhav	1001	65000	leader	saving
ganesh chavan	1002	43000	principle	saving
nandu harpale	1003	40000	goat farmer	current
rajani deshpande	1004	45000	teacher	saving
\.


--
-- TOC entry 5014 (class 0 OID 16493)
-- Dependencies: 221
-- Data for Name: employees_back; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees_back (name, emp_id, salary, designation, accounts) FROM stdin;
sanju jadhav	1001	65750	leader	saving
ganesh chavan	1002	43750	principle	saving
nandu harpale	1003	40750	goat farmer	current
rajani deshpande	1004	45750	teacher	saving
\.


--
-- TOC entry 5013 (class 0 OID 16490)
-- Dependencies: 220
-- Data for Name: employees_backup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees_backup (name, emp_id, salary, designation, accounts) FROM stdin;
\.


--
-- TOC entry 4864 (class 2606 OID 16410)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);


-- Completed on 2026-04-01 09:18:07

--
-- PostgreSQL database dump complete
--

\unrestrict 12sTojQEnrysVUbwCX88gL9qfgrKhRPDIXfBhzHM0rxGi6sAUVGdtGbm3ougiH4

--
-- Database "Join SQL" dump
--

--
-- PostgreSQL database dump
--

\restrict BIwcOWExLRMzjSehPAl8bs9HQhKKEWfAdolpPbD4j4fBYJA3EUe7Ot81pBGtO0i

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-01 09:18:07

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
-- TOC entry 5038 (class 1262 OID 24623)
-- Name: Join SQL; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Join SQL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE "Join SQL" OWNER TO postgres;

\unrestrict BIwcOWExLRMzjSehPAl8bs9HQhKKEWfAdolpPbD4j4fBYJA3EUe7Ot81pBGtO0i
\encoding SQL_ASCII
\connect -reuse-previous=on "dbname='Join SQL'"
\restrict BIwcOWExLRMzjSehPAl8bs9HQhKKEWfAdolpPbD4j4fBYJA3EUe7Ot81pBGtO0i

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
-- TOC entry 219 (class 1259 OID 24624)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id character varying(10) NOT NULL,
    customer_name character varying(50),
    city character varying(20),
    customer_type character varying(20)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24642)
-- Name: emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emp (
    emp_id character varying(10) NOT NULL,
    salesman_name character varying(50),
    city character varying(20),
    age integer
);


ALTER TABLE public.emp OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24630)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    customer character varying(10) NOT NULL,
    product character varying(20),
    price integer
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24648)
-- Name: salary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salary (
    emp_id character varying(10) NOT NULL,
    salesman_name character varying(50),
    salary integer
);


ALTER TABLE public.salary OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24636)
-- Name: salesman; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salesman (
    emp_id character varying(10) NOT NULL,
    salesman_name character varying(50),
    city character varying(20),
    supervisor_id character varying(10)
);


ALTER TABLE public.salesman OWNER TO postgres;

--
-- TOC entry 5028 (class 0 OID 24624)
-- Dependencies: 219
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customer_id, customer_name, city, customer_type) FROM stdin;
C0001	Rakesh Sharma	Thane	Regular
C0002	Shivanand Sahani	Kalyan	Regular
C0003	Kuntal Patra	Dadar	Premium
C0004	Bijendra Singh	Vashi	Regular
C0005	Kranti  Bheke	Andheri	Regular
\.


--
-- TOC entry 5031 (class 0 OID 24642)
-- Dependencies: 222
-- Data for Name: emp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emp (emp_id, salesman_name, city, age) FROM stdin;
S001	Sachin Jadhav	Mumbai	35
S002	Adika Singh	Pune	30
S003	Vijay More	Delhi	29
S004	Vinod Zine	Mumbai	31
S005	Hari Umap	Mumbai	26
S006	Raj Mehta	Mumbai	36
\.


--
-- TOC entry 5029 (class 0 OID 24630)
-- Dependencies: 220
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (customer, product, price) FROM stdin;
C0001	Keyboard	800
C0003	Speaker	1500
C0005	NIC	850
C0006	Expansion Card	350
C0007	Monitor	850
\.


--
-- TOC entry 5032 (class 0 OID 24648)
-- Dependencies: 223
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salary (emp_id, salesman_name, salary) FROM stdin;
S001	Sachin Jadhav	25000
S002	Adika Singh	30000
S003	Vijay More	50000
S006	Raj Mehta	23000
\.


--
-- TOC entry 5030 (class 0 OID 24636)
-- Dependencies: 221
-- Data for Name: salesman; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salesman (emp_id, salesman_name, city, supervisor_id) FROM stdin;
S001	Sachin Jadhav	Mumbai	S002
S002	Adika Singh	Pune	S004
S003	Vijay More	Delhi	S002
S004	Atul Kale	Mumbai	S004
\.


--
-- TOC entry 4872 (class 2606 OID 24629)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4878 (class 2606 OID 24647)
-- Name: emp emp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_pkey PRIMARY KEY (emp_id);


--
-- TOC entry 4874 (class 2606 OID 24635)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (customer);


--
-- TOC entry 4880 (class 2606 OID 24653)
-- Name: salary salary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salary
    ADD CONSTRAINT salary_pkey PRIMARY KEY (emp_id);


--
-- TOC entry 4876 (class 2606 OID 24641)
-- Name: salesman salesman_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesman
    ADD CONSTRAINT salesman_pkey PRIMARY KEY (emp_id);


-- Completed on 2026-04-01 09:18:07

--
-- PostgreSQL database dump complete
--

\unrestrict BIwcOWExLRMzjSehPAl8bs9HQhKKEWfAdolpPbD4j4fBYJA3EUe7Ot81pBGtO0i

--
-- Database "SQL Projects" dump
--

--
-- PostgreSQL database dump
--

\restrict yeh8rrVmUOT1fcxANvRgjFWCjXA3qhO7DPa5fCacTNBsfCqqq9ZFTt8OG1xNU34

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-01 09:18:07

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
-- TOC entry 5050 (class 1262 OID 16411)
-- Name: SQL Projects; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "SQL Projects" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE "SQL Projects" OWNER TO postgres;

\unrestrict yeh8rrVmUOT1fcxANvRgjFWCjXA3qhO7DPa5fCacTNBsfCqqq9ZFTt8OG1xNU34
\encoding SQL_ASCII
\connect -reuse-previous=on "dbname='SQL Projects'"
\restrict yeh8rrVmUOT1fcxANvRgjFWCjXA3qhO7DPa5fCacTNBsfCqqq9ZFTt8OG1xNU34

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
-- TOC entry 220 (class 1259 OID 16413)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    book_id integer NOT NULL,
    title character varying(100),
    author character varying(100),
    genre character varying(50),
    published_year integer,
    price numeric(10,2),
    stock integer
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16412)
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.books_book_id_seq OWNER TO postgres;

--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 219
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;


--
-- TOC entry 222 (class 1259 OID 16421)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customers_id integer CONSTRAINT customers_customer_id_not_null NOT NULL,
    name character varying(100),
    email character varying(100),
    phone character varying(15),
    city character varying(50),
    country character varying(150),
    gender integer,
    salary integer
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16472)
-- Name: customers2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers2 (
    customers_id integer,
    name character varying(100),
    email character varying(100),
    phone character varying(15),
    city character varying(50),
    country character varying(150),
    gender integer,
    salary integer
);


ALTER TABLE public.customers2 OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16478)
-- Name: customers3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers3 (
    customers_id integer,
    name character varying(100),
    email character varying(100),
    phone character varying(15),
    city character varying(50),
    country character varying(150)
);


ALTER TABLE public.customers3 OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16483)
-- Name: customers4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers4 (
    customers_id integer,
    name character varying(100),
    email character varying(100),
    phone character varying(15),
    city character varying(50),
    country character varying(150),
    gender integer,
    salary integer
);


ALTER TABLE public.customers4 OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16420)
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_customer_id_seq OWNER TO postgres;

--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 221
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customers_id;


--
-- TOC entry 224 (class 1259 OID 16445)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer,
    book_id integer,
    order_date date,
    quantity integer,
    total_amount numeric(10,2)
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16444)
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_order_id_seq OWNER TO postgres;

--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 223
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- TOC entry 4878 (class 2604 OID 16416)
-- Name: books book_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- TOC entry 4879 (class 2604 OID 16424)
-- Name: customers customers_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN customers_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- TOC entry 4880 (class 2604 OID 16448)
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- TOC entry 5037 (class 0 OID 16413)
-- Dependencies: 220
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (book_id, title, author, genre, published_year, price, stock) FROM stdin;
2	Persevering reciprocal knowledge user	Mario Moore	Fantasy	1971	50.80	19
3	Streamlined coherent initiative	Derrick Howard	Non-Fiction	1913	30.75	27
4	Customizable 24hour product	Christopher Andrews	Fiction	2020	58.52	8
5	Adaptive 5thgeneration encoding	Juan Miller	Fantasy	1956	25.95	16
7	Open-architected exuding structure	Jacqueline Young	Romance	1927	58.63	95
8	Persistent local encoding	Troy Cox	Science Fiction	2019	63.99	84
9	Optimized interactive challenge	Colin Buckley	Fantasy	1987	29.33	70
10	Ergonomic national hub	Samantha Ruiz	Mystery	2015	39.63	25
11	Secured zero tolerance time-frame	Denise Barnes	Fantasy	1998	50.95	10
12	Polarized optimal array	Destiny Scott	Non-Fiction	1989	42.43	63
13	Adaptive 5thgeneration orchestration	Jaclyn Miller	Romance	1913	29.04	99
14	Re-engineered demand-driven parallelism	Jeremy Hayes	Science Fiction	1933	21.04	95
15	User-friendly motivating strategy	Keith Smith	Non-Fiction	1997	38.83	58
75	Multi-layered fresh-thinking solution	James Buckley	Science Fiction	1912	62.11	3
76	Innovative directional matrix	David Castaneda	Romance	2009	56.33	9
77	Cross-platform asynchronous encryption	Michelle Edwards	Fantasy	1935	59.28	88
78	Synergized mobile architecture	Gregory Perez	Romance	1988	28.07	86
79	Extended actuating encryption	Kylie Brown	Romance	1935	47.48	4
80	Compatible 24/7 forecast	Michael Anderson	Science Fiction	1985	49.84	19
81	Team-oriented logistical analyzer	Scott Gentry	Science Fiction	2010	59.19	13
82	Optimized multi-state capacity	Sean Griffin	Non-Fiction	2001	60.70	38
148	Upgradable contextually-based hierarchy	Jared Reyes	Fantasy	1941	27.25	97
151	Innovative real-time neural-net	David Miller	Non-Fiction	1998	48.87	38
152	Advanced dynamic complexity	Elizabeth Ayala	Fantasy	1983	61.77	84
153	Synergistic needs-based capability	Aaron Alvarez	Science Fiction	1950	23.05	52
154	Horizontal hybrid forecast	Alexander Wallace	Mystery	1919	32.44	19
155	Optimized content-based standardization	Timothy Adams	Science Fiction	1901	64.96	88
156	Synergistic grid-enabled website	Brandon Black	Fiction	1953	46.68	34
158	Digitized optimal intranet	James Silva	Mystery	1919	39.69	40
160	Digitized cohesive emulation	Jared Cortez	Science Fiction	1924	49.48	65
161	Focused high-level strategy	Stephanie Sloan	Fantasy	1963	36.60	11
162	Centralized maximized database	Tracy Pace	Mystery	1981	63.84	64
222	Virtual fault-tolerant model	Scott Wells	Science Fiction	1928	44.59	75
223	Virtual holistic Internet solution	Lauren Merritt	Mystery	1944	21.52	95
224	Multi-channeled coherent protocol	Joseph Jensen	Non-Fiction	2007	57.15	80
226	Devolved optimizing leverage	Thomas Anderson	Fantasy	1913	42.22	68
227	Centralized context-sensitive functionalities	Virginia Levine	Non-Fiction	1900	53.17	78
228	Managed object-oriented hardware	Ashley Gonzalez	Romance	1975	45.75	5
229	Managed hybrid array	Charles Smith	Romance	1965	35.46	78
230	Optional cohesive methodology	Jerome Lee	Science Fiction	1977	21.10	59
231	Polarized maximized challenge	Steven Davis	Non-Fiction	1986	24.37	84
232	Monitored 24/7 groupware	Vicki Mcgee	Science Fiction	1925	24.62	1
295	Persistent disintermediate artificial intelligence	Todd Davis	Non-Fiction	1977	43.66	65
296	Triple-buffered heuristic adapter	Jennifer Johnson	Non-Fiction	1949	26.49	49
297	Advanced well-modulated architecture	Chad Craig	Fiction	2016	50.65	2
298	Assimilated composite archive	Mark Gibson	Fiction	1957	61.66	62
299	Centralized disintermediate array	Donald Wiggins	Fiction	1909	43.19	73
300	Integrated fresh-thinking toolset	Joseph Jensen	Non-Fiction	1962	41.87	77
301	Polarized high-level installation	John Davidson	Fantasy	1975	36.66	77
302	Ergonomic leadingedge portal	James Curtis	Fiction	1981	43.67	92
303	Open-source background extranet	Meredith Miller	Romance	1968	21.57	77
304	Front-line high-level emulation	Amber Joyce	Non-Fiction	1935	28.48	23
370	Synergistic user-facing frame	David Olson	Non-Fiction	1977	58.91	97
371	Multi-tiered methodical paradigm	Vicki Vance	Non-Fiction	1959	32.40	43
372	Realigned mobile focus group	Michael Jackson	Fiction	1905	32.73	42
373	Exclusive dynamic approach	Michelle Mercado	Fiction	1911	54.09	49
374	Operative non-volatile parallelism	Wendy Walker	Science Fiction	1987	39.26	72
444	Open-source radical capability	Victoria Galloway	Romance	1907	27.73	26
445	Advanced reciprocal time-frame	Pamela Crawford	Non-Fiction	2007	28.61	71
446	Open-architected 3rdgeneration budgetary management	Carolyn Schmidt	Science Fiction	1909	49.49	7
16	Vision-oriented tangible project	Christopher Price	Mystery	1941	25.07	8
17	Reduced secondary core	Benjamin Peters	Fantasy	1966	20.37	45
18	Adaptive 4thgeneration concept	Hector Palmer	Non-Fiction	2021	54.47	32
19	Progressive asymmetric Internet solution	Sean Miller	Science Fiction	1990	26.31	1
20	Face-to-face systematic throughput	Teresa Brennan	Non-Fiction	1978	63.13	64
22	Multi-layered optimizing migration	Wesley Escobar	Fiction	1908	54.23	78
23	Reverse-engineered context-sensitive hardware	Christina Hernandez	Mystery	1967	53.55	70
26	Multi-channeled multi-tasking capability	Patricia Buck	Science Fiction	1964	36.05	41
27	Team-oriented human-resource access	Cody Shah	Fantasy	1927	57.14	76
28	Expanded analyzing portal	Lisa Coffey	Fiction	1941	52.51	79
29	Quality-focused multi-tasking challenge	Katrina Underwood	Fiction	1905	46.12	100
31	Implemented encompassing conglomeration	Melissa Taylor	Fiction	2010	36.23	44
32	Synergistic dedicated concept	Lisa Bailey	Mystery	2021	36.56	100
33	Team-oriented empowering synergy	Sandra Williams	Non-Fiction	2023	50.06	49
34	Stand-alone multimedia throughput	Jason Jefferson	Fantasy	1939	31.49	43
35	Grass-roots solution-oriented adapter	William Turner	Non-Fiction	2018	46.81	85
36	Open-source needs-based secured line	Jacob French	Mystery	1949	49.51	86
37	Up-sized tertiary archive	Todd Kennedy	Fantasy	1955	28.08	3
38	Pre-emptive asynchronous leverage	Courtney Nichols	Fantasy	2022	31.47	72
39	Optimized national process improvement	Megan Goodwin	Fiction	1978	25.99	42
40	Adaptive didactic interface	Natalie Gonzalez	Fiction	1923	40.97	94
41	Integrated grid-enabled superstructure	Katherine Robbins	Science Fiction	1950	58.09	78
42	Pre-emptive interactive focus group	Shannon Reese	Mystery	1937	63.35	82
43	Function-based zero-defect initiative	Daniel Nunez	Romance	1952	62.39	61
44	Networked systemic implementation	Ryan Frank	Science Fiction	1965	28.55	0
45	Centralized cohesive website	Luis Rogers	Mystery	1984	40.49	59
46	Distributed attitude-oriented open system	Jamie Lambert	Romance	1923	48.17	75
198	Persevering tertiary product	Michael Lee	Biography	1917	47.38	80
47	Reverse-engineered directional conglomeration	John Christian	Fiction	2006	35.37	90
50	Face-to-face responsive secured line	Lindsey Rodriguez	Fantasy	1970	52.00	63
52	Triple-buffered neutral adapter	Kristi Phillips	Science Fiction	2003	31.53	85
54	Progressive bi-directional methodology	Adrian Taylor	Fantasy	2015	59.78	27
55	Streamlined well-modulated migration	Isabel Wood	Romance	1934	42.32	66
56	Integrated intermediate Internet solution	Stacy Cabrera	Mystery	1976	22.87	67
57	Team-oriented 3rdgeneration encryption	Sabrina Hernandez DVM	Romance	1962	38.59	27
58	Profound logistical capacity	Ray Walsh	Romance	1995	49.54	14
59	Distributed directional adapter	Sarah Smith	Mystery	2012	41.00	41
61	Future-proofed upward-trending process improvement	Gregory Wallace	Non-Fiction	1934	56.05	10
62	Re-contextualized real-time strategy	Nicole Lynch	Fiction	1953	41.34	23
63	Polarized heuristic database	Franklin Mack	Fiction	1989	37.38	56
64	Polarized hybrid emulation	Christopher Washington	Science Fiction	1963	39.10	86
65	Total explicit open architecture	Zachary Williams	Science Fiction	1982	37.70	7
66	Synergized bandwidth-monitored workforce	Amy Marks	Fantasy	1961	43.29	93
69	Cloned impactful solution	Nichole Smith	Fantasy	1961	23.79	50
70	Customer-focused context-sensitive process improvement	Mary Warren	Science Fiction	2021	38.45	19
72	Networked contextually-based throughput	Andrea Eaton	Fantasy	1959	61.54	65
73	Realigned multi-tasking installation	Patrick Contreras	Mystery	1933	36.23	39
21	Down-sized static interface	Todd Brown	Biography	1925	72.13	87
84	Stand-alone 24hour interface	James Ortiz	Romance	1980	59.59	20
85	Enhanced impactful system engine	Bianca Matthews	Science Fiction	1939	34.43	29
86	Re-engineered 24/7 projection	Kathryn Williams	Non-Fiction	1948	40.51	44
87	Decentralized actuating analyzer	Robert Johnson	Fantasy	1986	49.84	98
88	Robust tangible hardware	Paul Miles	Non-Fiction	1999	55.22	32
89	Mandatory exuding monitoring	Vincent Miles	Romance	1959	29.72	16
90	Business-focused eco-centric help-desk	Sarah Miller	Science Fiction	1965	31.56	10
91	Integrated exuding application	Elizabeth Morrison	Romance	1923	42.82	81
92	Switchable context-sensitive productivity	Ashley Rodriguez	Fantasy	1911	49.21	58
93	Object-based multimedia algorithm	Frank Aguilar	Non-Fiction	2009	32.43	37
94	Open-source 5thgeneration alliance	Laurie Allen	Science Fiction	2001	31.86	75
96	Up-sized impactful artificial intelligence	Rebecca Delgado	Science Fiction	1913	27.55	73
97	Open-architected stable solution	Chad Nichols	Science Fiction	2017	60.74	70
98	Digitized encompassing definition	Thomas Gonzales	Fantasy	1996	61.71	83
99	Optimized heuristic challenge	Tracy Hendrix	Science Fiction	1962	61.93	26
100	Synchronized client-server service-desk	James Alvarado	Fiction	1906	64.89	29
101	Multi-tiered context-sensitive hub	Amanda Knight	Mystery	1923	63.49	40
102	Ergonomic stable open architecture	Robin Brown	Romance	1955	55.22	31
103	Upgradable foreground open system	Kathryn Lopez	Science Fiction	1907	58.25	11
105	Expanded explicit neural-net	Melissa Tucker	Romance	2005	45.02	4
106	Cross-group zero administration utilization	Mary Barnett	Mystery	1988	44.58	80
107	Front-line client-driven projection	Amy Andrews	Science Fiction	1996	34.85	44
108	Future-proofed fault-tolerant encoding	Larry Andrews	Science Fiction	1918	40.38	28
109	Operative foreground project	Valerie Mcfarland	Fantasy	1970	23.54	60
110	Re-contextualized radical matrix	Michael Howell	Fantasy	1903	45.15	2
111	Switchable full-range definition	Joseph Rivas	Mystery	1932	55.29	54
112	Distributed secondary software	Erik Reynolds	Romance	1969	23.02	21
113	Versatile value-added structure	Jackson Hill	Science Fiction	1936	21.38	76
114	Open-architected scalable knowledge user	Mitchell Larson	Mystery	2016	22.28	2
116	Multi-tiered foreground contingency	Jamie Gates	Fiction	1938	56.82	50
117	Self-enabling contextually-based frame	Lori Taylor	Science Fiction	1966	29.87	20
118	Profound didactic leverage	Andrew Murphy	Fantasy	2017	20.52	22
119	Switchable modular moratorium	Tonya Saunders	Romance	2010	64.88	76
120	Integrated secondary access	Sheena Harris	Non-Fiction	1984	63.03	93
122	Profound leadingedge capability	Mary French	Mystery	1992	45.75	17
123	Enterprise-wide dedicated knowledge user	Jordan Merritt	Mystery	1938	52.60	16
124	Seamless demand-driven focus group	Matthew Fuentes	Mystery	1968	42.10	11
125	Public-key analyzing Graphic Interface	Abigail Madden	Fiction	1990	47.41	16
126	Persevering national encoding	Paul Moore	Mystery	1949	40.33	78
127	Business-focused real-time benchmark	David Nelson	Science Fiction	1997	26.66	0
128	Visionary modular productivity	Ruben Nichols	Romance	1949	39.04	35
129	Decentralized multi-tasking data-warehouse	Dr. Kelly Armstrong	Romance	1959	55.74	29
130	Realigned context-sensitive pricing structure	Jason Rodriguez	Fiction	2004	21.64	90
131	Proactive 6thgeneration methodology	Betty Carroll	Mystery	1902	42.28	11
132	Multi-lateral methodical implementation	Lauren Moore	Fantasy	1907	35.46	53
133	Reduced discrete leverage	Zachary Buchanan	Mystery	1911	35.96	90
134	Polarized bandwidth-monitored throughput	Linda Newman	Fiction	1955	50.72	49
135	Customizable bi-directional focus group	Kristin Farley	Mystery	2001	30.13	83
136	Stand-alone intangible installation	Morgan Mata	Romance	2012	24.89	84
138	Profound zero-defect knowledgebase	Carolyn Garcia	Fantasy	1978	39.77	8
141	Exclusive hybrid monitoring	Dr. Heather Boyd	Romance	1909	64.42	36
142	Multi-tiered responsive parallelism	Amanda Wilson	Fiction	1940	63.96	11
143	Networked multimedia support	Nancy Goodman	Fiction	2012	58.65	50
144	Future-proofed scalable software	Matthew Wolf	Fiction	1945	34.27	90
145	Phased eco-centric array	Barry Bennett	Fantasy	1905	37.53	57
146	Stand-alone hybrid framework	Ethan Kennedy	Non-Fiction	1903	29.50	91
147	Innovative empowering concept	Brad Vasquez	Science Fiction	1964	60.20	74
163	Object-based eco-centric challenge	Douglas Mccarthy	Non-Fiction	1905	34.11	0
164	Expanded scalable time-frame	Ashley Mason	Non-Fiction	2013	56.83	4
165	Exclusive uniform superstructure	Carl Cantrell	Mystery	1912	47.10	19
166	Customizable discrete Graphical User Interface	Rebecca Alexander	Romance	1951	26.02	56
167	User-friendly radical standardization	Leon Davis	Science Fiction	1954	51.02	55
168	Vision-oriented radical capability	Tracy Parker	Mystery	2018	29.13	61
170	Optional stable matrix	Michael Wells	Non-Fiction	1947	26.28	62
171	Integrated hybrid collaboration	Sarah Vincent	Science Fiction	2004	47.15	99
173	Ergonomic foreground Graphic Interface	Patrick Williams	Fiction	1948	21.07	100
174	Pre-emptive executive knowledge user	Rebecca Mann	Mystery	1951	52.83	18
176	Fundamental system-worthy parallelism	Cameron Garcia	Fantasy	1924	31.11	52
177	Visionary exuding product	Christopher Johnson	Romance	1904	51.20	3
178	Organized even-keeled conglomeration	Christopher Ray	Science Fiction	1970	42.89	31
179	Innovative didactic capacity	Matthew Vazquez	Science Fiction	2009	63.21	66
180	Front-line discrete complexity	David Rodriguez	Science Fiction	2001	40.09	14
181	Balanced object-oriented Graphic Interface	Dylan Christensen	Romance	1987	53.73	85
182	Reduced bottom-line forecast	Virginia Butler	Mystery	2014	38.76	9
183	Total exuding project	Richard Curtis	Mystery	2001	30.40	6
184	Enterprise-wide solution-oriented challenge	Megan Jones	Fantasy	1978	20.25	22
185	Networked object-oriented definition	Kelly Vazquez	Fiction	1940	36.98	10
186	Sharable executive conglomeration	Pam Price	Mystery	1938	56.33	4
187	Total well-modulated groupware	Kenneth Phillips	Fiction	1989	37.98	7
188	Switchable value-added conglomeration	Clinton Mcintyre MD	Science Fiction	2014	35.14	73
189	Grass-roots eco-centric task-force	Brandon Munoz	Mystery	1989	28.65	88
190	Cross-platform even-keeled focus group	Andrew Parker	Science Fiction	2016	53.36	4
191	Multi-layered 24hour infrastructure	Casey Moreno	Romance	1911	57.19	8
192	Phased solution-oriented collaboration	Nicholas Roth	Romance	1930	63.37	71
193	Customer-focused tertiary methodology	Justin Garcia	Fantasy	1954	44.54	100
194	Digitized content-based time-frame	Deborah White	Science Fiction	1982	48.88	64
196	Phased context-sensitive task-force	Rachel Gibbs	Science Fiction	1934	21.69	24
197	Organized content-based core	Brandon Martin	Mystery	1980	58.03	9
199	Configurable fault-tolerant interface	Mark Parker	Mystery	1923	57.81	1
200	Right-sized modular synergy	Marie Smith	Science Fiction	1939	24.96	32
201	Secured 24/7 groupware	Alexander Smith	Non-Fiction	1915	52.25	11
202	Balanced optimal open architecture	Lindsey Johnson	Mystery	1964	27.26	32
203	Self-enabling mobile software	Stephanie Frost	Non-Fiction	2003	42.22	52
204	Business-focused foreground model	Heather Zavala	Romance	1921	41.52	59
205	De-engineered attitude-oriented software	Anthony Martin	Fantasy	1990	20.83	8
206	Digitized executive flexibility	Lisa Lopez	Non-Fiction	1960	53.01	84
207	Total intangible application	Michael Booker	Non-Fiction	1922	21.67	53
208	Synergized intangible methodology	Ellen Doyle	Fantasy	1917	40.00	83
209	Distributed modular capability	Nicole Berger	Mystery	1979	63.67	63
210	Centralized 6thgeneration model	Yolanda Mclean	Science Fiction	1971	55.93	51
212	Diverse 4thgeneration knowledge user	Lindsey Lucas	Science Fiction	1950	33.69	35
213	Synchronized transitional alliance	Joseph Holt	Mystery	1903	21.79	35
214	Fundamental methodical open architecture	Jeffery Green	Fiction	2005	33.16	47
216	Down-sized mobile extranet	Mary Carter	Mystery	2019	39.63	92
217	Open-source 3rdgeneration secured line	Christina Terrell	Non-Fiction	2019	50.38	98
218	User-friendly tertiary forecast	Malik Stephens	Mystery	1948	20.36	34
219	Reactive bandwidth-monitored architecture	Michele Williams	Mystery	1961	35.90	32
220	Multi-lateral zero-defect matrix	Nicole Hughes	Fiction	1904	31.51	60
233	Team-oriented client-driven adapter	Adrian Avery	Mystery	2011	25.39	47
234	Total reciprocal monitoring	Reginald Chavez	Science Fiction	2006	22.15	9
235	Organized secondary protocol	Andrew Brown	Fantasy	1957	30.66	19
236	Assimilated disintermediate ability	Christopher Anderson	Romance	1948	25.78	87
237	Down-sized holistic hardware	Paul Williams	Mystery	1905	55.43	42
238	Optimized even-keeled analyzer	Sherri Griffith	Fantasy	1975	63.97	72
239	Devolved encompassing intranet	Linda Rasmussen	Science Fiction	1922	59.51	55
240	Stand-alone content-based hub	Lisa Ellis	Fantasy	1957	64.90	41
241	Up-sized fault-tolerant hub	Taylor Wang	Fantasy	2015	29.06	38
242	Business-focused responsive parallelism	Amy Reyes	Mystery	1954	48.79	38
243	Automated systemic toolset	Tiffany Conley	Fantasy	1953	23.87	65
244	Managed radical superstructure	David Hoover	Science Fiction	1968	22.37	88
245	Automated client-driven open architecture	Jose Brown	Non-Fiction	2000	31.06	18
247	Innovative actuating instruction set	Ashley Hill	Science Fiction	1934	39.42	45
248	Cross-group responsive protocol	Cathy Knight	Science Fiction	2021	61.99	68
249	Fundamental national infrastructure	Nancy Austin	Fiction	1928	47.95	58
250	Devolved incremental intranet	Jessica Lopez	Science Fiction	1918	27.65	13
251	Seamless 5thgeneration challenge	Michelle Harris	Fiction	1906	23.87	98
252	Down-sized high-level encoding	Gabriela Russell MD	Fiction	1902	27.62	43
253	Horizontal didactic structure	Robert Rodriguez	Fiction	1961	26.66	21
254	Team-oriented bandwidth-monitored project	Jacqueline Ramsey	Mystery	1916	57.57	100
255	Switchable impactful superstructure	Amber Wells	Science Fiction	1906	39.51	24
257	Multi-channeled 24/7 functionalities	William Pierce	Romance	1935	36.14	33
258	Robust systemic Graphical User Interface	Kyle Carter	Mystery	1916	24.95	6
259	Pre-emptive incremental secured line	Jason Perez	Science Fiction	1994	29.48	1
260	Business-focused methodical application	Brian King	Fiction	1907	64.59	10
261	Intuitive content-based toolset	Christopher Fuentes	Science Fiction	1964	29.25	52
263	Right-sized bifurcated definition	Kayla Wilkinson	Fiction	1965	24.79	3
265	Adaptive homogeneous moratorium	Jennifer Johnson	Non-Fiction	1926	61.60	66
266	Persevering disintermediate application	Jeremy Bailey	Non-Fiction	1927	48.29	92
269	Decentralized disintermediate Internet solution	Jerry Fisher	Romance	1963	48.08	42
270	Organized logistical architecture	Christopher Martinez	Romance	1919	28.17	25
271	Intuitive intangible circuit	Robin Mejia	Science Fiction	1974	37.08	82
272	Intuitive 4thgeneration intranet	Daniel Gillespie	Mystery	1959	20.16	79
273	Devolved zero administration process improvement	Emily James	Romance	1929	27.43	23
274	Automated systemic functionalities	Matthew Thomas	Fiction	1903	63.80	72
276	Profound radical access	Ryan Clark	Romance	1911	34.85	32
278	Exclusive asymmetric installation	Benjamin Flores	Fiction	1901	63.61	69
279	Upgradable radical adapter	Elizabeth Wilson	Non-Fiction	2008	45.50	28
280	Balanced next generation forecast	Aaron Rangel	Non-Fiction	1977	31.78	97
281	Fundamental object-oriented productivity	Robert Hatfield	Mystery	1931	31.34	83
283	Phased value-added access	Jessica Johnson	Non-Fiction	1903	32.00	94
284	Progressive 24hour artificial intelligence	Peter Cabrera	Science Fiction	1906	30.21	99
285	Devolved secondary function	Sheila Nelson	Science Fiction	1914	42.65	34
286	Sharable client-driven contingency	Joseph Crawford	Non-Fiction	1900	23.29	84
287	Exclusive encompassing pricing structure	Cynthia Diaz	Science Fiction	1994	55.19	32
288	Re-contextualized real-time Graphic Interface	Erica Parker	Science Fiction	1908	42.91	9
289	Inverse asynchronous superstructure	Lacey Lang	Mystery	1959	35.12	66
290	Expanded analyzing forecast	Holly Golden	Mystery	1988	58.81	31
292	Fully-configurable mission-critical artificial intelligence	Rachel Adkins	Mystery	2017	41.94	2
293	Secured object-oriented secured line	Megan Kennedy	Fantasy	1955	32.93	58
294	Pre-emptive clear-thinking workforce	Craig Sanchez	Mystery	1964	57.53	29
225	Synergized foreground website	Carrie Ware	Biography	1976	61.04	26
305	Down-sized bandwidth-monitored open system	Susan Robbins	Fantasy	1999	46.66	27
307	Expanded local infrastructure	Valerie Moore	Mystery	1914	29.43	7
308	Expanded maximized collaboration	Amanda Moore	Romance	2009	35.75	35
309	Mandatory homogeneous ability	George Sanchez	Fantasy	1939	26.74	77
310	Reduced well-modulated database	Raymond Nicholson	Non-Fiction	2021	62.92	40
313	Profound client-driven paradigm	Nicole Olson	Non-Fiction	1997	62.16	53
314	Decentralized discrete archive	Jordan Holt	Romance	1914	24.59	74
315	Virtual exuding Internet solution	Anne George	Fiction	2012	57.90	40
316	Multi-tiered client-server methodology	Rebecca Chavez	Fantasy	1992	23.81	74
317	Upgradable client-driven ability	Patricia Kennedy	Science Fiction	1961	44.20	13
318	Cloned upward-trending installation	Sherry Kim	Fantasy	1921	55.11	94
319	Distributed disintermediate groupware	Michael Mckenzie	Fantasy	1964	57.61	50
320	Ergonomic clear-thinking interface	Judith Gutierrez	Fantasy	1950	20.07	55
322	Customizable object-oriented paradigm	Gail Lawson	Non-Fiction	1932	41.49	42
324	Diverse dynamic contingency	James Duran	Fiction	1993	61.08	23
325	Proactive secondary help-desk	William Drake	Romance	1981	55.40	50
326	Networked composite Internet solution	Victoria Wilson	Non-Fiction	1903	30.15	78
327	Implemented zero-defect product	Kim Lee	Fiction	1984	36.40	29
328	Sharable intermediate task-force	Andrew Cervantes	Science Fiction	1940	25.26	28
329	Multi-tiered dedicated encryption	Jacob Fischer	Fiction	1973	53.49	27
331	Profit-focused systematic project	Dennis Hooper	Fiction	1936	30.36	89
333	Advanced responsive extranet	Mark Chavez DDS	Fantasy	1959	42.76	29
334	Synergistic fault-tolerant attitude	Robert Bullock	Mystery	1913	50.68	88
335	Adaptive bi-directional implementation	Alexandra Cox	Romance	1938	62.29	23
336	Organized high-level algorithm	Grace Waller	Fantasy	2006	39.08	26
337	Progressive impactful structure	Karen Moreno	Fantasy	1901	49.28	44
338	Seamless analyzing encoding	Kevin Garcia	Mystery	1949	25.17	61
339	Centralized uniform extranet	Steven Mcdonald	Romance	2014	58.51	68
340	Proactive system-worthy orchestration	Robert Scott	Mystery	1907	64.98	88
341	Robust multimedia support	Scott Murphy	Non-Fiction	1933	34.59	42
342	Digitized regional monitoring	Kenneth Finley	Fiction	1969	32.11	84
343	De-engineered grid-enabled secured line	Marissa Smith	Mystery	2006	58.03	86
344	Optimized holistic approach	Brittney Brown	Romance	1990	54.63	27
345	Function-based disintermediate intranet	Michael Johnson	Science Fiction	1920	40.89	78
346	Object-based asynchronous moratorium	Jennifer Oliver	Fantasy	1965	24.97	23
347	Synergistic exuding website	Angelica Elliott	Mystery	1906	21.10	86
348	Object-based contextually-based model	Amber Patterson	Romance	1907	27.62	22
349	Monitored interactive focus group	Thomas Chung	Non-Fiction	2013	59.36	51
350	Exclusive 24hour groupware	Brian Baker	Romance	2008	46.67	49
351	Decentralized demand-driven middleware	Carmen Johnson	Fantasy	1972	49.98	42
352	Intuitive intermediate paradigm	Scott Bowman MD	Science Fiction	1927	21.01	97
353	Public-key intangible frame	Katherine Fry	Romance	1984	61.97	41
354	Enhanced holistic solution	Jeremy Hughes	Mystery	1927	36.09	41
355	Reduced systematic forecast	Christine Martin	Romance	1987	23.10	34
357	Intuitive value-added product	Hunter Odom	Non-Fiction	1983	26.85	27
359	Secured maximized time-frame	Megan Burton	Romance	1970	43.19	99
360	Profound tertiary encoding	Jennifer Jones	Non-Fiction	2020	64.34	73
361	Optional object-oriented pricing structure	Jenna Johnson	Romance	1957	54.75	71
362	Profit-focused multimedia throughput	Andrea Lucas	Fiction	1933	44.43	64
363	Proactive explicit capability	Tony Curtis	Romance	1915	22.48	52
364	Persevering scalable leverage	Angel Shepherd	Science Fiction	1923	58.82	86
365	Synchronized impactful synergy	Megan Gutierrez	Science Fiction	1955	25.64	99
366	Re-contextualized national secured line	Robert Wilson	Fiction	1922	28.10	4
367	Universal analyzing support	Eric Taylor	Fiction	1940	44.32	35
375	Fully-configurable disintermediate solution	Cynthia Jones	Mystery	1993	49.15	55
376	Mandatory full-range middleware	Debra Horn	Romance	1997	44.26	76
377	Realigned 6thgeneration infrastructure	Jennifer Hughes	Mystery	2007	54.79	55
378	Future-proofed heuristic function	Samantha Mcclain	Romance	1903	21.01	0
379	Digitized zero-defect access	Angela Stewart	Non-Fiction	1916	20.70	95
380	Universal fault-tolerant array	Michael Johnson	Science Fiction	1984	28.17	78
381	Total foreground alliance	Anthony Wilson	Non-Fiction	1977	25.60	14
382	Implemented background approach	Megan King	Romance	2012	48.19	27
383	Optional clear-thinking task-force	Samuel Morales	Mystery	1927	57.17	71
384	Multi-channeled needs-based intranet	Molly Roberts	Romance	1911	48.92	46
385	Right-sized holistic productivity	Geoffrey Burnett	Fantasy	1962	42.25	65
386	Synchronized 24/7 analyzer	Dawn Hart	Romance	1944	21.36	71
387	Grass-roots disintermediate analyzer	Amber Davis	Non-Fiction	1979	62.42	6
388	Distributed transitional solution	Marilyn Camacho	Science Fiction	1917	41.62	5
389	Robust holistic solution	Jennifer Nelson	Romance	1928	40.39	89
391	Face-to-face 6thgeneration attitude	Erica Olson	Romance	2009	48.42	35
392	Horizontal hybrid emulation	Jeanne Brown	Fantasy	1963	50.52	86
393	Triple-buffered multimedia access	Nathan Ashley	Fantasy	1987	59.00	44
394	Integrated well-modulated Graphic Interface	Karen Reese	Fantasy	1994	42.15	59
395	Proactive impactful attitude	Travis Thompson	Non-Fiction	1945	49.05	19
396	Assimilated local complexity	Paul Smith	Mystery	1967	37.34	97
397	Object-based secondary emulation	Angela Richard	Science Fiction	1969	43.15	50
398	Programmable context-sensitive forecast	Evelyn Cox	Mystery	1998	48.41	50
400	Multi-channeled context-sensitive adapter	Jeremiah Dyer	Fantasy	1915	49.57	47
401	Managed eco-centric hierarchy	Debbie Lopez	Mystery	1997	46.72	37
402	Streamlined multimedia capability	Anthony Vaughn	Mystery	1982	36.38	24
403	Persevering incremental strategy	David Miller	Fiction	1928	30.01	82
404	Face-to-face multi-tasking Internet solution	Kevin Pittman	Mystery	1915	30.65	69
405	Fundamental regional capacity	Samantha Hawkins	Mystery	1916	22.42	98
406	De-engineered methodical capacity	James Gonzalez	Fiction	2006	50.79	50
407	Mandatory executive groupware	Michelle Bell	Romance	1947	57.19	50
408	Decentralized tertiary customer loyalty	William Roberts	Fiction	1946	25.07	2
409	Innovative directional project	Jerry Burch	Mystery	1941	36.56	49
410	Team-oriented tangible ability	Veronica Hebert	Science Fiction	2005	59.33	42
411	Profit-focused solution-oriented open system	Aaron Hall Jr.	Romance	2012	30.03	83
413	Cross-platform grid-enabled capacity	Kimberly James	Fantasy	1997	25.35	89
414	Organized directional Internet solution	Amanda Carrillo	Fiction	1999	37.55	93
415	Enhanced next generation standardization	Anthony Nguyen	Fantasy	1976	44.51	18
416	Expanded maximized portal	Tina Stevenson	Science Fiction	2018	64.10	96
417	Persistent radical neural-net	Christopher Jones	Science Fiction	1945	61.61	48
418	Proactive client-driven knowledgebase	Jeremy Ware	Fantasy	1927	46.88	83
419	Enterprise-wide multimedia initiative	Theresa Rice	Non-Fiction	1981	24.28	25
421	Exclusive zero administration superstructure	John Pearson	Fiction	1901	55.05	58
422	Grass-roots systematic moderator	Joyce Patton	Fantasy	1919	60.91	39
423	Implemented systematic leverage	Daisy Johnson	Romance	1943	40.63	14
424	Object-based secondary knowledgebase	Eric Shepherd	Mystery	1935	55.50	84
425	Synergized analyzing solution	Tammy Cervantes	Non-Fiction	1990	39.23	45
427	Ergonomic zero-defect software	Denise Mclaughlin	Fantasy	1965	33.00	46
428	Innovative asymmetric utilization	Darryl Price	Romance	1966	37.73	66
429	Cross-platform 24hour artificial intelligence	Dawn Coleman	Romance	2002	57.58	95
430	Quality-focused methodical matrix	Dennis Hernandez	Mystery	1922	26.90	76
431	Synergized fresh-thinking monitoring	Christopher Dixon	Romance	1965	34.48	31
432	Horizontal disintermediate alliance	Rodney Ward	Non-Fiction	1951	23.84	55
433	Configurable 3rdgeneration synergy	Teresa Bell	Fantasy	1944	37.09	81
434	Monitored value-added focus group	Mary Pollard	Science Fiction	1942	60.58	4
435	Inverse grid-enabled attitude	Kara Schwartz	Fantasy	1939	42.76	10
436	Sharable heuristic conglomeration	Garrett Campbell	Mystery	1916	30.90	54
437	Customizable directional matrices	Alyssa Lopez	Fiction	1960	59.29	7
438	Synchronized mission-critical process improvement	Samantha Stewart	Science Fiction	1913	48.39	82
439	Monitored eco-centric framework	Kelly Rodriguez	Fiction	1970	31.00	94
440	Ergonomic disintermediate project	Jill Padilla	Non-Fiction	2000	42.42	68
441	Streamlined 6thgeneration collaboration	Susan Reeves	Science Fiction	2013	55.72	65
442	Enhanced grid-enabled budgetary management	Betty Cross	Non-Fiction	1993	63.48	93
443	Down-sized radical orchestration	Crystal Hall	Non-Fiction	1987	59.05	89
447	Enterprise-wide empowering circuit	Steven Hutchinson	Mystery	1906	51.25	9
448	Digitized uniform Internet solution	Douglas Malone	Mystery	1929	21.26	70
449	Universal homogeneous adapter	Gina Lopez	Romance	1966	55.17	1
450	Reactive high-level framework	Miguel Smith	Non-Fiction	1935	60.75	18
451	Re-contextualized logistical throughput	Danielle Alvarez	Romance	2009	20.63	87
452	Vision-oriented 5thgeneration analyzer	Amber Hayden	Romance	1909	55.78	5
453	Optional 6thgeneration task-force	Jesse Morgan	Non-Fiction	1996	63.55	65
455	Diverse zero tolerance service-desk	Ashley Jackson	Romance	1960	42.03	55
456	User-centric composite projection	Jordan West	Romance	1991	35.11	37
457	Configurable disintermediate extranet	Melissa Lewis	Mystery	1953	43.22	2
458	Cross-group analyzing matrix	Nancy Griffith	Fiction	1914	52.28	53
459	Customizable optimal infrastructure	Robert Garcia	Mystery	2013	50.77	45
460	Optimized human-resource forecast	Rachel Travis	Romance	1900	50.88	39
461	Cloned cohesive attitude	Daniel Walsh	Science Fiction	1969	24.60	39
462	Innovative 3rdgeneration database	Allison Contreras	Fantasy	1988	64.23	62
463	Re-engineered disintermediate definition	Cheryl Anderson	Fantasy	1911	26.99	36
464	Function-based human-resource migration	Lauren Hall	Non-Fiction	1998	53.54	12
465	Organic attitude-oriented support	Kayla Clarke	Non-Fiction	1920	39.93	78
466	Multi-channeled mission-critical initiative	Michelle Hanson	Fantasy	2015	52.17	93
467	Function-based dedicated frame	Larry Hunt	Romance	1979	28.82	96
468	Organized upward-trending parallelism	Nicole Davenport	Fantasy	1987	45.59	83
469	Automated 5thgeneration customer loyalty	Kimberly Shannon	Fantasy	1967	38.25	92
470	Function-based mobile neural-net	Christopher Gomez	Fantasy	1915	42.67	40
471	Cross-platform next generation website	Anna Roberts	Romance	1929	60.38	37
472	Stand-alone clear-thinking extranet	Craig Dominguez	Fiction	1942	43.09	9
473	Fully-configurable mobile solution	Cathy Stone	Fantasy	1964	45.26	72
474	Grass-roots static hub	Ryan Mcintyre	Mystery	2010	61.84	98
475	Stand-alone zero administration emulation	Michelle Lyons	Romance	1986	62.76	100
477	Distributed cohesive approach	Chris Brown	Romance	2019	42.71	17
478	Total logistical parallelism	Andrea Meyer	Science Fiction	1913	50.46	53
479	Balanced grid-enabled architecture	Christian Morales	Fiction	2009	53.27	60
480	Adaptive mobile toolset	Andrew James	Fiction	1940	53.15	75
481	Automated transitional hardware	Nicole Smith	Fiction	1980	25.55	77
482	Pre-emptive transitional contingency	Joseph Holt	Science Fiction	1965	46.96	33
483	Enterprise-wide analyzing alliance	Alicia Martin	Mystery	1931	29.03	46
484	User-centric discrete software	Emma Hudson	Non-Fiction	1991	52.51	37
485	Decentralized content-based access	Nancy Taylor	Mystery	1900	38.16	57
486	Monitored tangible extranet	Lisa Medina	Non-Fiction	2018	34.13	52
487	Self-enabling actuating monitoring	Allison Salas	Mystery	1921	54.26	26
488	Optimized attitude-oriented synergy	Cory Ross	Non-Fiction	1985	64.15	64
489	Enhanced system-worthy middleware	Roger Austin	Science Fiction	1906	49.02	49
490	Progressive client-server infrastructure	Philip Thompson	Non-Fiction	2019	27.88	40
491	Pre-emptive intangible adapter	Michael Hill	Fantasy	1910	29.87	2
492	Implemented next generation open architecture	Marcus Spencer	Science Fiction	1984	59.07	76
493	User-centric bi-directional application	Anthony Poole	Science Fiction	1956	43.08	89
494	Triple-buffered dedicated strategy	Kimberly Smith MD	Romance	1901	21.66	59
495	Horizontal background throughput	Billy Lopez	Fiction	1987	35.31	43
496	Decentralized radical forecast	James Adams	Science Fiction	1966	58.75	96
497	Function-based local installation	Craig Thompson	Science Fiction	1919	39.10	33
498	Secured 24/7 neural-net	Heather Marks	Non-Fiction	1975	25.88	22
500	Vision-oriented zero tolerance initiative	David Hatfield	Science Fiction	1921	30.94	64
1	Configurable modular throughput	Joseph Crane	Biography	1949	46.34	100
6	Advanced encompassing implementation	Bryan Morgan	Biography	1985	31.56	2
24	Ergonomic incremental hub	Tanya Mcdonald	Biography	1907	57.74	54
25	Devolved mobile conglomeration	Alexander Bailey	Biography	1984	33.55	79
30	Multi-layered global open system	Jose Meyer	Biography	2012	55.58	37
48	Multi-channeled 5thgeneration Internet solution	Jennifer Powell	Biography	1963	49.70	94
49	Robust attitude-oriented attitude	Zachary Hayes	Biography	1955	74.50	15
51	Visionary optimizing project	Douglas Bush	Biography	2022	71.30	95
53	Triple-buffered multi-tasking help-desk	Brian Johnson	Biography	1969	54.28	60
60	Robust eco-centric capacity	Brian Haney	Biography	1990	60.14	0
67	Grass-roots zero tolerance archive	Michelle Taylor	Biography	1966	35.23	25
68	Centralized responsive firmware	Alexander Nelson	Biography	1919	54.55	23
71	Organized methodical productivity	Daniel Santos	Biography	1950	63.50	40
74	Automated scalable installation	Mitchell Hess	Biography	1986	70.12	83
83	Sharable regional product	Michael Walker	Biography	2022	33.94	92
95	Function-based heuristic analyzer	Craig Smith	Biography	1990	74.53	11
104	Automated radical solution	Leonard Vega	Biography	1948	35.56	82
115	Upgradable interactive emulation	Christopher Ross	Biography	2021	53.12	37
121	Switchable needs-based strategy	Richard Fisher	Biography	1957	67.47	38
137	Networked contextually-based encryption	Leslie Montoya	Biography	1942	51.33	1
139	Synergistic analyzing intranet	Robert Garcia	Biography	1923	60.40	51
140	Assimilated asymmetric Local Area Network	Timothy Williams	Biography	2003	56.49	6
149	Expanded explicit solution	Tonya Robertson	Biography	1957	42.09	73
150	Phased logistical open system	Jenna Henderson	Biography	1952	56.95	32
157	Advanced didactic time-frame	Thomas Trujillo	Biography	2005	44.17	57
159	Proactive 5thgeneration middleware	Brandon Foster	Biography	1999	61.21	49
169	Networked tertiary approach	Margaret Moore	Biography	1963	48.57	45
172	Centralized homogeneous open system	Dennis Smith	Biography	1977	61.82	97
175	Networked disintermediate projection	John Bradley	Biography	1910	57.85	39
195	Sharable tangible collaboration	Christian Ward	Biography	2021	36.63	20
211	Centralized asymmetric data-warehouse	Dana Ibarra	Biography	1944	41.19	44
215	Organic 24/7 focus group	Marco Travis	Biography	1910	50.16	37
221	Re-engineered solution-oriented extranet	Robert Castaneda	Biography	1988	49.81	2
246	Visionary actuating ability	Paul Taylor	Biography	1940	32.43	98
256	Digitized multi-state circuit	Sarah Walker	Biography	1981	61.86	77
262	Team-oriented content-based adapter	Dr. Kimberly Stevenson DVM	Biography	1979	46.02	86
264	De-engineered local interface	Wayne Hall	Biography	2015	45.51	47
267	Expanded demand-driven database	Gary Williams	Biography	1905	62.49	24
268	Monitored 5thgeneration challenge	Billy Aguilar	Biography	1960	33.10	62
275	Team-oriented dedicated attitude	Jeffrey Richardson	Biography	2006	50.83	91
277	Progressive user-facing customer loyalty	Ashley Cunningham	Biography	1909	58.21	95
282	Configurable local emulation	Russell Castillo	Biography	2016	63.19	3
291	Compatible impactful interface	Rachael Kelley	Biography	1957	32.77	13
306	Phased didactic product	Elizabeth Koch	Biography	1988	68.92	56
311	Profit-focused static intranet	Kaitlyn Mills	Biography	1903	57.28	48
312	Balanced multi-state monitoring	Clayton Garcia DDS	Biography	1946	61.47	13
321	Polarized optimizing moratorium	Amanda Savage	Biography	1911	49.32	16
323	Balanced dynamic project	Kelly Hopkins	Biography	1976	60.83	2
330	Assimilated user-facing approach	Roy Wolf	Biography	1990	57.02	25
332	Quality-focused mobile migration	Tanya Brandt	Biography	1968	74.08	17
356	Front-line modular moratorium	Timothy Williams	Biography	1957	50.65	44
358	Right-sized intangible infrastructure	Stephanie Clayton	Biography	1962	32.18	29
368	Stand-alone logistical installation	Elizabeth Williams	Biography	1913	69.60	97
369	Diverse responsive focus group	Ashley Chavez	Biography	1966	47.65	100
390	Versatile mission-critical customer loyalty	Rachel Case	Biography	1947	64.96	35
399	Distributed regional collaboration	Juan Reynolds	Biography	2007	39.34	25
412	Profound zero-defect process improvement	Lisa Alexander	Biography	1921	34.83	5
420	Proactive radical application	Kevin Mosley	Biography	1907	58.14	35
426	Triple-buffered upward-trending artificial intelligence	John Shannon	Biography	2021	57.82	98
454	Stand-alone methodical implementation	Kim Wilson	Biography	1940	34.56	94
476	Front-line next generation migration	Russell Sparks	Biography	1907	64.42	37
499	Compatible transitional budgetary management	Isaac Nelson	Biography	1905	31.94	64
\.


--
-- TOC entry 5039 (class 0 OID 16421)
-- Dependencies: 222
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customers_id, name, email, phone, city, country, gender, salary) FROM stdin;
2	Crystal Clements	kimberlybennett@curtis.com	1234567892	East Derekberg	Nicaragua	\N	\N
3	Susan Fuller	beanmichael@burnett-stewart.net	1234567893	Austinbury	Equatorial Guinea	\N	\N
4	Jamie Ramirez	amandahood@warren.com	1234567894	Dianamouth	Slovenia	\N	\N
5	Marcus Murphy	connerjohn@yahoo.com	1234567895	Smithbury	Guinea-Bissau	\N	\N
6	Stephen Vasquez	ricemiguel@yahoo.com	1234567896	Hamiltonstad	Rwanda	\N	\N
7	Susan Hicks	jeffrey91@yahoo.com	1234567897	East Rebecca	Montenegro	\N	\N
8	Matthew Johnson	austinkenneth@manning.net	1234567898	Kirstenborough	Israel	\N	\N
9	Matthew Williams	jeffrey41@diaz.com	1234567899	Rebeccafurt	Somalia	\N	\N
10	Ronald Osborn	staciekelley@heath.com	1234567900	Lake Benjamin	Cameroon	\N	\N
11	Thomas Garcia	rmiller@gmail.com	1234567901	West Monicabury	Argentina	\N	\N
12	Jennifer Murray	wilsonbrittany@hotmail.com	1234567902	South Ashleychester	Zimbabwe	\N	\N
13	Kristine Kim	sarahwilliams@hotmail.com	1234567903	Lake Robert	Nigeria	\N	\N
14	John Wood	johnsonalexander@gmail.com	1234567904	Richardsonville	New Caledonia	\N	\N
15	Vanessa Gaines	tbullock@gmail.com	1234567905	Rodriguezmouth	Wallis and Futuna	\N	\N
16	Stacey Flores	jackjackson@hotmail.com	1234567906	East Michaelfurt	Saint Helena	\N	\N
17	Christine Maldonado	ztaylor@yahoo.com	1234567907	Smithborough	Chile	\N	\N
18	David Watson	laurenlawson@alvarez-mcfarland.com	1234567908	New Josephtown	Equatorial Guinea	\N	\N
19	Marc Nash	joshua59@gmail.com	1234567909	Davidton	French Guiana	\N	\N
20	Robert Salas	schultzjohn@thomas.com	1234567910	Schultzchester	Denmark	\N	\N
21	Edgar Frost	maria51@gmail.com	1234567911	Jonathanhaven	Saudi Arabia	\N	\N
22	Stacey Adams	fjohnson@gmail.com	1234567912	Clintonmouth	Iceland	\N	\N
23	Hannah Drake	sandersallen@hotmail.com	1234567913	Deannabury	Faroe Islands	\N	\N
24	Christina Mitchell	justin67@yahoo.com	1234567914	Bridgestown	Trinidad and Tobago	\N	\N
25	James Martin	reynoldstyrone@wiggins.com	1234567915	North James	Yemen	\N	\N
26	Dylan Bell	isaac43@gmail.com	1234567916	North Aaron	Guam	\N	\N
27	Debbie Sampson	collin21@hotmail.com	1234567917	Christopherburgh	Bahamas	\N	\N
28	William Burns	valeriemack@gmail.com	1234567918	South Kristyville	Netherlands	\N	\N
29	John Maxwell	martinsamantha@martin.net	1234567919	Nolanstad	Cuba	\N	\N
30	Dylan Garcia	oanderson@yahoo.com	1234567920	Hallfort	Turkey	\N	\N
31	Amanda Morton	lolsen@jones.com	1234567921	Marktown	Antigua and Barbuda	\N	\N
32	Jeffrey Shannon	nmcmillan@smith.com	1234567922	New Carlosbury	Malta	\N	\N
33	Kristin Hall	michele78@yahoo.com	1234567923	Underwoodfurt	Cuba	\N	\N
34	Ryan Love	joseph37@gmail.com	1234567924	Leestad	Anguilla	\N	\N
35	Daniel Gonzalez	nday@combs.com	1234567925	Hoovermouth	Fiji	\N	\N
36	Benjamin Wallace	alexander26@hotmail.com	1234567926	Schroederton	Botswana	\N	\N
37	Ryan Lara	benjamin38@thompson-adams.net	1234567927	Port Jameschester	Chad	\N	\N
38	Nicholas Harris	christine93@perkins.com	1234567928	Davistown	Canada	\N	\N
39	Tonya Arnold	aprice@hotmail.com	1234567929	Nelsonmouth	Japan	\N	\N
40	Beth Gomez	wjackson@bowen.com	1234567930	Hollyhaven	Myanmar	\N	\N
41	Samuel Daniels	andrew07@gmail.com	1234567931	Codyton	Benin	\N	\N
42	Susan Wilson	ohood@yahoo.com	1234567932	Jeffreystad	Niger	\N	\N
43	Steven Stone	jill61@herrera.org	1234567933	Ashleytown	Maldives	\N	\N
44	Alexis Gallegos	craig42@smith-carroll.com	1234567934	Conniefort	Lesotho	\N	\N
45	Jennifer Fowler	whitemargaret@blackwell.info	1234567935	Carlsonfort	Ireland	\N	\N
46	Travis Wells	stacywilson@hotmail.com	1234567936	New David	Moldova	\N	\N
47	Debra Park	dawnmyers@munoz-ayala.com	1234567937	Phillipsmouth	Isle of Man	\N	\N
48	Paula Harris	lisa63@barber.org	1234567938	Reginaside	Saint Kitts and Nevis	\N	\N
49	Anne Dean	katrinaedwards@anderson.org	1234567939	Jonathanberg	Heard Island and McDonald Islands	\N	\N
50	Kimberly Thomas	omoore@garcia.com	1234567940	New Ruben	Tajikistan	\N	\N
51	Cynthia Walker	huertarobert@gmail.com	1234567941	Lake Robertfort	Yemen	\N	\N
52	Ian Lopez	larry64@gmail.com	1234567942	North Ashleyside	Guyana	\N	\N
53	Sandra Coleman	emerritt@yahoo.com	1234567943	Lake Karenmouth	Netherlands Antilles	\N	\N
54	Rachel Jones	bmedina@hotmail.com	1234567944	Brendafurt	Central African Republic	\N	\N
55	Michelle Stevens	janicethompson@jones-arnold.com	1234567945	Wagnerfurt	Romania	\N	\N
56	Dr. Susan Nichols	hernandezchelsea@thompson.com	1234567946	East Lisaberg	Netherlands Antilles	\N	\N
57	Nicolas Joseph	debra75@gmail.com	1234567947	Lindaburgh	Congo	\N	\N
58	Michael Young	anthony39@gmail.com	1234567948	Lake Tannerton	United Arab Emirates	\N	\N
59	Andrew Collins	msanchez@king.net	1234567949	West Sheri	Guatemala	\N	\N
60	Steven Matthews	timothy98@durham.info	1234567950	Lake Sharonville	Senegal	\N	\N
61	Lindsay Reynolds	cynthia58@robinson.biz	1234567951	Port Manuelfurt	Belgium	\N	\N
62	Paul Heath	pamelamartin@yahoo.com	1234567952	East Shannonview	Isle of Man	\N	\N
63	Manuel Lewis	alicia70@hotmail.com	1234567953	Brendatown	Heard Island and McDonald Islands	\N	\N
64	Jennifer Clark	michael13@cantu-hawkins.com	1234567954	Jamesville	British Indian Ocean Territory (Chagos Archipelago)	\N	\N
65	Laura Wiggins	christopherhughes@gmail.com	1234567955	Sherryport	Tokelau	\N	\N
66	Molly Diaz	rwhite@gmail.com	1234567956	Brandonside	Seychelles	\N	\N
67	Denise Chapman	andrew13@pacheco-hughes.com	1234567957	Garcialand	Cote d'Ivoire	\N	\N
68	Kimberly Smith	imiller@gmail.com	1234567958	East Raymond	Indonesia	\N	\N
69	Gary Kaiser	linda39@yahoo.com	1234567959	South David	Saint Kitts and Nevis	\N	\N
70	Laura Duarte	jimenezchristine@dickson.com	1234567960	West Kimberlyhaven	Finland	\N	\N
71	Mrs. Natalie Hopkins DDS	douglasmccarthy@woodward-gallagher.com	1234567961	West Sarah	United States Virgin Islands	\N	\N
72	Ms. Nicole Lee	mary21@henry-maynard.com	1234567962	West Ethan	Saint Barthelemy	\N	\N
73	Peter Krueger	vwelch@yahoo.com	1234567963	New Lawrenceton	Zimbabwe	\N	\N
74	Bryan Moore	brendawong@juarez-camacho.biz	1234567964	Blackchester	Norfolk Island	\N	\N
75	Carla Webb	jennifer35@mann.biz	1234567965	Jasonmouth	Gabon	\N	\N
76	Kim Wang	jonesdylan@gmail.com	1234567966	Janicemouth	Turkey	\N	\N
77	Jason Villegas	thomas00@stewart.com	1234567967	Fieldsland	Senegal	\N	\N
78	Dr. Laurie Trevino	ryanbuchanan@hotmail.com	1234567968	Amberton	Saint Barthelemy	\N	\N
79	Daniel Brown	walkerrichard@young-grimes.com	1234567969	Villarrealland	Pakistan	\N	\N
80	Joy Fisher	kentchristian@gmail.com	1234567970	West Rogerview	Tuvalu	\N	\N
81	Matthew Hall	patrick24@hotmail.com	1234567971	Lake Zachary	Suriname	\N	\N
82	Shaun Fernandez	greenmichael@hotmail.com	1234567972	Wrightburgh	Malaysia	\N	\N
83	Aaron Clark	jessica98@hotmail.com	1234567973	Thomashaven	Fiji	\N	\N
84	Gary Blair	leonardtaylor@bowers.net	1234567974	Lake Paul	Armenia	\N	\N
85	Sheila Coleman	cmyers@cooper-davies.com	1234567975	South Connie	Bangladesh	\N	\N
86	Molly Robinson	rebeccataylor@mcbride.info	1234567976	South Kathleen	Cuba	\N	\N
87	Nathan Robbins	jenniferrodgers@garrison-baker.com	1234567977	East Tylertown	Bolivia	\N	\N
88	Gregory Joseph	kimangela@yahoo.com	1234567978	Fletcherview	Algeria	\N	\N
89	Erik Wang	gparks@yahoo.com	1234567979	New Desireebury	United Kingdom	\N	\N
90	Matthew Meyer	moorebrittany@yahoo.com	1234567980	West Christopher	Benin	\N	\N
91	Breanna Gonzalez	usimon@wright.com	1234567981	Andrewberg	Sierra Leone	\N	\N
92	Heather Hamilton	kathy50@hotmail.com	1234567982	Davidshire	Croatia	\N	\N
93	Jacob Cox	frank29@yahoo.com	1234567983	Robertburgh	San Marino	\N	\N
94	Mr. David Cox	millermichael@gmail.com	1234567984	West Anthony	New Zealand	\N	\N
95	Laura Fox	samanthaking@hogan.org	1234567985	New Theresa	Guadeloupe	\N	\N
96	Levi Pierce	bayers@gmail.com	1234567986	Dayburgh	Bouvet Island (Bouvetoya)	\N	\N
97	Daniel Sanford	amanda13@yahoo.com	1234567987	Lake Stevenhaven	French Southern Territories	\N	\N
98	Robert Blair	anicholson@gregory.com	1234567988	Josephfurt	United States Virgin Islands	\N	\N
99	Timothy Lane	janet99@davis.net	1234567989	South Heather	Turkey	\N	\N
100	Karla Guerrero	wsimpson@yahoo.com	1234567990	Dustinview	Argentina	\N	\N
101	Brooke Kline	shirleythomas@allen-skinner.net	1234567991	New James	Georgia	\N	\N
102	Christopher Williams	ufigueroa@hotmail.com	1234567992	Cherylport	Macedonia	\N	\N
103	Ashley Castro	watsonmolly@yahoo.com	1234567993	Leeport	Swaziland	\N	\N
104	Anthony Ortiz	amartinez@gmail.com	1234567994	Michaelfort	Nicaragua	\N	\N
105	Billy Ochoa	mstrong@yahoo.com	1234567995	Samanthaburgh	Andorra	\N	\N
106	Deborah Weber	kimberly54@yahoo.com	1234567996	North Dana	Equatorial Guinea	\N	\N
107	Amy Hunt	emilybecker@perkins.com	1234567997	Ericborough	Aruba	\N	\N
108	Brian Thompson	resparza@hotmail.com	1234567998	Banksshire	Tokelau	\N	\N
109	Jacob Kelley	qbarber@shelton.org	1234567999	Ravenberg	Macao	\N	\N
110	Rachel Phillips	jgutierrez@gmail.com	1234568000	Chelseachester	Serbia	\N	\N
111	Danielle Parsons	millerdaniel@hotmail.com	1234568001	Port Jessica	Brunei Darussalam	\N	\N
112	Andrew Wilson	johnny54@gmail.com	1234568002	North Nicholasmouth	Guinea-Bissau	\N	\N
113	Amy Peterson	frazierapril@hotmail.com	1234568003	Wellstown	Niger	\N	\N
114	Austin Baxter	chavezpaula@gmail.com	1234568004	Bellfurt	Uganda	\N	\N
115	Jacob Fernandez	adamsmith@mckay-ward.com	1234568005	East Lisashire	Micronesia	\N	\N
116	Joshua Rodriguez	melissa54@gmail.com	1234568006	Charleston	Palestinian Territory	\N	\N
117	Molly Murphy	jamesswanson@williams-smith.info	1234568007	Sawyerchester	Korea	\N	\N
118	Cynthia Stephens	nichole06@obrien-smith.com	1234568008	North Brian	Puerto Rico	\N	\N
119	Alyssa Cuevas	hholland@gmail.com	1234568009	Lake Victormouth	Serbia	\N	\N
120	Rita Wallace	catherinehayes@hotmail.com	1234568010	Lake Eric	Zimbabwe	\N	\N
121	Ashley Hernandez	wfrey@sosa.info	1234568011	Jenniferfurt	Japan	\N	\N
122	Colleen Navarro	darlenelawson@chan.com	1234568012	Russellshire	Belarus	\N	\N
123	Renee Clay	bellison@yahoo.com	1234568013	Bowmanport	Moldova	\N	\N
124	Mark Wilson	vaughansarah@gutierrez-patton.com	1234568014	North Juan	Antigua and Barbuda	\N	\N
125	Rebecca Perez	udavis@patton.com	1234568015	Michelleview	Sri Lanka	\N	\N
126	Bonnie Mcdonald	david81@shelton.com	1234568016	South Dianafurt	Myanmar	\N	\N
127	Joseph Mcmahon	sharon15@stone.com	1234568017	Lake Mary	Reunion	\N	\N
128	Lori Diaz	wellsmichael@baker.info	1234568018	Mallorymouth	Eritrea	\N	\N
129	Carolyn Perez	singhsarah@gmail.com	1234568019	Adkinsview	Macedonia	\N	\N
130	Michael Dodson	janice97@hotmail.com	1234568020	Courtneymouth	Grenada	\N	\N
131	Peter Smith	wmorales@miller.com	1234568021	North Carolyn	Jersey	\N	\N
132	Angela Maynard	millerjason@yahoo.com	1234568022	Milesmouth	India	\N	\N
133	Kristen Green	pyoung@hotmail.com	1234568023	West John	Iran	\N	\N
134	Nichole Velez	brenda93@gmail.com	1234568024	Keithberg	Uruguay	\N	\N
135	Katrina Diaz	amullins@hernandez.info	1234568025	Fishermouth	Samoa	\N	\N
136	Samantha Callahan	billysmith@yahoo.com	1234568026	Popeberg	Anguilla	\N	\N
137	Steven Miller	tsummers@yahoo.com	1234568027	North Keith	Papua New Guinea	\N	\N
138	Barbara Knight	bryan17@hotmail.com	1234568028	Shellyhaven	Georgia	\N	\N
139	Ruth Young	michelleaustin@gmail.com	1234568029	North Mallorytown	United States Minor Outlying Islands	\N	\N
140	Brett Henderson	zturner@matthews-clark.com	1234568030	Leeview	Liberia	\N	\N
141	Ryan Hernandez	morganhubbard@yahoo.com	1234568031	Stephanieberg	Saint Pierre and Miquelon	\N	\N
142	Patricia Lowe	tylerbennett@johnston.com	1234568032	North Danafurt	Luxembourg	\N	\N
143	Luis Stafford	pateltim@edwards.com	1234568033	Lake Robert	Qatar	\N	\N
144	Austin Shea	christopherhart@davis.com	1234568034	Port Jeffreybury	San Marino	\N	\N
145	Jessica Mays	david49@donaldson.com	1234568035	North Aaronton	Morocco	\N	\N
146	Yvonne Miles	fbaker@yahoo.com	1234568036	West Cynthiaview	Aruba	\N	\N
147	Melissa Frazier	patrickanderson@yahoo.com	1234568037	Lake Amyfort	Afghanistan	\N	\N
148	Steven Bryant	gbrowning@yahoo.com	1234568038	Lake Paul	Barbados	\N	\N
149	Jason Robinson	masonzachary@gmail.com	1234568039	Victoriafurt	French Guiana	\N	\N
150	Dr. Jessica Perez	stephanie05@padilla.net	1234568040	Rojasmouth	Saint Barthelemy	\N	\N
151	Katie Lang	perezjudith@delacruz.org	1234568041	Lake Anthony	Belgium	\N	\N
152	Rebecca Buckley	fross@hotmail.com	1234568042	East Marymouth	Malawi	\N	\N
153	George Wright	hillhannah@brown-carroll.info	1234568043	New Marie	Korea	\N	\N
154	Kristin Montoya	petersonvictoria@hawkins.org	1234568044	Port Theresa	Guernsey	\N	\N
155	James Stuart	staceycohen@chen.com	1234568045	South Mariaside	Turks and Caicos Islands	\N	\N
156	Jordan Mcguire	bradleyhernandez@yahoo.com	1234568046	Taylormouth	Cuba	\N	\N
157	Stephanie Curry	stokescaroline@gmail.com	1234568047	Port Anna	Kyrgyz Republic	\N	\N
158	Michael Garcia	brian45@miller.com	1234568048	Emilymouth	Russian Federation	\N	\N
159	Jennifer White	epage@yahoo.com	1234568049	Port Rebecca	Pitcairn Islands	\N	\N
160	Robert Brooks	johnnygriffith@gmail.com	1234568050	Lake Sarahside	Finland	\N	\N
161	Mr. Frederick Harrison	melissawilliams@green.com	1234568051	Darlenehaven	Lebanon	\N	\N
162	Taylor Browning	oschmidt@hotmail.com	1234568052	Petertown	Spain	\N	\N
163	Robert Clark	sheilalester@gmail.com	1234568053	Lake Charleshaven	Macao	\N	\N
164	Eric Lyons	barbara97@hotmail.com	1234568054	Joannahaven	Panama	\N	\N
165	John Clark	wcunningham@gmail.com	1234568055	New Michael	Svalbard & Jan Mayen Islands	\N	\N
166	John Delacruz	dhurley@walsh.biz	1234568056	Port Timothy	Monaco	\N	\N
167	Justin Spencer	michaelsnyder@gmail.com	1234568057	Christopherchester	South Africa	\N	\N
168	Ashley Larsen	daniellewilliams@stone-moore.com	1234568058	Port Aaronstad	Papua New Guinea	\N	\N
169	Robert Rodriguez	wellsmark@henderson.net	1234568059	New Kimberlyville	British Virgin Islands	\N	\N
170	Allison Nguyen	pamela82@butler-wolfe.com	1234568060	Paulashire	Bulgaria	\N	\N
171	Catherine Short	jeffreymahoney@morales.info	1234568061	Derekberg	Kenya	\N	\N
172	Henry Robinson	isaac98@gmail.com	1234568062	Port Alicia	China	\N	\N
173	Victoria Dixon	caseytina@yahoo.com	1234568063	Annhaven	French Polynesia	\N	\N
174	Jonathon Strickland	ryan10@yahoo.com	1234568064	Bakerton	Dominica	\N	\N
175	Barbara Rodriguez	smithmichele@moran.com	1234568065	Williamsfurt	Papua New Guinea	\N	\N
176	Sandra Booker	williamjenkins@gmail.com	1234568066	Matthewport	Uruguay	\N	\N
177	Sarah Powell	bryan44@yahoo.com	1234568067	Kaylatown	Guyana	\N	\N
178	Justin Roberson	johnsonrebecca@gmail.com	1234568068	Lake Brittany	Barbados	\N	\N
179	John Foster	andrew52@sanchez-mullen.info	1234568069	Novakland	Andorra	\N	\N
180	Robert Pearson	jamie14@yahoo.com	1234568070	New Robertoshire	Niger	\N	\N
181	Courtney Ray	robert24@montgomery-frazier.com	1234568071	Josephstad	Honduras	\N	\N
182	Randy Oliver	robbinsmicheal@cox.com	1234568072	Adrianafort	Sudan	\N	\N
183	Jeffrey Howard	ramirezcaroline@weeks.info	1234568073	New Kylefurt	Saint Martin	\N	\N
184	Richard Mclaughlin	webbpatrick@hotmail.com	1234568074	Bestbury	Somalia	\N	\N
185	Katelyn Rhodes	sbrooks@yahoo.com	1234568075	Rothshire	Mauritania	\N	\N
186	Kimberly Gallagher	derek84@hotmail.com	1234568076	West Steven	Netherlands	\N	\N
187	Tiffany Brewer	ocruz@yahoo.com	1234568077	New Laura	Mongolia	\N	\N
188	Walter Owens	barbaraross@knight-brown.org	1234568078	Clarkmouth	Senegal	\N	\N
189	Jason Bell	williambrown@hotmail.com	1234568079	Taylorfurt	Somalia	\N	\N
190	Stephen Jones	brandon93@hotmail.com	1234568080	Jonesmouth	Italy	\N	\N
191	Natasha Owens	xpreston@yahoo.com	1234568081	Bradleyburgh	Tonga	\N	\N
192	Paige Mendez DVM	hcross@gmail.com	1234568082	New Melissahaven	Slovakia (Slovak Republic)	\N	\N
193	Adam Grant	xrodgers@gmail.com	1234568083	South Christina	Bangladesh	\N	\N
194	Eric Jimenez	nelliott@yahoo.com	1234568084	West Robinport	Sweden	\N	\N
195	Dominique Turner	tracy39@smith-miller.com	1234568085	Rogersborough	Djibouti	\N	\N
196	Sean Brooks	james06@yahoo.com	1234568086	Phillipsbury	Cyprus	\N	\N
197	Patrick Henderson	ivelasquez@best-carey.com	1234568087	East Amandaport	Lao People's Democratic Republic	\N	\N
198	Curtis Winters	rodriguezmadison@herrera.com	1234568088	Davidburgh	Qatar	\N	\N
199	Anthony Simmons	brittanyellis@davis-scott.com	1234568089	East Sandra	Micronesia	\N	\N
200	Ashley Powers	probinson@gmail.com	1234568090	West Danny	Pitcairn Islands	\N	\N
201	David Lopez	ngonzalez@yahoo.com	1234568091	Zacharyfort	Bouvet Island (Bouvetoya)	\N	\N
202	Sara Johnson	jacobjohnson@ortega-johnson.com	1234568092	Joshualand	Nicaragua	\N	\N
203	William Walters	jenna96@hotmail.com	1234568093	South Heather	Austria	\N	\N
204	Dominic Jenkins	edavenport@jenkins-green.com	1234568094	Yvonneside	Svalbard & Jan Mayen Islands	\N	\N
205	William Cook	wjackson@hotmail.com	1234568095	Jamesbury	Bolivia	\N	\N
206	Diana Davis	tmckay@hotmail.com	1234568096	Christophertown	Antigua and Barbuda	\N	\N
207	Sarah Williams	dorseymichael@garcia-smith.com	1234568097	Barbarahaven	United Kingdom	\N	\N
208	Amy Hill	morenoheather@scott.com	1234568098	Padillaville	Turkmenistan	\N	\N
209	Michael Maldonado	raymondmyers@trujillo.com	1234568099	Donnatown	Slovakia (Slovak Republic)	\N	\N
210	Susan Cline	ramirezdavid@cook.org	1234568100	Ericfurt	Lithuania	\N	\N
211	Ronald Jordan	nhernandez@farmer.org	1234568101	Leonardport	Fiji	\N	\N
212	Jason Cox	lwoods@bentley.biz	1234568102	West Ricky	Marshall Islands	\N	\N
213	Joshua Page	robertwiggins@gmail.com	1234568103	East Kyle	Bangladesh	\N	\N
214	Alexander Scott	amypierce@hotmail.com	1234568104	Matthewfurt	El Salvador	\N	\N
215	Jennifer Thomas	vrodgers@burns.com	1234568105	East Hunterview	Palau	\N	\N
216	Phillip Allen	brianwatkins@gmail.com	1234568106	Kelseyfort	Micronesia	\N	\N
217	Lisa Powers	hamiltonjose@hotmail.com	1234568107	Garnertown	Uzbekistan	\N	\N
218	Craig Berger	stacymccall@gmail.com	1234568108	Sparksberg	Pitcairn Islands	\N	\N
219	Jamie Cruz	woodmelissa@hotmail.com	1234568109	Lake Amber	Zambia	\N	\N
220	Jasmin Sullivan	randalllowery@yahoo.com	1234568110	Ellistown	Equatorial Guinea	\N	\N
221	William Payne	haileyjohnson@hotmail.com	1234568111	West Adrienneton	Reunion	\N	\N
222	Madison Stevens	staylor@copeland.info	1234568112	Baldwinfurt	Jersey	\N	\N
223	Miss Catherine Simon	cjohnson@gmail.com	1234568113	Mindytown	Belgium	\N	\N
224	Julie Stewart	uthompson@hotmail.com	1234568114	Smithmouth	British Indian Ocean Territory (Chagos Archipelago)	\N	\N
225	Christopher Mccullough	kcarlson@yahoo.com	1234568115	Port Amandahaven	Jersey	\N	\N
226	Kevin Collins	smithclinton@goodman-jackson.com	1234568116	Thomaschester	San Marino	\N	\N
227	Jeffery Zimmerman	michaelbell@miranda-thomas.info	1234568117	West Robertport	Indonesia	\N	\N
228	Janet Hobbs	hansenkristin@wright-white.net	1234568118	Mcguireton	Australia	\N	\N
229	Kimberly Jackson	bryansmith@lopez.info	1234568119	New Dorothytown	Azerbaijan	\N	\N
230	Elijah Baker	barneslatoya@daniels-esparza.com	1234568120	Jeffreybury	Comoros	\N	\N
231	Casey Brown	joanmartinez@yahoo.com	1234568121	North Andrew	Congo	\N	\N
232	Kelli Bishop	xmiller@gmail.com	1234568122	Port Jasonview	Jersey	\N	\N
233	Mark Ward	jason80@osborne.com	1234568123	East Shaun	Macao	\N	\N
234	Mr. Jamie Rosario	kimberlyjones@moore.info	1234568124	Nicoleshire	Djibouti	\N	\N
235	Abigail Newman	vlang@sanders-ellis.com	1234568125	Martintown	Sudan	\N	\N
236	Daniel Powers	kingamber@gmail.com	1234568126	West John	Sierra Leone	\N	\N
237	Shannon Smith	karenwalton@williams.com	1234568127	Diazchester	Turkey	\N	\N
238	Shelby Wells	cfox@hotmail.com	1234568128	East Noah	Portugal	\N	\N
239	Amanda Kramer	kelly09@lopez.biz	1234568129	Kellermouth	Egypt	\N	\N
240	Paul Waters	kyle55@thomas.org	1234568130	Amandamouth	Fiji	\N	\N
241	Christopher Lewis	john63@brandt.net	1234568131	Lake Shawn	Swaziland	\N	\N
242	Mandy Riley	careykevin@yahoo.com	1234568132	West Kimberly	Puerto Rico	\N	\N
243	Alexis Atkins	john14@yahoo.com	1234568133	East Stevenfort	Micronesia	\N	\N
244	Jennifer Parrish	nfoster@yahoo.com	1234568134	East Monique	Botswana	\N	\N
245	Claudia White	johnsonamanda@hotmail.com	1234568135	Ericaburgh	Kuwait	\N	\N
246	Jeffery Lewis	marytorres@wolfe.biz	1234568136	Angelastad	Dominican Republic	\N	\N
247	Michael Ellis	rhondabailey@hotmail.com	1234568137	Port Austinview	Kyrgyz Republic	\N	\N
248	Victoria Camacho	joy49@hotmail.com	1234568138	New Stacey	Russian Federation	\N	\N
249	Jennifer Ochoa	carmenatkinson@hotmail.com	1234568139	Longside	Puerto Rico	\N	\N
250	Riley Diaz	awaters@hotmail.com	1234568140	Reneestad	Kuwait	\N	\N
251	Jennifer Tran	idavis@freeman.org	1234568141	Emilymouth	Switzerland	\N	\N
252	Jill Sanders	pmeyer@noble.com	1234568142	Williamstad	Isle of Man	\N	\N
253	Sarah Rojas	sowen@yahoo.com	1234568143	Justinfurt	South Africa	\N	\N
254	Katherine Mooney	craigrichard@yahoo.com	1234568144	Johnsonport	Senegal	\N	\N
255	Vincent Duncan	kristi92@gmail.com	1234568145	Moodyville	China	\N	\N
256	Denise Hall	stephenthompson@yoder-pearson.com	1234568146	East Wyattchester	Mauritius	\N	\N
257	Calvin Clarke	ambertorres@jordan.biz	1234568147	North Christinetown	Iran	\N	\N
258	Jacob French	michael67@yahoo.com	1234568148	Crystalborough	Korea	\N	\N
259	Linda Smith	npadilla@yahoo.com	1234568149	South Deborahville	Armenia	\N	\N
260	Kathryn Fitzgerald	jenniferodom@gmail.com	1234568150	West Maria	Swaziland	\N	\N
261	David Donovan	dguzman@hall-gentry.com	1234568151	West Justin	Slovakia (Slovak Republic)	\N	\N
262	Gabriela Smith	deborah24@long.net	1234568152	Hopkinsport	Solomon Islands	\N	\N
263	Tara Gregory	timothymiller@flores-ball.biz	1234568153	Andreland	Gambia	\N	\N
264	Clinton Smith	youngjohn@lewis.info	1234568154	Brandontown	Somalia	\N	\N
265	Cassandra Cole	mckenziealfred@gmail.com	1234568155	Port Erinberg	Iraq	\N	\N
266	Robert Myers	hmoore@ortiz.com	1234568156	Ortizfurt	Falkland Islands (Malvinas)	\N	\N
267	Timothy Simon	april69@vazquez.com	1234568157	New Jennifer	Algeria	\N	\N
268	Jessica Hopkins	markperez@gmail.com	1234568158	Jamesland	Spain	\N	\N
269	John Scott	ysandoval@mcgrath.com	1234568159	Port Paulshire	New Zealand	\N	\N
270	Erika Campbell	davidbarnes@yahoo.com	1234568160	Lake Anthonyland	Croatia	\N	\N
271	Kristina Vaughan	jennifer30@hotmail.com	1234568161	East Williamberg	Falkland Islands (Malvinas)	\N	\N
272	Carl Smith	davidandrade@gmail.com	1234568162	Lake Samantha	Algeria	\N	\N
273	Jordan Warner	sawyerraven@gmail.com	1234568163	New Joehaven	Mexico	\N	\N
274	Amber Friedman	trevortucker@gmail.com	1234568164	East Amy	Chile	\N	\N
275	Andrew Farmer	elizabeth45@hotmail.com	1234568165	East Cory	Nicaragua	\N	\N
276	Carol Petersen	roberthayes@tucker.biz	1234568166	East Jeremyside	Czech Republic	\N	\N
277	David Collins	nicholasdean@foster-hall.org	1234568167	South Victoriaport	Liechtenstein	\N	\N
278	Michael Hill	jamesortiz@gmail.com	1234568168	West Amber	Israel	\N	\N
279	Susan Hughes	efuller@williams-johnson.biz	1234568169	New Julieville	Estonia	\N	\N
280	Robert Perkins	drangel@gmail.com	1234568170	New Ronaldbury	Greenland	\N	\N
281	Jennifer Booker	idiaz@hotmail.com	1234568171	Katietown	Malawi	\N	\N
282	Crystal Rios	xparrish@terry.info	1234568172	Port Richardstad	Bahrain	\N	\N
283	Louis Gibson	nbrown@hotmail.com	1234568173	East Lisaside	United Arab Emirates	\N	\N
284	Annette Garcia	donald50@yahoo.com	1234568174	Melissaside	San Marino	\N	\N
285	Todd Morris	jonathan90@gmail.com	1234568175	New Lisa	Tokelau	\N	\N
286	Heidi Kennedy DDS	stephaniealexander@yahoo.com	1234568176	Port Heather	Saint Lucia	\N	\N
287	Kayla Novak	normanlane@gmail.com	1234568177	New Monicastad	Comoros	\N	\N
288	Terry Becker	nathan91@peterson-rhodes.info	1234568178	Port Colleenside	Chad	\N	\N
289	Gabriel Dillon	joan36@yahoo.com	1234568179	Morenoview	Malawi	\N	\N
290	Sarah Cameron	egonzalez@bell.com	1234568180	West Blake	Guyana	\N	\N
291	Jennifer Crosby	fmiller@yahoo.com	1234568181	Alanton	Russian Federation	\N	\N
292	Lindsey Roberts	erinkelly@robinson.com	1234568182	Lambertfort	Armenia	\N	\N
293	Erica Walker	justindillon@yahoo.com	1234568183	Reeseville	Guadeloupe	\N	\N
294	Wesley Parks	dnoble@gmail.com	1234568184	Angelaside	Mali	\N	\N
295	Paul Morales	qsmith@hotmail.com	1234568185	Gonzalestown	Vietnam	\N	\N
296	Michael Johnson	wallacekenneth@jones.com	1234568186	Mooreburgh	Mali	\N	\N
297	Ryan Mendoza	woodjohn@duncan.com	1234568187	West Kim	Argentina	\N	\N
298	Carl Jackson	qlopez@valdez.com	1234568188	West Kimberlyborough	Swaziland	\N	\N
299	Andrew Robinson	pittmanelizabeth@armstrong-shepard.com	1234568189	Jessicaport	Cayman Islands	\N	\N
300	Marie Mason	heathersanders@gmail.com	1234568190	Port David	Svalbard & Jan Mayen Islands	\N	\N
301	Tommy Colon	hhuerta@craig-zimmerman.biz	1234568191	Parkerborough	Isle of Man	\N	\N
302	Howard Frazier	heatherhunter@hotmail.com	1234568192	Wellsland	Tunisia	\N	\N
303	Jose Lee	russellthomas@thomas-perkins.com	1234568193	East Erikatown	Iran	\N	\N
304	Nancy Dennis	davidraymond@gmail.com	1234568194	Dominiqueview	Bhutan	\N	\N
305	Jeremy Pena	kmontgomery@carroll.info	1234568195	Perrytown	New Caledonia	\N	\N
306	Brandy Ortega	brownrachel@yahoo.com	1234568196	Port Nicoleview	Belgium	\N	\N
307	Beth Mcguire	lisa66@hotmail.com	1234568197	New Katherine	Paraguay	\N	\N
308	Mrs. Sarah Weaver	williamcunningham@johnson.com	1234568198	Alvaradochester	Montserrat	\N	\N
309	Scott Lee	talexander@hotmail.com	1234568199	East Tracystad	United States Minor Outlying Islands	\N	\N
310	Jennifer Lopez	daltonerika@thompson.info	1234568200	North Emily	Libyan Arab Jamahiriya	\N	\N
311	Victoria Taylor	sarah34@frank-woodard.com	1234568201	Nelsonton	Ukraine	\N	\N
312	Patricia Hughes	colleen51@king.com	1234568202	Pennyland	Denmark	\N	\N
313	David Nelson	laura23@hotmail.com	1234568203	Lake Jane	Macao	\N	\N
314	Brenda Thomas	alvaradocarolyn@hotmail.com	1234568204	West Nathan	Ecuador	\N	\N
315	Kristina Kaiser	adamsgrant@hotmail.com	1234568205	Gonzalesview	Marshall Islands	\N	\N
316	Jacob Miller	kdaniels@gmail.com	1234568206	Maryville	Pakistan	\N	\N
317	Janice Henson	kellymorgan@collins.com	1234568207	East Loriborough	Wallis and Futuna	\N	\N
318	Thomas Mendoza	rhuynh@sanchez.org	1234568208	Watsonfort	Andorra	\N	\N
319	Christine Lewis	natalieconrad@hotmail.com	1234568209	Port Justin	Bahrain	\N	\N
320	Christopher Guzman	dawn39@leach.com	1234568210	Lake Yvonne	Nepal	\N	\N
321	Charlene Arroyo	edowns@holmes-adams.org	1234568211	Wilsonstad	Slovenia	\N	\N
322	William Cameron	lharrell@mcintyre.com	1234568212	Sanchezport	Mexico	\N	\N
323	Jackie Rodgers	pharris@gmail.com	1234568213	Port Jason	Ghana	\N	\N
324	Larry Adams	lorimoses@james.com	1234568214	Lake Julieborough	Cuba	\N	\N
325	Emily Vargas	lklein@gmail.com	1234568215	Aguilarside	Tonga	\N	\N
326	Matthew Henry	jimmycervantes@singh.com	1234568216	Duranstad	Lesotho	\N	\N
327	Judith Frye	jermainerodriguez@gmail.com	1234568217	Dickersonmouth	Lithuania	\N	\N
328	Russell Thompson	moorewilliam@hughes.biz	1234568218	Hallshire	Holy See (Vatican City State)	\N	\N
329	Miguel Jacobs	morgangeorge@buck.com	1234568219	Marshallbury	Estonia	\N	\N
330	Deborah Mcgee	haroldburns@dougherty.com	1234568220	New Angelafurt	French Polynesia	\N	\N
331	Megan Martin	fosterjames@anderson.biz	1234568221	Port Christianberg	Peru	\N	\N
332	Christopher Lewis	smithlauren@hart.com	1234568222	Tracyborough	Gibraltar	\N	\N
333	Valerie Miller	heather99@mccullough.com	1234568223	North Rodney	Papua New Guinea	\N	\N
334	Amy Hahn	wangjason@gmail.com	1234568224	North Tannerville	Serbia	\N	\N
335	Alyssa Zhang	baileymichelle@lewis.com	1234568225	West Lindseyton	Netherlands	\N	\N
336	Vincent Bender	lauraharvey@yahoo.com	1234568226	New Christine	Monaco	\N	\N
337	Katherine Gonzalez	nortonpatrick@martinez.com	1234568227	Munozfort	Tokelau	\N	\N
338	Michelle Esparza	lauren52@hotmail.com	1234568228	North Amandastad	Burundi	\N	\N
339	Lisa Hayes	david63@gmail.com	1234568229	New Beverly	Marshall Islands	\N	\N
340	Ryan Howard	psmith@adams.com	1234568230	New Taylorstad	Myanmar	\N	\N
341	Terry Torres	bnoble@gmail.com	1234568231	East Virginiashire	Mayotte	\N	\N
342	Jonathan Scott	kelly30@yahoo.com	1234568232	Williamsborough	Myanmar	\N	\N
343	Gina Schultz	madison80@hebert.net	1234568233	Kennethville	Bermuda	\N	\N
344	Shawn Allen Jr.	aramirez@arnold.com	1234568234	Port Bruce	Sri Lanka	\N	\N
345	Glen Perez	leslie78@howe.com	1234568235	North Joseph	United States Virgin Islands	\N	\N
346	Julie Mcintyre	dmcintyre@luna.com	1234568236	West Dakotaport	Heard Island and McDonald Islands	\N	\N
347	Peter Greene	michaeldaugherty@yahoo.com	1234568237	Port Michael	Sri Lanka	\N	\N
348	Matthew Gardner	wayne40@wilkerson.com	1234568238	Gentryfort	Mozambique	\N	\N
349	Alexis Castro	harveyralph@wilson.info	1234568239	Lake Jared	Jersey	\N	\N
350	Tina Silva	jallen@koch-phillips.com	1234568240	Delgadoton	Turks and Caicos Islands	\N	\N
351	Melissa Moran	kcarroll@gmail.com	1234568241	Lake Tonya	Lebanon	\N	\N
352	Mr. Hector Miller III	emily63@taylor.com	1234568242	New Cherylton	Ecuador	\N	\N
353	Michael Reese	vargasdylan@stark-hicks.biz	1234568243	Jaclynfurt	Saint Martin	\N	\N
354	Bradley Moore	richardbutler@pineda.com	1234568244	Paulaland	Djibouti	\N	\N
355	Manuel Guzman	dperez@hotmail.com	1234568245	Orrview	Mexico	\N	\N
356	Mary Winters	evansandrew@walls.com	1234568246	Evanshaven	Bahamas	\N	\N
357	Scott Oconnell	matthew25@jones-brown.net	1234568247	Natashaville	China	\N	\N
358	Erika Gray	christopher45@roberts.com	1234568248	Melissaland	Norfolk Island	\N	\N
359	Michelle Jackson	mbyrd@howard.org	1234568249	South Eric	Armenia	\N	\N
360	Roberto Martinez	victoriacrane@simmons.com	1234568250	Patriciaville	Mauritius	\N	\N
361	Joseph Davis	hendricksaustin@gmail.com	1234568251	Carolyntown	Panama	\N	\N
362	Darren Taylor	davisrebecca@webb.org	1234568252	Lake Kristen	Guinea	\N	\N
363	Carrie Martin	williamsanthony@gmail.com	1234568253	Hamiltonfurt	Lithuania	\N	\N
364	Carrie Perez	chelsea23@gillespie-walker.com	1234568254	Kennethland	Hungary	\N	\N
365	Dylan Ryan	marshallsharon@yahoo.com	1234568255	Port Andreaborough	Faroe Islands	\N	\N
366	Kurt Greer	burkekathryn@hotmail.com	1234568256	East Stephaniefort	India	\N	\N
367	Denise Hall	cohenvictoria@yahoo.com	1234568257	Jimmyhaven	Germany	\N	\N
368	Diane Clark	sydney29@nguyen-jones.biz	1234568258	North Michael	Samoa	\N	\N
369	Marie Miller	jamie47@olson.com	1234568259	Kendraport	Cape Verde	\N	\N
370	Kevin Garcia	morenonicole@hotmail.com	1234568260	Port Stacy	Saint Kitts and Nevis	\N	\N
371	Shannon Santos	lhoward@sanchez-mosley.com	1234568261	Hessshire	Malta	\N	\N
372	Jacqueline Ballard	ginarojas@smith.com	1234568262	North Jacquelinefurt	Guadeloupe	\N	\N
373	Rebecca Cruz	pmcknight@yahoo.com	1234568263	Emilymouth	Austria	\N	\N
374	Julie Shaw	pattersonlisa@wagner-thompson.net	1234568264	Lake Jay	Honduras	\N	\N
375	Robert Short	guerraedward@irwin.net	1234568265	South John	Switzerland	\N	\N
376	Justin Donaldson	itaylor@yahoo.com	1234568266	Petersonbury	Syrian Arab Republic	\N	\N
377	Darrell Khan	anna59@hall.com	1234568267	Austinfort	Montenegro	\N	\N
378	Anthony Kane	dana95@yahoo.com	1234568268	Port Josephmouth	Congo	\N	\N
379	Christie Sullivan	chrisrichardson@gmail.com	1234568269	Josephstad	Benin	\N	\N
380	Susan Patel	broberts@flynn.info	1234568270	New Misty	Senegal	\N	\N
381	Shawn Gonzales	tjones@yahoo.com	1234568271	Port Martin	Cayman Islands	\N	\N
382	Tara Duncan	parkscaleb@gmail.com	1234568272	Port Anthonyland	Australia	\N	\N
383	Tiffany Roth	jbowen@gmail.com	1234568273	South Deborah	Saint Martin	\N	\N
384	Thomas Garcia	davidvelez@romero-marsh.com	1234568274	Michaelview	Sri Lanka	\N	\N
385	Kenneth Cohen	jacquelinelee@yahoo.com	1234568275	Robinmouth	Burundi	\N	\N
386	Pamela Gordon	mandy28@thomas-white.com	1234568276	East Richardburgh	Yemen	\N	\N
387	Tanya Morales	michellecraig@gmail.com	1234568277	Buckbury	Puerto Rico	\N	\N
388	Joshua Bass	goodmanmary@lara-bowen.net	1234568278	Christinamouth	Bulgaria	\N	\N
389	Allison Hawkins	lnash@bates-greene.com	1234568279	Lake Patrick	Bhutan	\N	\N
390	Adam Anthony	melissaellis@yahoo.com	1234568280	Christinaport	Vanuatu	\N	\N
391	Eric Vincent	rmoore@singleton-baldwin.com	1234568281	South Christopherberg	Jamaica	\N	\N
392	Dustin Ramirez	steven64@hotmail.com	1234568282	Ryanhaven	Spain	\N	\N
393	Anthony Mcknight	martinmichael@rodriguez-hill.org	1234568283	Port Tanya	New Zealand	\N	\N
394	David Hale	ledwards@hotmail.com	1234568284	Richardburgh	Greece	\N	\N
395	Mary Baird	hgomez@gmail.com	1234568285	Port Gary	Poland	\N	\N
396	Suzanne Marquez	nina87@hotmail.com	1234568286	South Katie	Macedonia	\N	\N
397	Catherine Wilkins	nathanielrogers@yahoo.com	1234568287	Mendezburgh	Australia	\N	\N
398	Dustin Mendez Jr.	michael14@nunez.net	1234568288	Shanebury	Antigua and Barbuda	\N	\N
399	Daniel Andrews	joneschristine@gmail.com	1234568289	East Timothy	Micronesia	\N	\N
400	Heather Ward	doris54@hotmail.com	1234568290	Robertsview	Panama	\N	\N
401	Jason Parker	johnsimpson@hotmail.com	1234568291	Danielview	Bangladesh	\N	\N
402	Ashley Gilmore	joshuawatkins@yahoo.com	1234568292	South Taylor	Costa Rica	\N	\N
403	Heather Thomas	laura69@cohen.com	1234568293	New Michaelview	Turkmenistan	\N	\N
404	Lisa Duran	christina28@espinoza.com	1234568294	Lake Tyler	Korea	\N	\N
405	Julie Smith	knightmonica@krueger-hamilton.biz	1234568295	Freemanland	Vanuatu	\N	\N
406	Mary Mason	gordonpaula@gmail.com	1234568296	Johnport	Bosnia and Herzegovina	\N	\N
407	Christopher Benson	samanthasummers@hotmail.com	1234568297	Toddchester	Tajikistan	\N	\N
408	Crystal Miller	jose68@vasquez.org	1234568298	Sheltonton	Cuba	\N	\N
409	Mark Knight	saratrevino@wagner-hicks.com	1234568299	New Shelby	South Georgia and the South Sandwich Islands	\N	\N
410	Nancy Ramirez	zvalenzuela@snyder-miller.info	1234568300	New Tammy	Vietnam	\N	\N
411	Christopher Rogers	mallory64@yahoo.com	1234568301	Lake Aaronstad	Micronesia	\N	\N
412	Kevin Woodward	graysarah@yahoo.com	1234568302	Lake Karen	Hungary	\N	\N
413	Steven Brown	katherine84@hodges.com	1234568303	Elliottfort	Cameroon	\N	\N
414	Harold Burns	gregorynielsen@johnson.com	1234568304	Lake Hannahton	Tonga	\N	\N
415	James Ramirez	robert54@hall.com	1234568305	Maxwelltown	Canada	\N	\N
416	Lisa Tucker	sarah27@hotmail.com	1234568306	Port Trevorchester	Jamaica	\N	\N
417	Melissa Frey	floresricardo@smith.org	1234568307	Erikaberg	Bahamas	\N	\N
418	Kiara Blankenship MD	grahamvictor@sutton.com	1234568308	Brandimouth	Belarus	\N	\N
419	James Harrison	sarah23@yahoo.com	1234568309	Dominguezstad	Saint Martin	\N	\N
420	Andrew Murray	donaldjohnson@yahoo.com	1234568310	North Joseph	Western Sahara	\N	\N
421	Stephanie Barrett	megan55@ruiz.org	1234568311	East Melissaberg	Cayman Islands	\N	\N
422	Mary Hart	charles30@miller.com	1234568312	Smithmouth	Slovakia (Slovak Republic)	\N	\N
423	Dale Johnson	wmedina@hotmail.com	1234568313	New Keithville	Anguilla	\N	\N
424	Marcus Frazier	kimcurtis@castillo-howe.com	1234568314	West Kevin	Iraq	\N	\N
425	Ashley Perez	williamslindsey@yahoo.com	1234568315	Elizabethshire	United States Minor Outlying Islands	\N	\N
426	Maurice Moore	lori14@gmail.com	1234568316	Flowersland	Algeria	\N	\N
427	Craig Mcdowell	stacey22@campbell-douglas.com	1234568317	Sergiomouth	Timor-Leste	\N	\N
428	Andrew Wells	jacklutz@hotmail.com	1234568318	Bookerbury	Guadeloupe	\N	\N
429	Rhonda Norton	crystalnoble@gmail.com	1234568319	South Timothy	Tajikistan	\N	\N
430	Gabrielle Parks	harrisbrooke@campbell.com	1234568320	Andersenview	Congo	\N	\N
431	John Hanson	vsanders@gmail.com	1234568321	Kaylafurt	Dominican Republic	\N	\N
432	Ruth Mckay	patricia65@yahoo.com	1234568322	Cochranshire	Jordan	\N	\N
433	Corey Wells	swagner@robertson.net	1234568323	East David	Zambia	\N	\N
434	Melanie Parker	nicole84@hotmail.com	1234568324	Phelpsborough	Uganda	\N	\N
435	Nicholas Gonzalez	darrell16@mann.com	1234568325	Tamarafurt	Iran	\N	\N
436	Andrea Cortez	jennifer47@curry.com	1234568326	Garciaberg	Mexico	\N	\N
437	Cynthia Cooper	russellpriscilla@gmail.com	1234568327	Wrightfurt	Philippines	\N	\N
438	Ebony Ramos	rachel07@gmail.com	1234568328	North Stephenmouth	Tajikistan	\N	\N
439	Shane Chang	melanie56@fleming.com	1234568329	Ramosstad	Liechtenstein	\N	\N
440	Elizabeth Romero	sanchezemily@hotmail.com	1234568330	Port Dianaville	Grenada	\N	\N
441	Amanda Hicks	ryan06@hudson.org	1234568331	New Melindamouth	Bermuda	\N	\N
442	Heather Melendez	teresacowan@hotmail.com	1234568332	West Angelaview	Gabon	\N	\N
443	Vincent Cummings	daviskyle@hotmail.com	1234568333	Stacymouth	Monaco	\N	\N
444	Benjamin Medina	castillocarl@gross.org	1234568334	Larrychester	Mali	\N	\N
445	Alexis Frye	antoniowilkerson@hotmail.com	1234568335	Jenniferberg	Gibraltar	\N	\N
446	Michael Park	gjacobs@gmail.com	1234568336	East Robert	Zimbabwe	\N	\N
447	Emily Wilkerson	jchaney@yahoo.com	1234568337	Parkerside	Zimbabwe	\N	\N
448	Brandon Hall	michaeljohnson@gmail.com	1234568338	North Ronniestad	Puerto Rico	\N	\N
449	Linda Reid	hartwendy@sanchez.info	1234568339	Frenchburgh	New Zealand	\N	\N
450	Shari Schmidt	ccook@scott.com	1234568340	Lake Edward	Slovenia	\N	\N
451	Travis Harper	vbryant@hotmail.com	1234568341	West Brendachester	Pitcairn Islands	\N	\N
452	Jacqueline Owens	tiffanyharrison@lopez-webb.com	1234568342	Lake Cynthia	Angola	\N	\N
453	Joseph Roth	regina79@wilson.biz	1234568343	Matthewstad	Nepal	\N	\N
454	April Anderson	calexander@yahoo.com	1234568344	Micheleborough	Guyana	\N	\N
455	Rodney Young	eblankenship@gmail.com	1234568345	New Shannon	Palestinian Territory	\N	\N
456	Stacy Mendoza	mccarthycathy@gmail.com	1234568346	Pamelaland	New Zealand	\N	\N
457	Kim Turner	jennifer45@weiss-perry.com	1234568347	South Rachelview	Cambodia	\N	\N
458	Yvonne Martin	alyssanash@perez-luna.net	1234568348	West Amanda	Cuba	\N	\N
459	Veronica Lee	joseph12@villegas-french.biz	1234568349	East Jessicafurt	Heard Island and McDonald Islands	\N	\N
460	Jasmine Garner	dukebrandon@hotmail.com	1234568350	North Kimberlyland	Croatia	\N	\N
461	Crystal Pierce	webbteresa@gutierrez-garcia.com	1234568351	Port Davidhaven	Denmark	\N	\N
462	James Brewer	ebrown@ewing-warner.com	1234568352	Chandlerberg	Mongolia	\N	\N
463	Brandon Dunn	martinezdarren@hotmail.com	1234568353	East Lindsey	Saint Kitts and Nevis	\N	\N
464	Rebecca Baldwin	hroth@hotmail.com	1234568354	East Stephen	Macedonia	\N	\N
465	Vanessa Kennedy	dustin35@davenport.org	1234568355	Ryanville	Afghanistan	\N	\N
466	Mrs. Emily Williams	areynolds@herring.info	1234568356	East Antonioton	Cook Islands	\N	\N
467	Anna Green	tony39@hotmail.com	1234568357	East Jennifertown	New Caledonia	\N	\N
468	David Hart	stokesrebecca@gmail.com	1234568358	Thompsonfurt	Canada	\N	\N
469	Kimberly Vega	psmith@yahoo.com	1234568359	Daniellestad	Svalbard & Jan Mayen Islands	\N	\N
470	Mary Vasquez DDS	kmullins@crawford.com	1234568360	Lake Melissa	Turkey	\N	\N
471	Sandra Davis	johnsongeorge@gmail.com	1234568361	Tiffanyland	Netherlands	\N	\N
472	Holly Pratt	schultznathan@yahoo.com	1234568362	Lake Thomas	Italy	\N	\N
473	Carolyn Tate	erinmeyer@sellers.org	1234568363	East Melanie	Saint Vincent and the Grenadines	\N	\N
474	Anthony Young	rogersbill@gmail.com	1234568364	East Chelsea	Cook Islands	\N	\N
475	Joseph Boyd	dawnmartin@hotmail.com	1234568365	Derekview	Mauritania	\N	\N
476	Stephanie Martinez	robertomoore@lee-kemp.net	1234568366	Aprilshire	Zimbabwe	\N	\N
477	Jonathan Hampton	wcobb@morales-sherman.com	1234568367	Byrdville	Slovakia (Slovak Republic)	\N	\N
478	Spencer Rivera	candiceclayton@gmail.com	1234568368	Joshuabury	Grenada	\N	\N
479	Stephanie Martinez	lbrown@potts.com	1234568369	Jessicamouth	Singapore	\N	\N
480	Jennifer Pacheco	kendrashelton@robertson.com	1234568370	Lake Stephen	Pakistan	\N	\N
481	William Hunt	dannygreen@gmail.com	1234568371	North Josehaven	American Samoa	\N	\N
482	Mark Ross	maria69@gmail.com	1234568372	New David	Luxembourg	\N	\N
483	Carolyn Berry	mitchelljesus@jones-bartlett.com	1234568373	Lake Ericchester	Tunisia	\N	\N
484	Christine Burton	hawkinstiffany@hotmail.com	1234568374	Richardsonbury	Latvia	\N	\N
485	Andrew Figueroa	john28@gmail.com	1234568375	New Veronicaside	Macedonia	\N	\N
486	Melanie Kelly	eric02@johnson.com	1234568376	East Karenmouth	Ukraine	\N	\N
487	Valerie Barnes	garciazachary@hotmail.com	1234568377	North Vickistad	Egypt	\N	\N
488	Gerald Miranda	gregsmith@hotmail.com	1234568378	North Brian	Heard Island and McDonald Islands	\N	\N
489	Jennifer Dominguez	pcompton@gmail.com	1234568379	Susanland	Jamaica	\N	\N
490	Brittany Young	christopher21@young.com	1234568380	Thomasbury	Saint Kitts and Nevis	\N	\N
491	Timothy Moore	jasongutierrez@gmail.com	1234568381	Vincentburgh	El Salvador	\N	\N
492	Tara Austin	millerandre@hayes.org	1234568382	Lake Hunterstad	Haiti	\N	\N
493	Lauren Andrews	lhorton@silva-marshall.com	1234568383	South Joshualand	Tokelau	\N	\N
494	Michelle Guzman	lstanley@yahoo.com	1234568384	Ericaton	Suriname	\N	\N
495	Patrick Rivera	donaldmadden@hotmail.com	1234568385	Lake Elizabethborough	Comoros	\N	\N
496	Michelle Myers	patricia02@vega-callahan.com	1234568386	Davidview	Netherlands Antilles	\N	\N
497	Shane Klein	murphytheodore@rodriguez-lopez.biz	1234568387	West Billymouth	Cote d'Ivoire	\N	\N
498	Brianna Fischer	jessicacoleman@yahoo.com	1234568388	Angelatown	Gibraltar	\N	\N
499	Melissa Curtis	suzannemartinez@gmail.com	1234568389	Ashleyport	Monaco	\N	\N
500	James York	maydavid@maldonado.org	1234568390	Port Angela	Moldova	\N	\N
0	Ranu Mandal	ranukale@kalewada.com	7878784545	chanakya	Jorden	0	\N
1	Deborah Griffith	balljoseph@wright-keith.net	1234567891	South Craigfort	Denmark	1	32514
\.


--
-- TOC entry 5042 (class 0 OID 16472)
-- Dependencies: 225
-- Data for Name: customers2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers2 (customers_id, name, email, phone, city, country, gender, salary) FROM stdin;
\.


--
-- TOC entry 5043 (class 0 OID 16478)
-- Dependencies: 226
-- Data for Name: customers3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers3 (customers_id, name, email, phone, city, country) FROM stdin;
\.


--
-- TOC entry 5044 (class 0 OID 16483)
-- Dependencies: 227
-- Data for Name: customers4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers4 (customers_id, name, email, phone, city, country, gender, salary) FROM stdin;
2	Crystal Clements	kimberlybennett@curtis.com	1234567892	East Derekberg	Nicaragua	\N	\N
3	Susan Fuller	beanmichael@burnett-stewart.net	1234567893	Austinbury	Equatorial Guinea	\N	\N
4	Jamie Ramirez	amandahood@warren.com	1234567894	Dianamouth	Slovenia	\N	\N
5	Marcus Murphy	connerjohn@yahoo.com	1234567895	Smithbury	Guinea-Bissau	\N	\N
6	Stephen Vasquez	ricemiguel@yahoo.com	1234567896	Hamiltonstad	Rwanda	\N	\N
7	Susan Hicks	jeffrey91@yahoo.com	1234567897	East Rebecca	Montenegro	\N	\N
8	Matthew Johnson	austinkenneth@manning.net	1234567898	Kirstenborough	Israel	\N	\N
9	Matthew Williams	jeffrey41@diaz.com	1234567899	Rebeccafurt	Somalia	\N	\N
10	Ronald Osborn	staciekelley@heath.com	1234567900	Lake Benjamin	Cameroon	\N	\N
11	Thomas Garcia	rmiller@gmail.com	1234567901	West Monicabury	Argentina	\N	\N
12	Jennifer Murray	wilsonbrittany@hotmail.com	1234567902	South Ashleychester	Zimbabwe	\N	\N
13	Kristine Kim	sarahwilliams@hotmail.com	1234567903	Lake Robert	Nigeria	\N	\N
14	John Wood	johnsonalexander@gmail.com	1234567904	Richardsonville	New Caledonia	\N	\N
15	Vanessa Gaines	tbullock@gmail.com	1234567905	Rodriguezmouth	Wallis and Futuna	\N	\N
16	Stacey Flores	jackjackson@hotmail.com	1234567906	East Michaelfurt	Saint Helena	\N	\N
17	Christine Maldonado	ztaylor@yahoo.com	1234567907	Smithborough	Chile	\N	\N
18	David Watson	laurenlawson@alvarez-mcfarland.com	1234567908	New Josephtown	Equatorial Guinea	\N	\N
19	Marc Nash	joshua59@gmail.com	1234567909	Davidton	French Guiana	\N	\N
20	Robert Salas	schultzjohn@thomas.com	1234567910	Schultzchester	Denmark	\N	\N
21	Edgar Frost	maria51@gmail.com	1234567911	Jonathanhaven	Saudi Arabia	\N	\N
22	Stacey Adams	fjohnson@gmail.com	1234567912	Clintonmouth	Iceland	\N	\N
23	Hannah Drake	sandersallen@hotmail.com	1234567913	Deannabury	Faroe Islands	\N	\N
24	Christina Mitchell	justin67@yahoo.com	1234567914	Bridgestown	Trinidad and Tobago	\N	\N
25	James Martin	reynoldstyrone@wiggins.com	1234567915	North James	Yemen	\N	\N
26	Dylan Bell	isaac43@gmail.com	1234567916	North Aaron	Guam	\N	\N
27	Debbie Sampson	collin21@hotmail.com	1234567917	Christopherburgh	Bahamas	\N	\N
28	William Burns	valeriemack@gmail.com	1234567918	South Kristyville	Netherlands	\N	\N
29	John Maxwell	martinsamantha@martin.net	1234567919	Nolanstad	Cuba	\N	\N
30	Dylan Garcia	oanderson@yahoo.com	1234567920	Hallfort	Turkey	\N	\N
31	Amanda Morton	lolsen@jones.com	1234567921	Marktown	Antigua and Barbuda	\N	\N
32	Jeffrey Shannon	nmcmillan@smith.com	1234567922	New Carlosbury	Malta	\N	\N
33	Kristin Hall	michele78@yahoo.com	1234567923	Underwoodfurt	Cuba	\N	\N
34	Ryan Love	joseph37@gmail.com	1234567924	Leestad	Anguilla	\N	\N
35	Daniel Gonzalez	nday@combs.com	1234567925	Hoovermouth	Fiji	\N	\N
36	Benjamin Wallace	alexander26@hotmail.com	1234567926	Schroederton	Botswana	\N	\N
37	Ryan Lara	benjamin38@thompson-adams.net	1234567927	Port Jameschester	Chad	\N	\N
38	Nicholas Harris	christine93@perkins.com	1234567928	Davistown	Canada	\N	\N
39	Tonya Arnold	aprice@hotmail.com	1234567929	Nelsonmouth	Japan	\N	\N
40	Beth Gomez	wjackson@bowen.com	1234567930	Hollyhaven	Myanmar	\N	\N
41	Samuel Daniels	andrew07@gmail.com	1234567931	Codyton	Benin	\N	\N
42	Susan Wilson	ohood@yahoo.com	1234567932	Jeffreystad	Niger	\N	\N
43	Steven Stone	jill61@herrera.org	1234567933	Ashleytown	Maldives	\N	\N
44	Alexis Gallegos	craig42@smith-carroll.com	1234567934	Conniefort	Lesotho	\N	\N
45	Jennifer Fowler	whitemargaret@blackwell.info	1234567935	Carlsonfort	Ireland	\N	\N
46	Travis Wells	stacywilson@hotmail.com	1234567936	New David	Moldova	\N	\N
47	Debra Park	dawnmyers@munoz-ayala.com	1234567937	Phillipsmouth	Isle of Man	\N	\N
48	Paula Harris	lisa63@barber.org	1234567938	Reginaside	Saint Kitts and Nevis	\N	\N
49	Anne Dean	katrinaedwards@anderson.org	1234567939	Jonathanberg	Heard Island and McDonald Islands	\N	\N
50	Kimberly Thomas	omoore@garcia.com	1234567940	New Ruben	Tajikistan	\N	\N
51	Cynthia Walker	huertarobert@gmail.com	1234567941	Lake Robertfort	Yemen	\N	\N
52	Ian Lopez	larry64@gmail.com	1234567942	North Ashleyside	Guyana	\N	\N
53	Sandra Coleman	emerritt@yahoo.com	1234567943	Lake Karenmouth	Netherlands Antilles	\N	\N
54	Rachel Jones	bmedina@hotmail.com	1234567944	Brendafurt	Central African Republic	\N	\N
55	Michelle Stevens	janicethompson@jones-arnold.com	1234567945	Wagnerfurt	Romania	\N	\N
56	Dr. Susan Nichols	hernandezchelsea@thompson.com	1234567946	East Lisaberg	Netherlands Antilles	\N	\N
57	Nicolas Joseph	debra75@gmail.com	1234567947	Lindaburgh	Congo	\N	\N
58	Michael Young	anthony39@gmail.com	1234567948	Lake Tannerton	United Arab Emirates	\N	\N
59	Andrew Collins	msanchez@king.net	1234567949	West Sheri	Guatemala	\N	\N
60	Steven Matthews	timothy98@durham.info	1234567950	Lake Sharonville	Senegal	\N	\N
61	Lindsay Reynolds	cynthia58@robinson.biz	1234567951	Port Manuelfurt	Belgium	\N	\N
62	Paul Heath	pamelamartin@yahoo.com	1234567952	East Shannonview	Isle of Man	\N	\N
63	Manuel Lewis	alicia70@hotmail.com	1234567953	Brendatown	Heard Island and McDonald Islands	\N	\N
64	Jennifer Clark	michael13@cantu-hawkins.com	1234567954	Jamesville	British Indian Ocean Territory (Chagos Archipelago)	\N	\N
65	Laura Wiggins	christopherhughes@gmail.com	1234567955	Sherryport	Tokelau	\N	\N
66	Molly Diaz	rwhite@gmail.com	1234567956	Brandonside	Seychelles	\N	\N
67	Denise Chapman	andrew13@pacheco-hughes.com	1234567957	Garcialand	Cote d'Ivoire	\N	\N
68	Kimberly Smith	imiller@gmail.com	1234567958	East Raymond	Indonesia	\N	\N
69	Gary Kaiser	linda39@yahoo.com	1234567959	South David	Saint Kitts and Nevis	\N	\N
70	Laura Duarte	jimenezchristine@dickson.com	1234567960	West Kimberlyhaven	Finland	\N	\N
71	Mrs. Natalie Hopkins DDS	douglasmccarthy@woodward-gallagher.com	1234567961	West Sarah	United States Virgin Islands	\N	\N
72	Ms. Nicole Lee	mary21@henry-maynard.com	1234567962	West Ethan	Saint Barthelemy	\N	\N
73	Peter Krueger	vwelch@yahoo.com	1234567963	New Lawrenceton	Zimbabwe	\N	\N
74	Bryan Moore	brendawong@juarez-camacho.biz	1234567964	Blackchester	Norfolk Island	\N	\N
75	Carla Webb	jennifer35@mann.biz	1234567965	Jasonmouth	Gabon	\N	\N
76	Kim Wang	jonesdylan@gmail.com	1234567966	Janicemouth	Turkey	\N	\N
77	Jason Villegas	thomas00@stewart.com	1234567967	Fieldsland	Senegal	\N	\N
78	Dr. Laurie Trevino	ryanbuchanan@hotmail.com	1234567968	Amberton	Saint Barthelemy	\N	\N
79	Daniel Brown	walkerrichard@young-grimes.com	1234567969	Villarrealland	Pakistan	\N	\N
80	Joy Fisher	kentchristian@gmail.com	1234567970	West Rogerview	Tuvalu	\N	\N
81	Matthew Hall	patrick24@hotmail.com	1234567971	Lake Zachary	Suriname	\N	\N
82	Shaun Fernandez	greenmichael@hotmail.com	1234567972	Wrightburgh	Malaysia	\N	\N
83	Aaron Clark	jessica98@hotmail.com	1234567973	Thomashaven	Fiji	\N	\N
84	Gary Blair	leonardtaylor@bowers.net	1234567974	Lake Paul	Armenia	\N	\N
85	Sheila Coleman	cmyers@cooper-davies.com	1234567975	South Connie	Bangladesh	\N	\N
86	Molly Robinson	rebeccataylor@mcbride.info	1234567976	South Kathleen	Cuba	\N	\N
87	Nathan Robbins	jenniferrodgers@garrison-baker.com	1234567977	East Tylertown	Bolivia	\N	\N
88	Gregory Joseph	kimangela@yahoo.com	1234567978	Fletcherview	Algeria	\N	\N
89	Erik Wang	gparks@yahoo.com	1234567979	New Desireebury	United Kingdom	\N	\N
90	Matthew Meyer	moorebrittany@yahoo.com	1234567980	West Christopher	Benin	\N	\N
91	Breanna Gonzalez	usimon@wright.com	1234567981	Andrewberg	Sierra Leone	\N	\N
92	Heather Hamilton	kathy50@hotmail.com	1234567982	Davidshire	Croatia	\N	\N
93	Jacob Cox	frank29@yahoo.com	1234567983	Robertburgh	San Marino	\N	\N
94	Mr. David Cox	millermichael@gmail.com	1234567984	West Anthony	New Zealand	\N	\N
95	Laura Fox	samanthaking@hogan.org	1234567985	New Theresa	Guadeloupe	\N	\N
96	Levi Pierce	bayers@gmail.com	1234567986	Dayburgh	Bouvet Island (Bouvetoya)	\N	\N
97	Daniel Sanford	amanda13@yahoo.com	1234567987	Lake Stevenhaven	French Southern Territories	\N	\N
98	Robert Blair	anicholson@gregory.com	1234567988	Josephfurt	United States Virgin Islands	\N	\N
99	Timothy Lane	janet99@davis.net	1234567989	South Heather	Turkey	\N	\N
100	Karla Guerrero	wsimpson@yahoo.com	1234567990	Dustinview	Argentina	\N	\N
101	Brooke Kline	shirleythomas@allen-skinner.net	1234567991	New James	Georgia	\N	\N
102	Christopher Williams	ufigueroa@hotmail.com	1234567992	Cherylport	Macedonia	\N	\N
103	Ashley Castro	watsonmolly@yahoo.com	1234567993	Leeport	Swaziland	\N	\N
104	Anthony Ortiz	amartinez@gmail.com	1234567994	Michaelfort	Nicaragua	\N	\N
105	Billy Ochoa	mstrong@yahoo.com	1234567995	Samanthaburgh	Andorra	\N	\N
106	Deborah Weber	kimberly54@yahoo.com	1234567996	North Dana	Equatorial Guinea	\N	\N
107	Amy Hunt	emilybecker@perkins.com	1234567997	Ericborough	Aruba	\N	\N
108	Brian Thompson	resparza@hotmail.com	1234567998	Banksshire	Tokelau	\N	\N
109	Jacob Kelley	qbarber@shelton.org	1234567999	Ravenberg	Macao	\N	\N
110	Rachel Phillips	jgutierrez@gmail.com	1234568000	Chelseachester	Serbia	\N	\N
111	Danielle Parsons	millerdaniel@hotmail.com	1234568001	Port Jessica	Brunei Darussalam	\N	\N
112	Andrew Wilson	johnny54@gmail.com	1234568002	North Nicholasmouth	Guinea-Bissau	\N	\N
113	Amy Peterson	frazierapril@hotmail.com	1234568003	Wellstown	Niger	\N	\N
114	Austin Baxter	chavezpaula@gmail.com	1234568004	Bellfurt	Uganda	\N	\N
115	Jacob Fernandez	adamsmith@mckay-ward.com	1234568005	East Lisashire	Micronesia	\N	\N
116	Joshua Rodriguez	melissa54@gmail.com	1234568006	Charleston	Palestinian Territory	\N	\N
117	Molly Murphy	jamesswanson@williams-smith.info	1234568007	Sawyerchester	Korea	\N	\N
118	Cynthia Stephens	nichole06@obrien-smith.com	1234568008	North Brian	Puerto Rico	\N	\N
119	Alyssa Cuevas	hholland@gmail.com	1234568009	Lake Victormouth	Serbia	\N	\N
120	Rita Wallace	catherinehayes@hotmail.com	1234568010	Lake Eric	Zimbabwe	\N	\N
121	Ashley Hernandez	wfrey@sosa.info	1234568011	Jenniferfurt	Japan	\N	\N
122	Colleen Navarro	darlenelawson@chan.com	1234568012	Russellshire	Belarus	\N	\N
123	Renee Clay	bellison@yahoo.com	1234568013	Bowmanport	Moldova	\N	\N
124	Mark Wilson	vaughansarah@gutierrez-patton.com	1234568014	North Juan	Antigua and Barbuda	\N	\N
125	Rebecca Perez	udavis@patton.com	1234568015	Michelleview	Sri Lanka	\N	\N
126	Bonnie Mcdonald	david81@shelton.com	1234568016	South Dianafurt	Myanmar	\N	\N
127	Joseph Mcmahon	sharon15@stone.com	1234568017	Lake Mary	Reunion	\N	\N
128	Lori Diaz	wellsmichael@baker.info	1234568018	Mallorymouth	Eritrea	\N	\N
129	Carolyn Perez	singhsarah@gmail.com	1234568019	Adkinsview	Macedonia	\N	\N
130	Michael Dodson	janice97@hotmail.com	1234568020	Courtneymouth	Grenada	\N	\N
131	Peter Smith	wmorales@miller.com	1234568021	North Carolyn	Jersey	\N	\N
132	Angela Maynard	millerjason@yahoo.com	1234568022	Milesmouth	India	\N	\N
133	Kristen Green	pyoung@hotmail.com	1234568023	West John	Iran	\N	\N
134	Nichole Velez	brenda93@gmail.com	1234568024	Keithberg	Uruguay	\N	\N
135	Katrina Diaz	amullins@hernandez.info	1234568025	Fishermouth	Samoa	\N	\N
136	Samantha Callahan	billysmith@yahoo.com	1234568026	Popeberg	Anguilla	\N	\N
137	Steven Miller	tsummers@yahoo.com	1234568027	North Keith	Papua New Guinea	\N	\N
138	Barbara Knight	bryan17@hotmail.com	1234568028	Shellyhaven	Georgia	\N	\N
139	Ruth Young	michelleaustin@gmail.com	1234568029	North Mallorytown	United States Minor Outlying Islands	\N	\N
140	Brett Henderson	zturner@matthews-clark.com	1234568030	Leeview	Liberia	\N	\N
141	Ryan Hernandez	morganhubbard@yahoo.com	1234568031	Stephanieberg	Saint Pierre and Miquelon	\N	\N
142	Patricia Lowe	tylerbennett@johnston.com	1234568032	North Danafurt	Luxembourg	\N	\N
143	Luis Stafford	pateltim@edwards.com	1234568033	Lake Robert	Qatar	\N	\N
144	Austin Shea	christopherhart@davis.com	1234568034	Port Jeffreybury	San Marino	\N	\N
145	Jessica Mays	david49@donaldson.com	1234568035	North Aaronton	Morocco	\N	\N
146	Yvonne Miles	fbaker@yahoo.com	1234568036	West Cynthiaview	Aruba	\N	\N
147	Melissa Frazier	patrickanderson@yahoo.com	1234568037	Lake Amyfort	Afghanistan	\N	\N
148	Steven Bryant	gbrowning@yahoo.com	1234568038	Lake Paul	Barbados	\N	\N
149	Jason Robinson	masonzachary@gmail.com	1234568039	Victoriafurt	French Guiana	\N	\N
150	Dr. Jessica Perez	stephanie05@padilla.net	1234568040	Rojasmouth	Saint Barthelemy	\N	\N
151	Katie Lang	perezjudith@delacruz.org	1234568041	Lake Anthony	Belgium	\N	\N
152	Rebecca Buckley	fross@hotmail.com	1234568042	East Marymouth	Malawi	\N	\N
153	George Wright	hillhannah@brown-carroll.info	1234568043	New Marie	Korea	\N	\N
154	Kristin Montoya	petersonvictoria@hawkins.org	1234568044	Port Theresa	Guernsey	\N	\N
155	James Stuart	staceycohen@chen.com	1234568045	South Mariaside	Turks and Caicos Islands	\N	\N
156	Jordan Mcguire	bradleyhernandez@yahoo.com	1234568046	Taylormouth	Cuba	\N	\N
157	Stephanie Curry	stokescaroline@gmail.com	1234568047	Port Anna	Kyrgyz Republic	\N	\N
158	Michael Garcia	brian45@miller.com	1234568048	Emilymouth	Russian Federation	\N	\N
159	Jennifer White	epage@yahoo.com	1234568049	Port Rebecca	Pitcairn Islands	\N	\N
160	Robert Brooks	johnnygriffith@gmail.com	1234568050	Lake Sarahside	Finland	\N	\N
161	Mr. Frederick Harrison	melissawilliams@green.com	1234568051	Darlenehaven	Lebanon	\N	\N
162	Taylor Browning	oschmidt@hotmail.com	1234568052	Petertown	Spain	\N	\N
163	Robert Clark	sheilalester@gmail.com	1234568053	Lake Charleshaven	Macao	\N	\N
164	Eric Lyons	barbara97@hotmail.com	1234568054	Joannahaven	Panama	\N	\N
165	John Clark	wcunningham@gmail.com	1234568055	New Michael	Svalbard & Jan Mayen Islands	\N	\N
166	John Delacruz	dhurley@walsh.biz	1234568056	Port Timothy	Monaco	\N	\N
167	Justin Spencer	michaelsnyder@gmail.com	1234568057	Christopherchester	South Africa	\N	\N
168	Ashley Larsen	daniellewilliams@stone-moore.com	1234568058	Port Aaronstad	Papua New Guinea	\N	\N
169	Robert Rodriguez	wellsmark@henderson.net	1234568059	New Kimberlyville	British Virgin Islands	\N	\N
170	Allison Nguyen	pamela82@butler-wolfe.com	1234568060	Paulashire	Bulgaria	\N	\N
171	Catherine Short	jeffreymahoney@morales.info	1234568061	Derekberg	Kenya	\N	\N
172	Henry Robinson	isaac98@gmail.com	1234568062	Port Alicia	China	\N	\N
173	Victoria Dixon	caseytina@yahoo.com	1234568063	Annhaven	French Polynesia	\N	\N
174	Jonathon Strickland	ryan10@yahoo.com	1234568064	Bakerton	Dominica	\N	\N
175	Barbara Rodriguez	smithmichele@moran.com	1234568065	Williamsfurt	Papua New Guinea	\N	\N
176	Sandra Booker	williamjenkins@gmail.com	1234568066	Matthewport	Uruguay	\N	\N
177	Sarah Powell	bryan44@yahoo.com	1234568067	Kaylatown	Guyana	\N	\N
178	Justin Roberson	johnsonrebecca@gmail.com	1234568068	Lake Brittany	Barbados	\N	\N
179	John Foster	andrew52@sanchez-mullen.info	1234568069	Novakland	Andorra	\N	\N
180	Robert Pearson	jamie14@yahoo.com	1234568070	New Robertoshire	Niger	\N	\N
181	Courtney Ray	robert24@montgomery-frazier.com	1234568071	Josephstad	Honduras	\N	\N
182	Randy Oliver	robbinsmicheal@cox.com	1234568072	Adrianafort	Sudan	\N	\N
183	Jeffrey Howard	ramirezcaroline@weeks.info	1234568073	New Kylefurt	Saint Martin	\N	\N
184	Richard Mclaughlin	webbpatrick@hotmail.com	1234568074	Bestbury	Somalia	\N	\N
185	Katelyn Rhodes	sbrooks@yahoo.com	1234568075	Rothshire	Mauritania	\N	\N
186	Kimberly Gallagher	derek84@hotmail.com	1234568076	West Steven	Netherlands	\N	\N
187	Tiffany Brewer	ocruz@yahoo.com	1234568077	New Laura	Mongolia	\N	\N
188	Walter Owens	barbaraross@knight-brown.org	1234568078	Clarkmouth	Senegal	\N	\N
189	Jason Bell	williambrown@hotmail.com	1234568079	Taylorfurt	Somalia	\N	\N
190	Stephen Jones	brandon93@hotmail.com	1234568080	Jonesmouth	Italy	\N	\N
191	Natasha Owens	xpreston@yahoo.com	1234568081	Bradleyburgh	Tonga	\N	\N
192	Paige Mendez DVM	hcross@gmail.com	1234568082	New Melissahaven	Slovakia (Slovak Republic)	\N	\N
193	Adam Grant	xrodgers@gmail.com	1234568083	South Christina	Bangladesh	\N	\N
194	Eric Jimenez	nelliott@yahoo.com	1234568084	West Robinport	Sweden	\N	\N
195	Dominique Turner	tracy39@smith-miller.com	1234568085	Rogersborough	Djibouti	\N	\N
196	Sean Brooks	james06@yahoo.com	1234568086	Phillipsbury	Cyprus	\N	\N
197	Patrick Henderson	ivelasquez@best-carey.com	1234568087	East Amandaport	Lao People's Democratic Republic	\N	\N
198	Curtis Winters	rodriguezmadison@herrera.com	1234568088	Davidburgh	Qatar	\N	\N
199	Anthony Simmons	brittanyellis@davis-scott.com	1234568089	East Sandra	Micronesia	\N	\N
200	Ashley Powers	probinson@gmail.com	1234568090	West Danny	Pitcairn Islands	\N	\N
201	David Lopez	ngonzalez@yahoo.com	1234568091	Zacharyfort	Bouvet Island (Bouvetoya)	\N	\N
202	Sara Johnson	jacobjohnson@ortega-johnson.com	1234568092	Joshualand	Nicaragua	\N	\N
203	William Walters	jenna96@hotmail.com	1234568093	South Heather	Austria	\N	\N
204	Dominic Jenkins	edavenport@jenkins-green.com	1234568094	Yvonneside	Svalbard & Jan Mayen Islands	\N	\N
205	William Cook	wjackson@hotmail.com	1234568095	Jamesbury	Bolivia	\N	\N
206	Diana Davis	tmckay@hotmail.com	1234568096	Christophertown	Antigua and Barbuda	\N	\N
207	Sarah Williams	dorseymichael@garcia-smith.com	1234568097	Barbarahaven	United Kingdom	\N	\N
208	Amy Hill	morenoheather@scott.com	1234568098	Padillaville	Turkmenistan	\N	\N
209	Michael Maldonado	raymondmyers@trujillo.com	1234568099	Donnatown	Slovakia (Slovak Republic)	\N	\N
210	Susan Cline	ramirezdavid@cook.org	1234568100	Ericfurt	Lithuania	\N	\N
211	Ronald Jordan	nhernandez@farmer.org	1234568101	Leonardport	Fiji	\N	\N
212	Jason Cox	lwoods@bentley.biz	1234568102	West Ricky	Marshall Islands	\N	\N
213	Joshua Page	robertwiggins@gmail.com	1234568103	East Kyle	Bangladesh	\N	\N
214	Alexander Scott	amypierce@hotmail.com	1234568104	Matthewfurt	El Salvador	\N	\N
215	Jennifer Thomas	vrodgers@burns.com	1234568105	East Hunterview	Palau	\N	\N
216	Phillip Allen	brianwatkins@gmail.com	1234568106	Kelseyfort	Micronesia	\N	\N
217	Lisa Powers	hamiltonjose@hotmail.com	1234568107	Garnertown	Uzbekistan	\N	\N
218	Craig Berger	stacymccall@gmail.com	1234568108	Sparksberg	Pitcairn Islands	\N	\N
219	Jamie Cruz	woodmelissa@hotmail.com	1234568109	Lake Amber	Zambia	\N	\N
220	Jasmin Sullivan	randalllowery@yahoo.com	1234568110	Ellistown	Equatorial Guinea	\N	\N
221	William Payne	haileyjohnson@hotmail.com	1234568111	West Adrienneton	Reunion	\N	\N
222	Madison Stevens	staylor@copeland.info	1234568112	Baldwinfurt	Jersey	\N	\N
223	Miss Catherine Simon	cjohnson@gmail.com	1234568113	Mindytown	Belgium	\N	\N
224	Julie Stewart	uthompson@hotmail.com	1234568114	Smithmouth	British Indian Ocean Territory (Chagos Archipelago)	\N	\N
225	Christopher Mccullough	kcarlson@yahoo.com	1234568115	Port Amandahaven	Jersey	\N	\N
226	Kevin Collins	smithclinton@goodman-jackson.com	1234568116	Thomaschester	San Marino	\N	\N
227	Jeffery Zimmerman	michaelbell@miranda-thomas.info	1234568117	West Robertport	Indonesia	\N	\N
228	Janet Hobbs	hansenkristin@wright-white.net	1234568118	Mcguireton	Australia	\N	\N
229	Kimberly Jackson	bryansmith@lopez.info	1234568119	New Dorothytown	Azerbaijan	\N	\N
230	Elijah Baker	barneslatoya@daniels-esparza.com	1234568120	Jeffreybury	Comoros	\N	\N
231	Casey Brown	joanmartinez@yahoo.com	1234568121	North Andrew	Congo	\N	\N
232	Kelli Bishop	xmiller@gmail.com	1234568122	Port Jasonview	Jersey	\N	\N
233	Mark Ward	jason80@osborne.com	1234568123	East Shaun	Macao	\N	\N
234	Mr. Jamie Rosario	kimberlyjones@moore.info	1234568124	Nicoleshire	Djibouti	\N	\N
235	Abigail Newman	vlang@sanders-ellis.com	1234568125	Martintown	Sudan	\N	\N
236	Daniel Powers	kingamber@gmail.com	1234568126	West John	Sierra Leone	\N	\N
237	Shannon Smith	karenwalton@williams.com	1234568127	Diazchester	Turkey	\N	\N
238	Shelby Wells	cfox@hotmail.com	1234568128	East Noah	Portugal	\N	\N
239	Amanda Kramer	kelly09@lopez.biz	1234568129	Kellermouth	Egypt	\N	\N
240	Paul Waters	kyle55@thomas.org	1234568130	Amandamouth	Fiji	\N	\N
241	Christopher Lewis	john63@brandt.net	1234568131	Lake Shawn	Swaziland	\N	\N
242	Mandy Riley	careykevin@yahoo.com	1234568132	West Kimberly	Puerto Rico	\N	\N
243	Alexis Atkins	john14@yahoo.com	1234568133	East Stevenfort	Micronesia	\N	\N
244	Jennifer Parrish	nfoster@yahoo.com	1234568134	East Monique	Botswana	\N	\N
245	Claudia White	johnsonamanda@hotmail.com	1234568135	Ericaburgh	Kuwait	\N	\N
246	Jeffery Lewis	marytorres@wolfe.biz	1234568136	Angelastad	Dominican Republic	\N	\N
247	Michael Ellis	rhondabailey@hotmail.com	1234568137	Port Austinview	Kyrgyz Republic	\N	\N
248	Victoria Camacho	joy49@hotmail.com	1234568138	New Stacey	Russian Federation	\N	\N
249	Jennifer Ochoa	carmenatkinson@hotmail.com	1234568139	Longside	Puerto Rico	\N	\N
250	Riley Diaz	awaters@hotmail.com	1234568140	Reneestad	Kuwait	\N	\N
251	Jennifer Tran	idavis@freeman.org	1234568141	Emilymouth	Switzerland	\N	\N
252	Jill Sanders	pmeyer@noble.com	1234568142	Williamstad	Isle of Man	\N	\N
253	Sarah Rojas	sowen@yahoo.com	1234568143	Justinfurt	South Africa	\N	\N
254	Katherine Mooney	craigrichard@yahoo.com	1234568144	Johnsonport	Senegal	\N	\N
255	Vincent Duncan	kristi92@gmail.com	1234568145	Moodyville	China	\N	\N
256	Denise Hall	stephenthompson@yoder-pearson.com	1234568146	East Wyattchester	Mauritius	\N	\N
257	Calvin Clarke	ambertorres@jordan.biz	1234568147	North Christinetown	Iran	\N	\N
258	Jacob French	michael67@yahoo.com	1234568148	Crystalborough	Korea	\N	\N
259	Linda Smith	npadilla@yahoo.com	1234568149	South Deborahville	Armenia	\N	\N
260	Kathryn Fitzgerald	jenniferodom@gmail.com	1234568150	West Maria	Swaziland	\N	\N
261	David Donovan	dguzman@hall-gentry.com	1234568151	West Justin	Slovakia (Slovak Republic)	\N	\N
262	Gabriela Smith	deborah24@long.net	1234568152	Hopkinsport	Solomon Islands	\N	\N
263	Tara Gregory	timothymiller@flores-ball.biz	1234568153	Andreland	Gambia	\N	\N
264	Clinton Smith	youngjohn@lewis.info	1234568154	Brandontown	Somalia	\N	\N
265	Cassandra Cole	mckenziealfred@gmail.com	1234568155	Port Erinberg	Iraq	\N	\N
266	Robert Myers	hmoore@ortiz.com	1234568156	Ortizfurt	Falkland Islands (Malvinas)	\N	\N
267	Timothy Simon	april69@vazquez.com	1234568157	New Jennifer	Algeria	\N	\N
268	Jessica Hopkins	markperez@gmail.com	1234568158	Jamesland	Spain	\N	\N
269	John Scott	ysandoval@mcgrath.com	1234568159	Port Paulshire	New Zealand	\N	\N
270	Erika Campbell	davidbarnes@yahoo.com	1234568160	Lake Anthonyland	Croatia	\N	\N
271	Kristina Vaughan	jennifer30@hotmail.com	1234568161	East Williamberg	Falkland Islands (Malvinas)	\N	\N
272	Carl Smith	davidandrade@gmail.com	1234568162	Lake Samantha	Algeria	\N	\N
273	Jordan Warner	sawyerraven@gmail.com	1234568163	New Joehaven	Mexico	\N	\N
274	Amber Friedman	trevortucker@gmail.com	1234568164	East Amy	Chile	\N	\N
275	Andrew Farmer	elizabeth45@hotmail.com	1234568165	East Cory	Nicaragua	\N	\N
276	Carol Petersen	roberthayes@tucker.biz	1234568166	East Jeremyside	Czech Republic	\N	\N
277	David Collins	nicholasdean@foster-hall.org	1234568167	South Victoriaport	Liechtenstein	\N	\N
278	Michael Hill	jamesortiz@gmail.com	1234568168	West Amber	Israel	\N	\N
279	Susan Hughes	efuller@williams-johnson.biz	1234568169	New Julieville	Estonia	\N	\N
280	Robert Perkins	drangel@gmail.com	1234568170	New Ronaldbury	Greenland	\N	\N
281	Jennifer Booker	idiaz@hotmail.com	1234568171	Katietown	Malawi	\N	\N
282	Crystal Rios	xparrish@terry.info	1234568172	Port Richardstad	Bahrain	\N	\N
283	Louis Gibson	nbrown@hotmail.com	1234568173	East Lisaside	United Arab Emirates	\N	\N
284	Annette Garcia	donald50@yahoo.com	1234568174	Melissaside	San Marino	\N	\N
285	Todd Morris	jonathan90@gmail.com	1234568175	New Lisa	Tokelau	\N	\N
286	Heidi Kennedy DDS	stephaniealexander@yahoo.com	1234568176	Port Heather	Saint Lucia	\N	\N
287	Kayla Novak	normanlane@gmail.com	1234568177	New Monicastad	Comoros	\N	\N
288	Terry Becker	nathan91@peterson-rhodes.info	1234568178	Port Colleenside	Chad	\N	\N
289	Gabriel Dillon	joan36@yahoo.com	1234568179	Morenoview	Malawi	\N	\N
290	Sarah Cameron	egonzalez@bell.com	1234568180	West Blake	Guyana	\N	\N
291	Jennifer Crosby	fmiller@yahoo.com	1234568181	Alanton	Russian Federation	\N	\N
292	Lindsey Roberts	erinkelly@robinson.com	1234568182	Lambertfort	Armenia	\N	\N
293	Erica Walker	justindillon@yahoo.com	1234568183	Reeseville	Guadeloupe	\N	\N
294	Wesley Parks	dnoble@gmail.com	1234568184	Angelaside	Mali	\N	\N
295	Paul Morales	qsmith@hotmail.com	1234568185	Gonzalestown	Vietnam	\N	\N
296	Michael Johnson	wallacekenneth@jones.com	1234568186	Mooreburgh	Mali	\N	\N
297	Ryan Mendoza	woodjohn@duncan.com	1234568187	West Kim	Argentina	\N	\N
298	Carl Jackson	qlopez@valdez.com	1234568188	West Kimberlyborough	Swaziland	\N	\N
299	Andrew Robinson	pittmanelizabeth@armstrong-shepard.com	1234568189	Jessicaport	Cayman Islands	\N	\N
300	Marie Mason	heathersanders@gmail.com	1234568190	Port David	Svalbard & Jan Mayen Islands	\N	\N
301	Tommy Colon	hhuerta@craig-zimmerman.biz	1234568191	Parkerborough	Isle of Man	\N	\N
302	Howard Frazier	heatherhunter@hotmail.com	1234568192	Wellsland	Tunisia	\N	\N
303	Jose Lee	russellthomas@thomas-perkins.com	1234568193	East Erikatown	Iran	\N	\N
304	Nancy Dennis	davidraymond@gmail.com	1234568194	Dominiqueview	Bhutan	\N	\N
305	Jeremy Pena	kmontgomery@carroll.info	1234568195	Perrytown	New Caledonia	\N	\N
306	Brandy Ortega	brownrachel@yahoo.com	1234568196	Port Nicoleview	Belgium	\N	\N
307	Beth Mcguire	lisa66@hotmail.com	1234568197	New Katherine	Paraguay	\N	\N
308	Mrs. Sarah Weaver	williamcunningham@johnson.com	1234568198	Alvaradochester	Montserrat	\N	\N
309	Scott Lee	talexander@hotmail.com	1234568199	East Tracystad	United States Minor Outlying Islands	\N	\N
310	Jennifer Lopez	daltonerika@thompson.info	1234568200	North Emily	Libyan Arab Jamahiriya	\N	\N
311	Victoria Taylor	sarah34@frank-woodard.com	1234568201	Nelsonton	Ukraine	\N	\N
312	Patricia Hughes	colleen51@king.com	1234568202	Pennyland	Denmark	\N	\N
313	David Nelson	laura23@hotmail.com	1234568203	Lake Jane	Macao	\N	\N
314	Brenda Thomas	alvaradocarolyn@hotmail.com	1234568204	West Nathan	Ecuador	\N	\N
315	Kristina Kaiser	adamsgrant@hotmail.com	1234568205	Gonzalesview	Marshall Islands	\N	\N
316	Jacob Miller	kdaniels@gmail.com	1234568206	Maryville	Pakistan	\N	\N
317	Janice Henson	kellymorgan@collins.com	1234568207	East Loriborough	Wallis and Futuna	\N	\N
318	Thomas Mendoza	rhuynh@sanchez.org	1234568208	Watsonfort	Andorra	\N	\N
319	Christine Lewis	natalieconrad@hotmail.com	1234568209	Port Justin	Bahrain	\N	\N
320	Christopher Guzman	dawn39@leach.com	1234568210	Lake Yvonne	Nepal	\N	\N
321	Charlene Arroyo	edowns@holmes-adams.org	1234568211	Wilsonstad	Slovenia	\N	\N
322	William Cameron	lharrell@mcintyre.com	1234568212	Sanchezport	Mexico	\N	\N
323	Jackie Rodgers	pharris@gmail.com	1234568213	Port Jason	Ghana	\N	\N
324	Larry Adams	lorimoses@james.com	1234568214	Lake Julieborough	Cuba	\N	\N
325	Emily Vargas	lklein@gmail.com	1234568215	Aguilarside	Tonga	\N	\N
326	Matthew Henry	jimmycervantes@singh.com	1234568216	Duranstad	Lesotho	\N	\N
327	Judith Frye	jermainerodriguez@gmail.com	1234568217	Dickersonmouth	Lithuania	\N	\N
328	Russell Thompson	moorewilliam@hughes.biz	1234568218	Hallshire	Holy See (Vatican City State)	\N	\N
329	Miguel Jacobs	morgangeorge@buck.com	1234568219	Marshallbury	Estonia	\N	\N
330	Deborah Mcgee	haroldburns@dougherty.com	1234568220	New Angelafurt	French Polynesia	\N	\N
331	Megan Martin	fosterjames@anderson.biz	1234568221	Port Christianberg	Peru	\N	\N
332	Christopher Lewis	smithlauren@hart.com	1234568222	Tracyborough	Gibraltar	\N	\N
333	Valerie Miller	heather99@mccullough.com	1234568223	North Rodney	Papua New Guinea	\N	\N
334	Amy Hahn	wangjason@gmail.com	1234568224	North Tannerville	Serbia	\N	\N
335	Alyssa Zhang	baileymichelle@lewis.com	1234568225	West Lindseyton	Netherlands	\N	\N
336	Vincent Bender	lauraharvey@yahoo.com	1234568226	New Christine	Monaco	\N	\N
337	Katherine Gonzalez	nortonpatrick@martinez.com	1234568227	Munozfort	Tokelau	\N	\N
338	Michelle Esparza	lauren52@hotmail.com	1234568228	North Amandastad	Burundi	\N	\N
339	Lisa Hayes	david63@gmail.com	1234568229	New Beverly	Marshall Islands	\N	\N
340	Ryan Howard	psmith@adams.com	1234568230	New Taylorstad	Myanmar	\N	\N
341	Terry Torres	bnoble@gmail.com	1234568231	East Virginiashire	Mayotte	\N	\N
342	Jonathan Scott	kelly30@yahoo.com	1234568232	Williamsborough	Myanmar	\N	\N
343	Gina Schultz	madison80@hebert.net	1234568233	Kennethville	Bermuda	\N	\N
344	Shawn Allen Jr.	aramirez@arnold.com	1234568234	Port Bruce	Sri Lanka	\N	\N
345	Glen Perez	leslie78@howe.com	1234568235	North Joseph	United States Virgin Islands	\N	\N
346	Julie Mcintyre	dmcintyre@luna.com	1234568236	West Dakotaport	Heard Island and McDonald Islands	\N	\N
347	Peter Greene	michaeldaugherty@yahoo.com	1234568237	Port Michael	Sri Lanka	\N	\N
348	Matthew Gardner	wayne40@wilkerson.com	1234568238	Gentryfort	Mozambique	\N	\N
349	Alexis Castro	harveyralph@wilson.info	1234568239	Lake Jared	Jersey	\N	\N
350	Tina Silva	jallen@koch-phillips.com	1234568240	Delgadoton	Turks and Caicos Islands	\N	\N
351	Melissa Moran	kcarroll@gmail.com	1234568241	Lake Tonya	Lebanon	\N	\N
352	Mr. Hector Miller III	emily63@taylor.com	1234568242	New Cherylton	Ecuador	\N	\N
353	Michael Reese	vargasdylan@stark-hicks.biz	1234568243	Jaclynfurt	Saint Martin	\N	\N
354	Bradley Moore	richardbutler@pineda.com	1234568244	Paulaland	Djibouti	\N	\N
355	Manuel Guzman	dperez@hotmail.com	1234568245	Orrview	Mexico	\N	\N
356	Mary Winters	evansandrew@walls.com	1234568246	Evanshaven	Bahamas	\N	\N
357	Scott Oconnell	matthew25@jones-brown.net	1234568247	Natashaville	China	\N	\N
358	Erika Gray	christopher45@roberts.com	1234568248	Melissaland	Norfolk Island	\N	\N
359	Michelle Jackson	mbyrd@howard.org	1234568249	South Eric	Armenia	\N	\N
360	Roberto Martinez	victoriacrane@simmons.com	1234568250	Patriciaville	Mauritius	\N	\N
361	Joseph Davis	hendricksaustin@gmail.com	1234568251	Carolyntown	Panama	\N	\N
362	Darren Taylor	davisrebecca@webb.org	1234568252	Lake Kristen	Guinea	\N	\N
363	Carrie Martin	williamsanthony@gmail.com	1234568253	Hamiltonfurt	Lithuania	\N	\N
364	Carrie Perez	chelsea23@gillespie-walker.com	1234568254	Kennethland	Hungary	\N	\N
365	Dylan Ryan	marshallsharon@yahoo.com	1234568255	Port Andreaborough	Faroe Islands	\N	\N
366	Kurt Greer	burkekathryn@hotmail.com	1234568256	East Stephaniefort	India	\N	\N
367	Denise Hall	cohenvictoria@yahoo.com	1234568257	Jimmyhaven	Germany	\N	\N
368	Diane Clark	sydney29@nguyen-jones.biz	1234568258	North Michael	Samoa	\N	\N
369	Marie Miller	jamie47@olson.com	1234568259	Kendraport	Cape Verde	\N	\N
370	Kevin Garcia	morenonicole@hotmail.com	1234568260	Port Stacy	Saint Kitts and Nevis	\N	\N
371	Shannon Santos	lhoward@sanchez-mosley.com	1234568261	Hessshire	Malta	\N	\N
372	Jacqueline Ballard	ginarojas@smith.com	1234568262	North Jacquelinefurt	Guadeloupe	\N	\N
373	Rebecca Cruz	pmcknight@yahoo.com	1234568263	Emilymouth	Austria	\N	\N
374	Julie Shaw	pattersonlisa@wagner-thompson.net	1234568264	Lake Jay	Honduras	\N	\N
375	Robert Short	guerraedward@irwin.net	1234568265	South John	Switzerland	\N	\N
376	Justin Donaldson	itaylor@yahoo.com	1234568266	Petersonbury	Syrian Arab Republic	\N	\N
377	Darrell Khan	anna59@hall.com	1234568267	Austinfort	Montenegro	\N	\N
378	Anthony Kane	dana95@yahoo.com	1234568268	Port Josephmouth	Congo	\N	\N
379	Christie Sullivan	chrisrichardson@gmail.com	1234568269	Josephstad	Benin	\N	\N
380	Susan Patel	broberts@flynn.info	1234568270	New Misty	Senegal	\N	\N
381	Shawn Gonzales	tjones@yahoo.com	1234568271	Port Martin	Cayman Islands	\N	\N
382	Tara Duncan	parkscaleb@gmail.com	1234568272	Port Anthonyland	Australia	\N	\N
383	Tiffany Roth	jbowen@gmail.com	1234568273	South Deborah	Saint Martin	\N	\N
384	Thomas Garcia	davidvelez@romero-marsh.com	1234568274	Michaelview	Sri Lanka	\N	\N
385	Kenneth Cohen	jacquelinelee@yahoo.com	1234568275	Robinmouth	Burundi	\N	\N
386	Pamela Gordon	mandy28@thomas-white.com	1234568276	East Richardburgh	Yemen	\N	\N
387	Tanya Morales	michellecraig@gmail.com	1234568277	Buckbury	Puerto Rico	\N	\N
388	Joshua Bass	goodmanmary@lara-bowen.net	1234568278	Christinamouth	Bulgaria	\N	\N
389	Allison Hawkins	lnash@bates-greene.com	1234568279	Lake Patrick	Bhutan	\N	\N
390	Adam Anthony	melissaellis@yahoo.com	1234568280	Christinaport	Vanuatu	\N	\N
391	Eric Vincent	rmoore@singleton-baldwin.com	1234568281	South Christopherberg	Jamaica	\N	\N
392	Dustin Ramirez	steven64@hotmail.com	1234568282	Ryanhaven	Spain	\N	\N
393	Anthony Mcknight	martinmichael@rodriguez-hill.org	1234568283	Port Tanya	New Zealand	\N	\N
394	David Hale	ledwards@hotmail.com	1234568284	Richardburgh	Greece	\N	\N
395	Mary Baird	hgomez@gmail.com	1234568285	Port Gary	Poland	\N	\N
396	Suzanne Marquez	nina87@hotmail.com	1234568286	South Katie	Macedonia	\N	\N
397	Catherine Wilkins	nathanielrogers@yahoo.com	1234568287	Mendezburgh	Australia	\N	\N
398	Dustin Mendez Jr.	michael14@nunez.net	1234568288	Shanebury	Antigua and Barbuda	\N	\N
399	Daniel Andrews	joneschristine@gmail.com	1234568289	East Timothy	Micronesia	\N	\N
400	Heather Ward	doris54@hotmail.com	1234568290	Robertsview	Panama	\N	\N
401	Jason Parker	johnsimpson@hotmail.com	1234568291	Danielview	Bangladesh	\N	\N
402	Ashley Gilmore	joshuawatkins@yahoo.com	1234568292	South Taylor	Costa Rica	\N	\N
403	Heather Thomas	laura69@cohen.com	1234568293	New Michaelview	Turkmenistan	\N	\N
404	Lisa Duran	christina28@espinoza.com	1234568294	Lake Tyler	Korea	\N	\N
405	Julie Smith	knightmonica@krueger-hamilton.biz	1234568295	Freemanland	Vanuatu	\N	\N
406	Mary Mason	gordonpaula@gmail.com	1234568296	Johnport	Bosnia and Herzegovina	\N	\N
407	Christopher Benson	samanthasummers@hotmail.com	1234568297	Toddchester	Tajikistan	\N	\N
408	Crystal Miller	jose68@vasquez.org	1234568298	Sheltonton	Cuba	\N	\N
409	Mark Knight	saratrevino@wagner-hicks.com	1234568299	New Shelby	South Georgia and the South Sandwich Islands	\N	\N
410	Nancy Ramirez	zvalenzuela@snyder-miller.info	1234568300	New Tammy	Vietnam	\N	\N
411	Christopher Rogers	mallory64@yahoo.com	1234568301	Lake Aaronstad	Micronesia	\N	\N
412	Kevin Woodward	graysarah@yahoo.com	1234568302	Lake Karen	Hungary	\N	\N
413	Steven Brown	katherine84@hodges.com	1234568303	Elliottfort	Cameroon	\N	\N
414	Harold Burns	gregorynielsen@johnson.com	1234568304	Lake Hannahton	Tonga	\N	\N
415	James Ramirez	robert54@hall.com	1234568305	Maxwelltown	Canada	\N	\N
416	Lisa Tucker	sarah27@hotmail.com	1234568306	Port Trevorchester	Jamaica	\N	\N
417	Melissa Frey	floresricardo@smith.org	1234568307	Erikaberg	Bahamas	\N	\N
418	Kiara Blankenship MD	grahamvictor@sutton.com	1234568308	Brandimouth	Belarus	\N	\N
419	James Harrison	sarah23@yahoo.com	1234568309	Dominguezstad	Saint Martin	\N	\N
420	Andrew Murray	donaldjohnson@yahoo.com	1234568310	North Joseph	Western Sahara	\N	\N
421	Stephanie Barrett	megan55@ruiz.org	1234568311	East Melissaberg	Cayman Islands	\N	\N
422	Mary Hart	charles30@miller.com	1234568312	Smithmouth	Slovakia (Slovak Republic)	\N	\N
423	Dale Johnson	wmedina@hotmail.com	1234568313	New Keithville	Anguilla	\N	\N
424	Marcus Frazier	kimcurtis@castillo-howe.com	1234568314	West Kevin	Iraq	\N	\N
425	Ashley Perez	williamslindsey@yahoo.com	1234568315	Elizabethshire	United States Minor Outlying Islands	\N	\N
426	Maurice Moore	lori14@gmail.com	1234568316	Flowersland	Algeria	\N	\N
427	Craig Mcdowell	stacey22@campbell-douglas.com	1234568317	Sergiomouth	Timor-Leste	\N	\N
428	Andrew Wells	jacklutz@hotmail.com	1234568318	Bookerbury	Guadeloupe	\N	\N
429	Rhonda Norton	crystalnoble@gmail.com	1234568319	South Timothy	Tajikistan	\N	\N
430	Gabrielle Parks	harrisbrooke@campbell.com	1234568320	Andersenview	Congo	\N	\N
431	John Hanson	vsanders@gmail.com	1234568321	Kaylafurt	Dominican Republic	\N	\N
432	Ruth Mckay	patricia65@yahoo.com	1234568322	Cochranshire	Jordan	\N	\N
433	Corey Wells	swagner@robertson.net	1234568323	East David	Zambia	\N	\N
434	Melanie Parker	nicole84@hotmail.com	1234568324	Phelpsborough	Uganda	\N	\N
435	Nicholas Gonzalez	darrell16@mann.com	1234568325	Tamarafurt	Iran	\N	\N
436	Andrea Cortez	jennifer47@curry.com	1234568326	Garciaberg	Mexico	\N	\N
437	Cynthia Cooper	russellpriscilla@gmail.com	1234568327	Wrightfurt	Philippines	\N	\N
438	Ebony Ramos	rachel07@gmail.com	1234568328	North Stephenmouth	Tajikistan	\N	\N
439	Shane Chang	melanie56@fleming.com	1234568329	Ramosstad	Liechtenstein	\N	\N
440	Elizabeth Romero	sanchezemily@hotmail.com	1234568330	Port Dianaville	Grenada	\N	\N
441	Amanda Hicks	ryan06@hudson.org	1234568331	New Melindamouth	Bermuda	\N	\N
442	Heather Melendez	teresacowan@hotmail.com	1234568332	West Angelaview	Gabon	\N	\N
443	Vincent Cummings	daviskyle@hotmail.com	1234568333	Stacymouth	Monaco	\N	\N
444	Benjamin Medina	castillocarl@gross.org	1234568334	Larrychester	Mali	\N	\N
445	Alexis Frye	antoniowilkerson@hotmail.com	1234568335	Jenniferberg	Gibraltar	\N	\N
446	Michael Park	gjacobs@gmail.com	1234568336	East Robert	Zimbabwe	\N	\N
447	Emily Wilkerson	jchaney@yahoo.com	1234568337	Parkerside	Zimbabwe	\N	\N
448	Brandon Hall	michaeljohnson@gmail.com	1234568338	North Ronniestad	Puerto Rico	\N	\N
449	Linda Reid	hartwendy@sanchez.info	1234568339	Frenchburgh	New Zealand	\N	\N
450	Shari Schmidt	ccook@scott.com	1234568340	Lake Edward	Slovenia	\N	\N
451	Travis Harper	vbryant@hotmail.com	1234568341	West Brendachester	Pitcairn Islands	\N	\N
452	Jacqueline Owens	tiffanyharrison@lopez-webb.com	1234568342	Lake Cynthia	Angola	\N	\N
453	Joseph Roth	regina79@wilson.biz	1234568343	Matthewstad	Nepal	\N	\N
454	April Anderson	calexander@yahoo.com	1234568344	Micheleborough	Guyana	\N	\N
455	Rodney Young	eblankenship@gmail.com	1234568345	New Shannon	Palestinian Territory	\N	\N
456	Stacy Mendoza	mccarthycathy@gmail.com	1234568346	Pamelaland	New Zealand	\N	\N
457	Kim Turner	jennifer45@weiss-perry.com	1234568347	South Rachelview	Cambodia	\N	\N
458	Yvonne Martin	alyssanash@perez-luna.net	1234568348	West Amanda	Cuba	\N	\N
459	Veronica Lee	joseph12@villegas-french.biz	1234568349	East Jessicafurt	Heard Island and McDonald Islands	\N	\N
460	Jasmine Garner	dukebrandon@hotmail.com	1234568350	North Kimberlyland	Croatia	\N	\N
461	Crystal Pierce	webbteresa@gutierrez-garcia.com	1234568351	Port Davidhaven	Denmark	\N	\N
462	James Brewer	ebrown@ewing-warner.com	1234568352	Chandlerberg	Mongolia	\N	\N
463	Brandon Dunn	martinezdarren@hotmail.com	1234568353	East Lindsey	Saint Kitts and Nevis	\N	\N
464	Rebecca Baldwin	hroth@hotmail.com	1234568354	East Stephen	Macedonia	\N	\N
465	Vanessa Kennedy	dustin35@davenport.org	1234568355	Ryanville	Afghanistan	\N	\N
466	Mrs. Emily Williams	areynolds@herring.info	1234568356	East Antonioton	Cook Islands	\N	\N
467	Anna Green	tony39@hotmail.com	1234568357	East Jennifertown	New Caledonia	\N	\N
468	David Hart	stokesrebecca@gmail.com	1234568358	Thompsonfurt	Canada	\N	\N
469	Kimberly Vega	psmith@yahoo.com	1234568359	Daniellestad	Svalbard & Jan Mayen Islands	\N	\N
470	Mary Vasquez DDS	kmullins@crawford.com	1234568360	Lake Melissa	Turkey	\N	\N
471	Sandra Davis	johnsongeorge@gmail.com	1234568361	Tiffanyland	Netherlands	\N	\N
472	Holly Pratt	schultznathan@yahoo.com	1234568362	Lake Thomas	Italy	\N	\N
473	Carolyn Tate	erinmeyer@sellers.org	1234568363	East Melanie	Saint Vincent and the Grenadines	\N	\N
474	Anthony Young	rogersbill@gmail.com	1234568364	East Chelsea	Cook Islands	\N	\N
475	Joseph Boyd	dawnmartin@hotmail.com	1234568365	Derekview	Mauritania	\N	\N
476	Stephanie Martinez	robertomoore@lee-kemp.net	1234568366	Aprilshire	Zimbabwe	\N	\N
477	Jonathan Hampton	wcobb@morales-sherman.com	1234568367	Byrdville	Slovakia (Slovak Republic)	\N	\N
478	Spencer Rivera	candiceclayton@gmail.com	1234568368	Joshuabury	Grenada	\N	\N
479	Stephanie Martinez	lbrown@potts.com	1234568369	Jessicamouth	Singapore	\N	\N
480	Jennifer Pacheco	kendrashelton@robertson.com	1234568370	Lake Stephen	Pakistan	\N	\N
481	William Hunt	dannygreen@gmail.com	1234568371	North Josehaven	American Samoa	\N	\N
482	Mark Ross	maria69@gmail.com	1234568372	New David	Luxembourg	\N	\N
483	Carolyn Berry	mitchelljesus@jones-bartlett.com	1234568373	Lake Ericchester	Tunisia	\N	\N
484	Christine Burton	hawkinstiffany@hotmail.com	1234568374	Richardsonbury	Latvia	\N	\N
485	Andrew Figueroa	john28@gmail.com	1234568375	New Veronicaside	Macedonia	\N	\N
486	Melanie Kelly	eric02@johnson.com	1234568376	East Karenmouth	Ukraine	\N	\N
487	Valerie Barnes	garciazachary@hotmail.com	1234568377	North Vickistad	Egypt	\N	\N
488	Gerald Miranda	gregsmith@hotmail.com	1234568378	North Brian	Heard Island and McDonald Islands	\N	\N
489	Jennifer Dominguez	pcompton@gmail.com	1234568379	Susanland	Jamaica	\N	\N
490	Brittany Young	christopher21@young.com	1234568380	Thomasbury	Saint Kitts and Nevis	\N	\N
491	Timothy Moore	jasongutierrez@gmail.com	1234568381	Vincentburgh	El Salvador	\N	\N
492	Tara Austin	millerandre@hayes.org	1234568382	Lake Hunterstad	Haiti	\N	\N
493	Lauren Andrews	lhorton@silva-marshall.com	1234568383	South Joshualand	Tokelau	\N	\N
494	Michelle Guzman	lstanley@yahoo.com	1234568384	Ericaton	Suriname	\N	\N
495	Patrick Rivera	donaldmadden@hotmail.com	1234568385	Lake Elizabethborough	Comoros	\N	\N
496	Michelle Myers	patricia02@vega-callahan.com	1234568386	Davidview	Netherlands Antilles	\N	\N
497	Shane Klein	murphytheodore@rodriguez-lopez.biz	1234568387	West Billymouth	Cote d'Ivoire	\N	\N
498	Brianna Fischer	jessicacoleman@yahoo.com	1234568388	Angelatown	Gibraltar	\N	\N
499	Melissa Curtis	suzannemartinez@gmail.com	1234568389	Ashleyport	Monaco	\N	\N
500	James York	maydavid@maldonado.org	1234568390	Port Angela	Moldova	\N	\N
0	Ranu Mandal	ranukale@kalewada.com	7878784545	chanakya	Jorden	0	\N
1	Deborah Griffith	balljoseph@wright-keith.net	1234567891	South Craigfort	Denmark	1	32514
\.


--
-- TOC entry 5041 (class 0 OID 16445)
-- Dependencies: 224
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, customer_id, book_id, order_date, quantity, total_amount) FROM stdin;
1	84	169	2023-05-26	8	188.56
2	137	301	2023-01-23	10	216.60
3	216	261	2024-05-27	6	85.50
4	433	343	2023-11-25	7	301.21
5	14	431	2023-07-26	7	136.36
6	439	119	2024-10-11	5	249.40
7	195	467	2023-10-23	6	82.92
8	32	159	2024-05-07	4	144.84
9	109	407	2024-01-04	9	379.71
10	94	122	2024-07-09	4	123.00
11	131	206	2023-10-16	1	38.01
12	454	3	2024-06-17	2	31.50
13	420	180	2023-06-08	5	125.45
14	454	319	2023-08-24	2	85.22
15	127	479	2023-01-10	6	229.62
16	412	196	2023-10-06	8	53.52
17	462	481	2023-03-20	5	52.75
18	377	101	2024-08-07	4	193.96
19	496	60	2023-11-17	9	316.26
20	195	67	2023-07-14	1	10.23
21	356	287	2024-12-05	3	120.57
22	177	427	2024-06-10	3	54.00
23	119	301	2023-08-04	3	64.98
24	266	192	2023-07-10	3	145.11
25	265	250	2023-05-25	10	126.50
26	294	407	2023-06-11	1	42.19
27	310	156	2024-12-03	1	31.68
28	151	423	2024-11-27	8	205.04
29	305	446	2023-10-05	8	275.92
30	438	248	2023-09-23	6	281.94
31	386	279	2024-03-12	8	244.00
32	292	313	2024-12-06	4	188.64
33	478	253	2024-04-15	5	58.30
34	463	146	2024-06-27	3	43.50
35	303	172	2023-07-08	5	184.10
36	417	260	2024-01-21	9	446.31
37	110	411	2023-12-27	4	60.12
38	15	466	2023-06-26	4	148.68
39	488	422	2024-08-03	8	367.28
40	120	450	2024-07-03	2	91.50
41	418	147	2024-05-05	8	361.60
42	415	70	2023-09-19	3	70.35
43	199	305	2024-03-25	7	221.62
44	234	460	2024-07-24	5	179.40
45	470	67	2024-11-16	4	40.92
46	319	442	2023-12-08	1	48.48
47	6	360	2024-07-23	3	148.02
48	458	477	2024-02-25	5	138.55
49	322	336	2024-08-14	7	168.56
50	474	88	2024-04-06	1	40.22
51	155	491	2024-09-01	5	74.35
52	173	161	2024-05-20	7	151.20
53	160	242	2024-01-02	3	101.37
54	446	393	2024-09-01	3	132.00
55	18	281	2024-01-11	7	114.38
56	76	333	2024-11-06	5	138.80
57	24	34	2024-12-02	2	32.98
58	329	369	2024-12-02	7	158.55
59	225	188	2023-02-11	7	140.98
60	404	49	2023-04-26	9	445.50
61	405	361	2024-07-02	5	198.75
62	364	324	2024-04-06	5	230.40
63	16	469	2024-04-13	9	209.25
64	348	160	2024-07-19	10	344.80
65	54	198	2023-05-06	9	201.42
66	180	323	2023-09-08	8	286.64
67	260	129	2023-04-20	9	366.66
68	246	319	2023-03-21	10	426.10
69	261	109	2024-03-23	4	34.16
70	49	447	2023-05-29	6	217.50
71	500	438	2024-06-11	8	267.12
72	290	5	2024-10-19	1	10.95
73	411	81	2023-10-07	1	44.19
74	461	132	2023-04-08	10	204.60
75	291	375	2023-11-30	5	170.75
76	470	466	2024-09-02	10	371.70
77	497	242	2024-03-20	7	236.53
78	44	196	2024-07-23	5	33.45
79	134	28	2023-10-06	2	75.02
80	265	17	2023-06-04	8	42.96
81	383	325	2024-02-13	5	202.00
82	413	387	2023-03-08	5	237.10
83	457	335	2024-01-16	8	378.32
84	280	49	2024-07-05	6	297.00
85	75	31	2023-03-14	9	191.07
86	361	441	2024-04-28	3	122.16
87	167	435	2024-07-11	2	55.52
88	126	262	2023-04-16	5	105.10
89	305	113	2024-08-06	2	12.76
90	457	137	2023-12-23	6	157.98
91	226	142	2024-10-13	10	489.60
92	329	325	2023-02-24	5	202.00
93	366	427	2024-10-23	3	54.00
94	136	88	2024-07-06	6	241.32
95	447	426	2023-10-26	1	32.82
96	456	336	2023-08-09	8	192.64
97	408	221	2023-07-15	10	248.10
98	429	352	2023-12-15	1	6.01
99	166	250	2023-04-20	3	37.95
100	207	63	2023-07-14	1	22.38
101	154	344	2023-01-09	1	39.63
102	295	300	2023-05-10	9	241.83
103	103	21	2024-02-07	3	141.39
104	182	316	2024-01-18	9	79.29
105	125	306	2022-12-20	2	87.84
106	334	449	2023-10-07	3	120.51
107	10	330	2024-10-20	6	192.12
108	281	430	2024-05-25	6	71.40
109	486	368	2024-11-19	2	89.20
110	7	16	2023-04-30	1	10.07
111	174	450	2024-08-25	7	320.25
112	309	403	2022-12-28	2	30.02
113	80	255	2024-02-18	3	73.53
114	362	210	2024-02-24	3	122.79
115	321	136	2024-09-23	8	79.12
116	280	447	2024-02-27	5	181.25
117	385	52	2023-01-24	7	115.71
118	37	189	2023-01-14	3	40.95
119	328	148	2023-09-24	3	36.75
120	101	338	2023-01-14	1	10.17
121	27	63	2024-03-28	6	134.28
122	136	56	2023-02-19	6	47.22
123	495	437	2024-03-10	5	221.45
124	272	122	2024-05-17	10	307.50
125	196	43	2024-06-05	4	189.56
126	88	492	2023-12-08	2	88.14
127	267	295	2024-08-24	7	200.62
128	197	345	2024-09-17	6	155.34
129	364	388	2023-08-02	1	26.62
130	420	17	2023-05-13	1	5.37
131	16	1	2024-05-27	3	64.02
132	469	333	2023-11-22	7	194.32
133	232	458	2023-03-13	4	149.12
134	94	222	2023-04-02	7	207.13
135	174	99	2024-01-24	10	469.30
136	165	70	2023-12-31	4	93.80
137	474	471	2023-11-25	8	363.04
138	59	362	2023-12-02	3	88.29
139	189	26	2024-05-31	9	189.45
140	295	164	2022-12-13	1	41.83
141	107	352	2023-05-05	10	60.10
142	107	434	2024-04-08	2	91.16
143	443	201	2023-10-04	7	260.75
144	432	179	2024-11-10	2	96.42
145	340	477	2024-09-10	8	221.68
146	394	404	2024-04-07	4	62.60
147	277	285	2024-10-08	5	138.25
148	333	429	2024-06-16	1	42.58
149	39	56	2024-11-28	4	31.48
150	389	135	2024-01-01	10	151.30
151	361	288	2024-08-27	7	195.37
152	377	213	2023-10-27	5	33.95
153	484	370	2024-02-19	2	87.82
154	378	391	2023-10-12	5	167.10
155	191	397	2024-01-21	6	168.90
156	176	66	2024-05-27	5	141.45
157	166	245	2024-05-24	10	160.60
158	183	225	2023-07-04	3	108.12
159	174	51	2024-09-11	3	138.90
160	255	85	2023-03-27	3	58.29
161	227	42	2024-01-13	5	241.75
162	295	298	2023-05-21	7	326.62
163	207	384	2023-11-23	3	101.76
164	467	184	2024-06-27	9	47.25
165	382	362	2024-09-23	6	176.58
166	272	486	2023-09-17	6	114.78
167	168	442	2024-11-24	3	145.44
168	324	36	2023-01-11	10	345.10
169	81	415	2024-02-04	10	295.10
170	121	77	2023-05-06	10	442.80
171	364	397	2023-01-12	10	281.50
172	463	423	2024-09-20	1	25.63
173	399	61	2023-07-01	5	205.25
174	34	29	2023-12-17	4	124.48
175	385	103	2023-10-12	1	43.25
176	86	479	2023-09-19	6	229.62
177	378	121	2024-08-21	3	127.41
178	70	298	2023-05-03	10	466.60
179	325	52	2023-02-01	9	148.77
180	460	227	2023-01-20	7	267.19
181	8	117	2023-01-18	3	44.61
182	129	293	2023-11-01	7	125.51
183	335	371	2024-06-08	1	17.40
184	474	88	2024-04-30	2	80.44
185	15	25	2023-03-09	6	51.30
186	167	120	2023-04-03	7	336.21
187	119	275	2023-12-30	1	25.83
188	46	425	2023-03-13	1	24.23
189	107	240	2024-07-11	6	299.40
190	240	273	2024-07-02	4	49.72
191	418	390	2024-03-25	1	39.96
192	144	380	2024-06-24	2	26.34
193	474	36	2023-03-31	7	241.57
194	463	340	2024-11-04	5	249.90
195	437	241	2023-07-17	2	28.12
196	214	468	2023-04-03	7	214.13
197	256	32	2024-05-25	10	215.60
198	373	117	2023-06-13	1	14.87
199	429	18	2024-09-30	10	394.70
200	313	303	2023-11-23	1	6.57
201	67	463	2023-10-11	4	47.96
202	137	69	2023-12-17	8	70.32
203	116	110	2023-12-27	4	120.60
204	47	427	2023-05-26	3	54.00
205	279	457	2023-03-21	2	56.44
206	81	130	2023-07-19	1	6.64
207	194	461	2023-09-06	1	9.60
208	13	101	2024-05-21	6	290.94
209	346	449	2024-01-03	10	401.70
210	287	223	2023-10-14	6	39.12
211	397	209	2024-01-17	10	486.70
212	244	300	2024-04-20	2	53.74
213	325	447	2023-11-17	7	253.75
214	103	114	2024-09-04	7	50.96
215	461	138	2023-08-17	8	198.16
216	104	428	2024-02-28	4	90.92
217	414	142	2022-12-28	2	97.92
218	364	47	2024-02-13	8	162.96
219	186	157	2024-02-11	9	172.53
220	376	275	2023-07-07	1	25.83
221	353	219	2023-09-10	5	104.50
222	331	157	2023-09-19	10	191.70
223	213	31	2022-12-17	10	212.30
224	384	90	2024-07-19	4	66.24
225	272	115	2023-06-08	4	112.48
226	437	35	2024-01-25	9	286.29
227	461	308	2023-05-04	8	166.00
228	400	104	2024-06-07	3	31.68
229	82	482	2024-02-09	7	223.72
230	307	241	2023-09-10	7	98.42
231	22	384	2023-11-11	1	33.92
232	220	229	2024-07-26	5	102.30
233	403	181	2024-04-28	7	271.11
234	149	11	2024-11-21	5	179.75
235	419	459	2024-11-12	3	107.31
236	375	265	2024-11-04	9	419.40
237	47	199	2023-08-15	7	299.67
238	134	280	2024-02-26	6	100.68
239	132	307	2023-09-19	5	72.15
240	457	492	2023-05-30	10	440.70
241	119	69	2024-07-08	6	52.74
242	416	410	2023-06-15	9	398.97
243	82	350	2024-08-02	10	316.70
244	12	380	2024-10-28	3	39.51
245	386	97	2023-11-01	9	411.66
246	401	415	2024-11-14	2	59.02
247	77	142	2024-03-07	10	489.60
248	312	285	2023-09-09	9	248.85
249	131	189	2023-01-15	8	109.20
250	63	65	2023-09-16	9	204.30
251	109	490	2023-12-12	2	25.76
252	405	387	2023-11-15	5	237.10
253	449	273	2023-01-03	3	37.29
254	99	469	2023-07-18	2	46.50
255	217	406	2023-04-19	4	143.16
256	225	174	2024-05-30	9	340.47
257	123	403	2023-11-06	1	15.01
258	179	387	2023-08-08	3	142.26
259	437	77	2023-01-08	2	88.56
260	112	170	2024-05-07	2	22.56
261	200	288	2023-07-25	8	223.28
262	224	376	2022-12-11	6	175.56
263	260	373	2024-08-20	2	78.18
264	290	13	2023-10-29	9	126.36
265	258	100	2024-09-17	9	449.01
266	167	426	2023-06-02	10	328.20
267	467	390	2024-08-30	9	359.64
268	117	56	2024-11-15	9	70.83
269	8	157	2024-03-15	5	95.85
270	120	82	2024-04-13	7	319.90
271	462	40	2023-07-01	1	25.97
272	228	321	2024-11-02	1	24.32
273	357	119	2022-12-14	8	399.04
274	254	120	2024-04-10	2	96.06
275	495	31	2023-01-05	2	42.46
276	166	46	2024-11-16	3	99.51
277	276	292	2022-12-18	1	26.94
278	111	71	2024-11-18	9	346.50
279	204	339	2024-11-13	9	391.59
280	181	377	2023-05-11	8	318.32
281	23	431	2024-11-23	8	155.84
282	364	154	2024-11-22	6	104.64
283	277	471	2024-10-31	8	363.04
284	325	466	2023-01-06	4	148.68
285	198	469	2024-07-30	6	139.50
286	96	264	2023-04-23	2	41.02
287	74	163	2023-06-25	3	57.33
288	6	128	2023-11-13	1	24.04
289	321	491	2023-08-30	2	29.74
290	31	219	2024-08-18	2	41.80
291	214	154	2024-04-15	8	139.52
292	388	432	2024-02-11	4	35.36
293	96	214	2024-01-20	9	163.44
294	21	302	2023-10-01	4	114.68
295	414	269	2024-10-07	5	165.40
296	181	486	2023-09-13	1	19.13
297	382	381	2024-07-27	4	42.40
298	359	73	2024-08-22	10	212.30
299	189	348	2024-07-29	8	100.96
300	90	485	2023-12-09	7	162.12
301	339	346	2024-09-12	4	39.88
302	348	80	2024-02-29	6	209.04
303	423	31	2023-08-12	6	127.38
304	59	229	2024-02-06	9	184.14
305	107	266	2023-12-18	4	133.16
306	54	316	2024-11-28	4	35.24
307	368	133	2023-11-17	1	20.96
308	499	485	2023-02-19	10	231.60
309	185	227	2022-12-29	8	305.36
310	338	334	2023-10-05	3	107.04
311	198	80	2024-03-05	7	243.88
312	209	208	2023-04-23	10	250.00
313	57	105	2023-10-11	8	240.16
314	449	127	2024-03-09	1	11.66
315	281	119	2023-03-22	8	399.04
316	329	198	2024-06-30	7	156.66
317	400	88	2023-01-06	10	402.20
318	353	84	2024-01-31	8	356.72
319	172	296	2024-06-27	2	22.98
320	376	363	2024-04-05	8	59.84
321	114	386	2023-08-05	8	50.88
322	270	112	2023-11-08	2	16.04
323	36	412	2023-06-27	6	58.98
324	306	214	2023-01-31	7	127.12
325	60	394	2023-07-10	1	27.15
326	16	149	2024-06-15	6	102.54
327	247	409	2024-07-11	2	43.12
328	232	3	2024-01-19	3	47.25
329	171	171	2023-09-23	5	160.75
330	265	65	2023-01-10	10	227.00
331	429	143	2023-07-15	1	43.65
332	41	113	2023-07-25	2	12.76
333	161	407	2024-10-08	1	42.19
334	193	339	2024-03-01	6	261.06
335	184	334	2023-06-05	7	249.76
336	141	371	2023-06-23	9	156.60
337	230	455	2023-12-06	5	135.15
338	165	486	2023-01-13	2	38.26
339	374	491	2024-03-21	10	148.70
340	460	222	2023-03-02	8	236.72
341	26	333	2024-09-06	2	55.52
342	178	462	2023-08-24	1	49.23
343	75	124	2023-01-03	7	189.70
344	385	218	2023-11-25	5	26.80
345	325	253	2023-07-04	2	23.32
346	122	240	2024-03-10	8	399.20
347	2	118	2023-02-23	3	16.56
348	239	158	2023-03-19	7	172.83
349	159	73	2023-04-15	2	42.46
350	458	154	2024-02-09	6	104.64
351	425	219	2023-02-26	8	167.20
352	178	436	2023-03-19	7	111.30
353	14	360	2023-08-03	5	246.70
354	388	225	2024-07-28	2	72.08
355	437	443	2023-10-23	6	264.30
356	384	102	2024-06-01	3	120.66
357	163	150	2023-07-06	9	287.55
358	474	45	2023-01-30	8	203.92
359	301	378	2023-08-23	6	36.06
360	177	442	2024-01-23	2	96.96
361	415	448	2023-07-27	6	37.56
362	242	292	2024-07-29	3	80.82
363	153	91	2023-03-04	2	55.64
364	357	38	2024-05-12	9	148.23
365	301	200	2023-02-28	7	69.72
366	425	231	2024-03-08	6	56.22
367	497	309	2023-04-04	5	58.70
368	17	488	2023-05-17	10	491.50
369	339	156	2022-12-09	1	31.68
370	462	295	2024-02-04	4	114.64
371	149	120	2024-03-23	4	192.12
372	290	57	2023-01-21	3	70.77
373	428	47	2024-10-25	9	183.33
374	418	64	2024-04-28	9	216.90
375	115	58	2023-07-19	3	103.62
376	360	320	2023-03-02	7	35.49
377	194	208	2023-12-03	5	125.00
378	203	105	2024-09-25	1	30.02
379	313	135	2023-06-21	7	105.91
380	465	491	2024-09-18	3	44.61
381	485	377	2023-07-22	8	318.32
382	492	333	2024-08-14	1	27.76
383	145	8	2023-04-04	3	146.97
384	304	369	2024-06-26	7	158.55
385	379	110	2024-07-18	9	271.35
386	226	52	2023-05-05	5	82.65
387	344	236	2024-07-20	4	43.12
388	125	232	2023-08-04	6	57.72
389	485	391	2023-11-18	2	66.84
390	94	73	2023-10-01	10	212.30
391	30	330	2023-05-20	8	256.16
392	336	212	2024-07-04	1	18.69
393	279	307	2022-12-24	8	115.44
394	299	425	2024-04-14	1	24.23
395	159	443	2024-05-27	9	396.45
396	59	424	2023-04-09	6	243.00
397	368	73	2023-01-19	6	127.38
398	273	334	2023-07-21	9	321.12
399	318	393	2022-12-27	9	396.00
400	239	33	2024-04-05	10	350.60
401	154	475	2023-12-06	1	47.76
402	199	323	2022-12-25	8	286.64
403	98	398	2024-11-17	10	334.10
404	457	191	2024-10-02	10	421.90
405	405	149	2024-05-01	5	85.45
406	438	78	2023-02-17	10	130.70
407	121	156	2024-04-14	4	126.72
408	485	299	2023-12-13	4	112.76
409	184	303	2024-09-07	6	39.42
410	364	462	2024-12-01	5	246.15
411	486	208	2023-10-29	8	200.00
412	24	103	2024-06-16	5	216.25
413	158	314	2023-07-12	3	28.77
414	23	234	2023-11-10	1	7.15
415	336	10	2023-07-07	1	24.63
416	149	211	2023-12-29	1	16.19
417	222	254	2024-03-29	4	170.28
418	153	372	2023-12-04	2	35.46
419	330	313	2023-05-15	3	141.48
420	102	415	2024-10-03	1	29.51
421	56	183	2023-04-01	5	77.00
422	322	176	2023-12-25	8	128.88
423	11	349	2024-01-10	5	221.80
424	291	118	2024-01-16	7	38.64
425	98	308	2023-02-14	6	124.50
426	98	33	2024-02-18	5	175.30
427	287	434	2023-09-11	7	319.06
428	214	175	2023-02-16	10	328.50
429	449	146	2023-11-01	7	101.50
430	206	26	2024-07-26	2	42.10
431	68	276	2024-09-22	1	19.85
432	420	168	2023-11-04	3	42.39
433	37	223	2023-03-01	6	39.12
434	45	83	2023-10-20	10	89.40
435	13	230	2023-04-14	8	48.80
436	224	412	2024-06-17	1	9.83
437	183	360	2023-10-31	6	296.04
438	304	434	2024-08-16	2	91.16
439	346	419	2023-05-20	3	27.84
440	195	343	2023-08-31	9	387.27
441	269	168	2024-03-18	8	113.04
442	57	129	2023-05-20	8	325.92
443	425	108	2024-04-30	10	253.80
444	155	5	2022-12-12	7	76.65
445	21	384	2024-04-16	8	271.36
446	485	380	2023-09-18	3	39.51
447	379	422	2023-08-05	1	45.91
448	115	38	2024-11-21	1	16.47
449	490	222	2023-11-18	1	29.59
450	451	288	2023-05-18	8	223.28
451	87	307	2023-08-04	10	144.30
452	100	412	2024-07-13	1	9.83
453	22	418	2023-04-19	8	255.04
454	386	186	2024-06-14	8	330.64
455	84	409	2023-10-31	2	43.12
456	331	125	2024-02-19	5	162.05
457	387	147	2024-03-17	10	452.00
458	160	127	2023-02-19	6	69.96
459	163	422	2024-08-17	10	459.10
460	445	237	2023-05-24	2	80.86
461	317	196	2023-11-18	9	60.21
462	22	282	2024-11-24	3	114.57
463	174	279	2024-07-06	5	152.50
464	392	463	2022-12-20	1	11.99
465	337	414	2023-01-16	7	157.85
466	498	273	2024-12-07	7	87.01
467	390	273	2023-07-22	10	124.30
468	162	237	2023-11-22	6	242.58
469	158	97	2024-01-01	6	274.44
470	349	232	2024-10-30	8	76.96
471	79	7	2022-12-13	5	218.15
472	145	136	2023-08-07	6	59.34
473	353	75	2024-06-19	1	47.11
474	194	138	2023-03-24	9	222.93
475	284	161	2023-03-02	7	151.20
476	387	379	2023-04-02	5	28.50
477	162	454	2023-05-30	7	66.92
478	423	350	2024-08-02	4	126.68
479	328	197	2023-12-26	7	301.21
480	415	146	2023-06-21	7	101.50
481	405	353	2023-07-07	10	469.70
482	2	429	2024-08-31	7	298.06
483	459	202	2023-11-23	10	122.60
484	500	274	2023-08-31	6	292.80
485	140	230	2023-02-04	5	30.50
486	322	110	2023-04-26	2	60.30
487	102	245	2023-12-23	7	112.42
488	47	18	2023-05-23	4	157.88
489	211	471	2023-02-22	5	226.90
490	173	93	2023-02-15	9	156.87
491	425	72	2023-10-14	10	465.40
492	284	120	2024-04-28	10	480.30
493	475	19	2024-11-04	1	11.31
494	117	127	2024-11-23	2	23.32
495	216	497	2023-03-31	3	72.30
496	53	233	2024-09-28	6	62.34
497	328	272	2023-04-25	10	51.60
498	152	406	2024-03-10	2	71.58
499	140	48	2023-08-26	1	24.70
500	297	137	2024-06-17	5	131.65
\.


--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 219
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 221
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 1, false);


--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 223
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);


--
-- TOC entry 4882 (class 2606 OID 16419)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);


--
-- TOC entry 4884 (class 2606 OID 16427)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customers_id);


--
-- TOC entry 4886 (class 2606 OID 16451)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4887 (class 2606 OID 16457)
-- Name: orders orders_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(book_id);


--
-- TOC entry 4888 (class 2606 OID 16452)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customers_id);


-- Completed on 2026-04-01 09:18:08

--
-- PostgreSQL database dump complete
--

\unrestrict yeh8rrVmUOT1fcxANvRgjFWCjXA3qhO7DPa5fCacTNBsfCqqq9ZFTt8OG1xNU34

--
-- Database "Windows Function" dump
--

--
-- PostgreSQL database dump
--

\restrict irXd6MRJ0L1Eklp0whS7heqFthH6hfWWiHsuUbtZUo26AYqKoD5OO3NAMGgVu7z

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-01 09:18:08

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
-- TOC entry 5010 (class 1262 OID 16498)
-- Name: Windows Function; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Windows Function" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE "Windows Function" OWNER TO postgres;

\unrestrict irXd6MRJ0L1Eklp0whS7heqFthH6hfWWiHsuUbtZUo26AYqKoD5OO3NAMGgVu7z
\encoding SQL_ASCII
\connect -reuse-previous=on "dbname='Windows Function'"
\restrict irXd6MRJ0L1Eklp0whS7heqFthH6hfWWiHsuUbtZUo26AYqKoD5OO3NAMGgVu7z

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
-- TOC entry 219 (class 1259 OID 16499)
-- Name: sales_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_data (
    employee_id character varying NOT NULL,
    employee_name character varying NOT NULL,
    department character varying NOT NULL,
    region character varying NOT NULL,
    product character varying NOT NULL,
    sales_amount integer,
    units_sold integer,
    sale_date date,
    customer_satisfaction numeric
);


ALTER TABLE public.sales_data OWNER TO postgres;

--
-- TOC entry 5004 (class 0 OID 16499)
-- Dependencies: 219
-- Data for Name: sales_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_data (employee_id, employee_name, department, region, product, sales_amount, units_sold, sale_date, customer_satisfaction) FROM stdin;
E199	Employee_163	Marketing	East	Product_D	5568	30	2023-04-04	3
E175	Employee_123	Sales	North	Product_B	7240	25	2023-05-22	2
E408	Employee_368	Marketing	West	Product_A	9246	10	2023-05-16	4
E022	Employee_186	HR	West	Product_C	9462	39	2023-01-05	2
E435	Employee_446	HR	North	Product_D	1114	7	2023-11-07	5
E349	Employee_473	HR	South	Product_D	7487	45	2023-09-08	4
E481	Employee_147	Marketing	West	Product_D	2812	39	2023-07-25	3
E436	Employee_23	HR	South	Product_A	3603	15	2023-02-26	1
E108	Employee_346	Finance	South	Product_C	7091	8	2023-12-18	1
E055	Employee_181	HR	North	Product_A	1335	22	2023-01-23	2
E053	Employee_91	HR	East	Product_B	2467	18	2023-01-17	3
E012	Employee_351	Sales	East	Product_D	9988	32	2023-08-25	5
E466	Employee_304	Support	East	Product_C	5705	41	2023-05-11	5
E002	Employee_64	Marketing	West	Product_D	6421	28	2023-08-16	5
E438	Employee_308	HR	East	Product_A	8655	11	2023-02-02	3
E229	Employee_162	Marketing	North	Product_A	9717	11	2023-04-21	4
E090	Employee_328	Sales	South	Product_D	3016	49	2023-01-12	3
E397	Employee_60	Finance	West	Product_D	3234	35	2023-12-08	4
E003	Employee_466	Marketing	South	Product_C	2094	46	2023-03-20	4
E468	Employee_40	Sales	South	Product_A	1618	48	2023-01-03	2
E144	Employee_344	Marketing	North	Product_B	6508	9	2023-10-16	1
E191	Employee_292	HR	South	Product_C	4235	35	2023-09-15	4
E471	Employee_176	Finance	South	Product_B	4663	15	2023-05-03	4
E322	Employee_53	Support	East	Product_C	5151	21	2023-06-29	4
E220	Employee_132	Sales	East	Product_C	8051	10	2023-11-01	3
E103	Employee_166	Finance	East	Product_C	6253	36	2023-10-30	3
E190	Employee_220	Sales	East	Product_D	8614	22	2023-11-10	4
E340	Employee_65	Sales	South	Product_A	9303	23	2023-03-28	2
E107	Employee_215	Support	South	Product_B	4236	21	2023-10-18	1
E254	Employee_361	Support	South	Product_B	6100	12	2023-12-06	4
E248	Employee_32	Finance	East	Product_B	9341	19	2023-04-22	2
E098	Employee_279	Marketing	East	Product_D	6358	42	2023-03-09	2
E011	Employee_59	Finance	East	Product_B	9336	1	2023-12-28	2
E030	Employee_397	Finance	South	Product_D	2912	3	2023-04-19	2
E319	Employee_257	Sales	South	Product_C	4541	19	2023-05-30	1
E071	Employee_359	Support	West	Product_D	7912	8	2023-01-02	4
E492	Employee_208	Finance	East	Product_A	6809	23	2023-06-18	2
E499	Employee_100	HR	West	Product_B	6702	1	2023-05-17	4
E209	Employee_275	Marketing	North	Product_A	8913	35	2023-01-09	1
E257	Employee_408	Support	North	Product_A	4848	6	2023-12-31	1
E323	Employee_231	Marketing	East	Product_B	7125	42	2023-06-01	5
E491	Employee_250	Support	North	Product_C	5179	1	2023-03-30	3
E265	Employee_326	Finance	South	Product_D	9503	11	2023-12-22	4
E411	Employee_273	Finance	South	Product_C	4253	29	2023-07-13	5
E238	Employee_205	Sales	South	Product_A	2811	50	2023-01-21	5
E058	Employee_304	Marketing	West	Product_A	4374	16	2023-03-16	4
E398	Employee_492	HR	South	Product_C	3742	17	2023-12-14	4
E434	Employee_253	HR	West	Product_A	2244	28	2023-04-09	1
E334	Employee_56	Finance	East	Product_D	6485	1	2023-09-30	2
E133	Employee_283	Marketing	West	Product_B	6814	17	2023-12-24	3
E072	Employee_209	Finance	East	Product_A	3817	12	2023-10-06	2
E237	Employee_373	HR	West	Product_A	7781	19	2023-07-04	2
E104	Employee_2	Sales	South	Product_A	5989	5	2023-10-07	3
E163	Employee_272	Sales	West	Product_C	7572	44	2023-04-28	4
E109	Employee_462	Sales	North	Product_B	2944	42	2023-03-05	2
E033	Employee_73	Sales	North	Product_D	4493	5	2023-03-16	5
E335	Employee_68	Sales	South	Product_D	8057	39	2023-03-04	5
E066	Employee_492	Support	South	Product_C	5777	11	2023-05-23	5
E189	Employee_340	Marketing	North	Product_D	8238	8	2023-06-11	5
E271	Employee_211	Support	East	Product_B	2070	35	2023-06-04	3
E496	Employee_223	HR	West	Product_C	3787	43	2023-04-19	1
E429	Employee_367	Finance	North	Product_B	1301	18	2023-08-04	3
E342	Employee_116	HR	North	Product_C	6473	25	2023-11-24	2
E226	Employee_93	Support	North	Product_A	8378	28	2023-05-28	5
E075	Employee_472	Finance	East	Product_D	2544	35	2023-06-17	3
E078	Employee_487	Support	South	Product_D	2357	15	2023-12-27	1
E052	Employee_87	Support	South	Product_D	1549	49	2023-09-08	2
E289	Employee_277	Marketing	West	Product_A	6132	13	2023-07-30	2
E134	Employee_337	Sales	South	Product_C	9159	20	2023-10-31	4
E355	Employee_300	Finance	East	Product_D	2630	42	2023-09-19	4
E069	Employee_495	HR	South	Product_C	9828	5	2023-12-31	5
E114	Employee_12	Sales	South	Product_C	3175	25	2023-12-16	2
E448	Employee_184	Finance	South	Product_C	3562	32	2023-02-14	2
E269	Employee_189	Marketing	South	Product_A	5571	43	2023-06-15	2
E180	Employee_108	Support	South	Product_A	7737	37	2023-03-07	3
E443	Employee_414	Marketing	West	Product_B	1705	49	2023-11-03	5
E184	Employee_499	Support	North	Product_A	9674	47	2023-09-29	4
E020	Employee_261	Support	South	Product_D	8284	7	2023-11-23	1
E365	Employee_479	Support	East	Product_A	1492	12	2023-09-09	2
E300	Employee_207	HR	North	Product_B	7847	50	2023-12-11	5
E339	Employee_464	Marketing	East	Product_D	3444	39	2023-01-03	5
E412	Employee_7	Marketing	West	Product_B	5883	35	2023-05-04	1
E276	Employee_302	Sales	North	Product_D	9373	29	2023-05-17	3
E449	Employee_241	HR	North	Product_A	2901	6	2023-10-12	1
E040	Employee_270	Support	North	Product_B	5728	34	2023-02-17	4
E428	Employee_315	Support	North	Product_D	7467	24	2023-10-30	4
E082	Employee_110	HR	East	Product_C	9245	16	2023-12-24	3
E164	Employee_409	HR	South	Product_C	8645	16	2023-03-27	4
E196	Employee_404	Finance	South	Product_D	8265	39	2023-02-16	3
E373	Employee_431	Sales	East	Product_A	8160	16	2023-05-17	2
E497	Employee_367	Support	East	Product_C	4404	17	2023-11-11	2
E396	Employee_307	HR	East	Product_D	5001	45	2023-11-30	4
E038	Employee_284	Support	West	Product_B	9597	47	2023-01-24	2
E447	Employee_337	Marketing	North	Product_C	8055	41	2023-10-29	2
E091	Employee_491	Marketing	East	Product_D	2596	16	2023-08-13	3
E173	Employee_475	Sales	West	Product_A	4782	47	2023-03-19	2
E386	Employee_253	Sales	South	Product_D	4630	10	2023-03-20	1
E357	Employee_401	Finance	North	Product_D	3948	14	2023-01-17	2
E096	Employee_33	Finance	East	Product_B	2681	23	2023-01-07	4
E177	Employee_475	HR	North	Product_A	6348	26	2023-12-17	4
E186	Employee_464	Finance	North	Product_D	4916	14	2023-10-14	4
E283	Employee_170	Finance	South	Product_D	1267	24	2023-11-06	1
E050	Employee_362	Marketing	South	Product_B	6881	6	2023-05-05	2
E120	Employee_370	Support	South	Product_B	7831	11	2023-07-17	5
E046	Employee_212	Sales	North	Product_D	9237	42	2023-12-14	3
E048	Employee_59	Support	North	Product_D	1915	41	2023-12-08	1
E446	Employee_187	HR	North	Product_B	2217	3	2023-05-29	2
E299	Employee_456	Sales	South	Product_C	2201	40	2023-03-12	5
E146	Employee_490	Sales	East	Product_B	5837	14	2023-09-17	2
E233	Employee_91	HR	West	Product_D	4401	34	2023-09-23	2
E310	Employee_118	Sales	West	Product_D	9085	46	2023-08-07	4
E099	Employee_58	HR	South	Product_C	3316	34	2023-10-27	2
E460	Employee_121	HR	East	Product_C	5652	22	2023-01-11	1
E402	Employee_263	Support	West	Product_D	1713	17	2023-05-16	1
E404	Employee_132	Support	West	Product_D	8286	39	2023-04-10	1
E427	Employee_303	Sales	South	Product_A	7035	30	2023-11-12	3
E013	Employee_226	Marketing	North	Product_B	7241	46	2023-07-23	2
E197	Employee_283	Finance	East	Product_D	7652	46	2023-01-31	3
E004	Employee_222	Marketing	East	Product_C	5896	40	2023-10-02	2
E015	Employee_449	HR	North	Product_C	9795	1	2023-03-30	2
E207	Employee_219	Marketing	East	Product_B	2122	40	2023-09-25	3
E230	Employee_334	Support	East	Product_A	4122	4	2023-02-23	2
E161	Employee_128	Finance	South	Product_D	9442	50	2023-09-21	3
E457	Employee_297	Marketing	East	Product_B	9367	49	2023-06-16	3
E336	Employee_325	Support	East	Product_D	3030	44	2023-03-04	5
E292	Employee_36	Sales	West	Product_C	7979	22	2023-09-17	2
E153	Employee_199	Support	East	Product_C	6417	42	2023-08-09	1
E183	Employee_387	Support	West	Product_B	9557	29	2023-12-25	2
E298	Employee_423	Finance	East	Product_D	1001	2	2023-09-28	4
E425	Employee_11	Marketing	South	Product_C	9480	16	2023-07-25	4
E198	Employee_144	Support	South	Product_D	6630	37	2023-11-14	2
E029	Employee_494	Finance	West	Product_C	8956	28	2023-05-18	1
E067	Employee_283	HR	West	Product_C	4379	12	2023-11-04	2
E274	Employee_258	Sales	South	Product_A	2854	35	2023-06-04	2
E415	Employee_132	HR	North	Product_D	2425	22	2023-12-04	3
E433	Employee_152	HR	South	Product_D	3322	2	2023-04-12	1
E073	Employee_270	Marketing	East	Product_A	9103	5	2023-12-30	3
E061	Employee_92	Finance	West	Product_A	7174	25	2023-05-22	2
E239	Employee_345	Finance	West	Product_B	7453	43	2023-12-01	1
E345	Employee_418	HR	North	Product_D	3551	46	2023-08-17	5
E476	Employee_483	Support	North	Product_A	3765	8	2023-01-26	4
E461	Employee_138	Marketing	West	Product_B	6021	19	2023-09-07	1
E115	Employee_306	Finance	West	Product_B	6675	28	2023-05-07	2
E215	Employee_223	Support	South	Product_B	2052	17	2023-08-31	4
E421	Employee_254	HR	East	Product_A	4492	11	2023-04-04	4
E116	Employee_269	Finance	West	Product_A	7671	44	2023-12-21	4
E194	Employee_252	Marketing	North	Product_C	8011	5	2023-07-25	1
E182	Employee_25	Marketing	North	Product_C	6384	5	2023-06-18	1
E056	Employee_370	Finance	North	Product_A	2861	3	2023-06-15	2
E206	Employee_386	HR	South	Product_D	1021	36	2023-01-26	4
E451	Employee_62	HR	North	Product_D	3241	28	2023-09-24	3
E296	Employee_51	Finance	North	Product_D	7235	20	2023-06-27	3
E272	Employee_304	HR	West	Product_C	3240	23	2023-12-13	3
E304	Employee_238	Finance	South	Product_B	3016	10	2023-06-29	1
E472	Employee_120	Support	North	Product_A	9799	9	2023-09-11	5
E482	Employee_478	HR	West	Product_B	3238	42	2023-04-19	3
E277	Employee_79	Marketing	East	Product_D	2000	32	2023-12-05	3
E166	Employee_415	Support	West	Product_B	8645	16	2023-04-20	4
E367	Employee_85	Marketing	South	Product_C	2549	43	2023-05-28	5
E169	Employee_324	HR	West	Product_D	9631	35	2023-01-28	3
E371	Employee_148	Marketing	South	Product_C	6453	32	2023-08-18	5
E158	Employee_196	Marketing	North	Product_C	4077	40	2023-01-20	2
E424	Employee_104	Finance	South	Product_B	7867	12	2023-03-29	2
E416	Employee_476	Sales	West	Product_B	5800	21	2023-10-30	3
E260	Employee_403	Marketing	West	Product_B	9662	7	2023-11-07	2
E131	Employee_426	Finance	North	Product_B	3111	15	2023-03-21	4
E228	Employee_321	Sales	North	Product_C	1879	48	2023-09-23	4
E218	Employee_323	Marketing	South	Product_D	5705	25	2023-06-21	4
E023	Employee_107	Sales	East	Product_D	7133	36	2023-03-08	4
E025	Employee_415	HR	South	Product_B	3395	25	2023-12-23	4
E064	Employee_94	HR	West	Product_C	3288	23	2023-01-23	3
E217	Employee_440	Sales	East	Product_C	3633	5	2023-04-25	1
E219	Employee_274	HR	North	Product_D	8851	12	2023-11-28	5
E130	Employee_429	Finance	East	Product_D	5021	22	2023-09-24	3
E285	Employee_463	Finance	North	Product_C	7279	15	2023-01-14	2
E252	Employee_94	Marketing	North	Product_A	2885	33	2023-07-04	1
E366	Employee_398	HR	West	Product_C	8990	19	2023-05-15	5
E495	Employee_129	Sales	South	Product_C	9474	38	2023-12-05	3
E362	Employee_269	Support	East	Product_D	7631	19	2023-07-05	1
E014	Employee_340	Sales	West	Product_D	3924	30	2023-10-03	2
E363	Employee_377	HR	South	Product_A	2749	47	2023-01-31	5
E469	Employee_112	Support	East	Product_C	9643	44	2023-11-19	2
E246	Employee_115	Support	East	Product_A	2276	33	2023-05-31	1
E376	Employee_309	Sales	East	Product_D	3301	26	2023-06-22	4
E291	Employee_172	Marketing	South	Product_D	9144	40	2023-03-14	3
E223	Employee_37	Marketing	East	Product_D	5583	25	2023-03-02	1
E316	Employee_182	Marketing	South	Product_C	6871	6	2023-08-23	3
E470	Employee_355	Support	East	Product_A	5546	6	2023-07-22	4
E019	Employee_490	Support	West	Product_B	5566	39	2023-08-27	1
E063	Employee_108	Sales	West	Product_A	6733	40	2023-12-09	4
E110	Employee_402	Finance	East	Product_B	2590	42	2023-03-03	2
E287	Employee_406	Marketing	East	Product_A	7391	26	2023-12-06	4
E384	Employee_57	Marketing	South	Product_A	9337	1	2023-06-12	5
E488	Employee_228	Sales	East	Product_A	6586	32	2023-03-10	5
E051	Employee_403	Sales	West	Product_D	5985	27	2023-10-29	3
E389	Employee_420	Marketing	East	Product_D	2976	50	2023-09-03	5
E294	Employee_262	Marketing	South	Product_C	7876	16	2023-11-06	3
E284	Employee_273	Support	West	Product_D	7295	42	2023-03-29	3
E307	Employee_48	Support	East	Product_B	2350	8	2023-01-16	2
E017	Employee_238	Sales	East	Product_A	4931	18	2023-05-11	3
E093	Employee_325	HR	North	Product_D	8438	34	2023-02-14	5
E258	Employee_23	Support	South	Product_C	3773	26	2023-10-08	1
E016	Employee_145	HR	North	Product_C	6255	16	2023-08-13	4
E352	Employee_433	Sales	North	Product_D	8527	20	2023-06-27	5
E399	Employee_95	Finance	North	Product_C	6802	26	2023-11-07	2
E122	Employee_359	Support	South	Product_D	6446	3	2023-03-05	5
E295	Employee_288	Finance	North	Product_A	3363	50	2023-08-27	5
E045	Employee_184	Marketing	East	Product_B	8425	17	2023-02-20	5
E101	Employee_18	Support	East	Product_A	7470	14	2023-02-04	5
E293	Employee_108	HR	South	Product_D	3088	40	2023-03-24	1
E037	Employee_203	Marketing	West	Product_A	9690	44	2023-09-15	3
E332	Employee_56	HR	South	Product_B	5992	8	2023-12-22	1
E083	Employee_112	HR	West	Product_D	3802	34	2023-01-24	3
E214	Employee_164	Support	North	Product_D	3512	6	2023-12-18	4
E208	Employee_101	Marketing	West	Product_D	4777	2	2023-05-31	5
E028	Employee_39	Finance	West	Product_B	4491	37	2023-08-21	4
E123	Employee_340	HR	East	Product_A	6485	10	2023-03-18	2
E243	Employee_42	Sales	West	Product_B	5528	10	2023-02-20	2
E330	Employee_497	HR	South	Product_A	9462	20	2023-07-22	3
E202	Employee_273	Marketing	East	Product_D	5281	23	2023-03-17	3
E372	Employee_418	Marketing	West	Product_B	9108	9	2023-11-05	1
E008	Employee_65	Marketing	South	Product_C	9163	9	2023-02-25	1
E440	Employee_268	HR	South	Product_D	4242	3	2023-04-08	1
E010	Employee_231	Finance	East	Product_B	9972	18	2023-07-02	4
E152	Employee_353	Finance	South	Product_B	9227	49	2023-12-26	2
E288	Employee_161	Marketing	North	Product_A	9947	25	2023-10-04	4
E149	Employee_79	Sales	West	Product_D	3173	14	2023-05-03	5
E327	Employee_73	Sales	West	Product_B	8697	39	2023-06-05	4
E111	Employee_29	HR	North	Product_D	8651	4	2023-01-31	4
E032	Employee_368	Sales	North	Product_D	4533	8	2023-12-17	2
E136	Employee_167	Support	East	Product_B	3037	49	2023-09-26	4
E263	Employee_491	HR	North	Product_C	4052	21	2023-02-25	3
E369	Employee_200	Sales	South	Product_A	8584	28	2023-02-10	5
E178	Employee_97	Finance	North	Product_C	8538	44	2023-04-08	5
E487	Employee_84	Support	South	Product_D	5656	19	2023-06-10	3
E454	Employee_242	Finance	East	Product_C	1822	7	2023-12-25	3
E375	Employee_371	Marketing	North	Product_C	5079	28	2023-09-17	3
E343	Employee_153	Finance	West	Product_D	8678	21	2023-11-17	5
E392	Employee_390	Marketing	East	Product_A	3041	37	2023-11-18	1
E475	Employee_146	Finance	South	Product_B	8711	49	2023-12-18	3
E007	Employee_153	Support	North	Product_C	4057	31	2023-01-03	1
E039	Employee_462	HR	West	Product_C	9423	22	2023-11-30	4
E077	Employee_486	Finance	South	Product_A	2200	2	2023-05-05	5
E486	Employee_327	Finance	South	Product_C	9938	28	2023-10-25	3
E221	Employee_458	Marketing	North	Product_A	5794	21	2023-08-09	1
E105	Employee_86	Marketing	West	Product_D	6113	2	2023-07-27	3
E081	Employee_185	HR	North	Product_C	2779	43	2023-10-09	5
E062	Employee_95	Support	North	Product_B	3230	19	2023-11-11	2
E401	Employee_439	Finance	East	Product_B	9911	27	2023-09-25	2
E044	Employee_309	Support	West	Product_B	3191	42	2023-02-21	3
E119	Employee_173	Support	North	Product_D	7719	45	2023-12-22	2
E324	Employee_64	Finance	North	Product_D	7806	33	2023-12-06	4
E385	Employee_245	Support	South	Product_D	6234	2	2023-10-24	5
E224	Employee_208	Finance	South	Product_A	6976	11	2023-05-07	4
E395	Employee_430	Finance	South	Product_C	1150	15	2023-06-03	2
E370	Employee_422	Support	East	Product_C	5899	21	2023-08-10	4
E236	Employee_398	Support	North	Product_C	8087	43	2023-01-14	4
E306	Employee_435	HR	North	Product_D	9662	16	2023-08-15	4
E106	Employee_240	Finance	East	Product_C	2175	19	2023-04-18	4
E361	Employee_186	HR	West	Product_C	3480	30	2023-05-26	3
E458	Employee_484	Finance	West	Product_B	3579	30	2023-08-27	2
E060	Employee_471	Support	East	Product_A	6033	38	2023-11-21	5
E148	Employee_317	Finance	North	Product_D	1963	27	2023-03-02	2
E160	Employee_467	Marketing	West	Product_B	1539	43	2023-08-01	4
E450	Employee_195	Sales	North	Product_C	9279	47	2023-05-30	5
E087	Employee_74	HR	West	Product_B	3524	35	2023-07-20	2
E463	Employee_442	Marketing	South	Product_A	3482	8	2023-03-15	1
E317	Employee_359	Marketing	East	Product_D	4672	7	2023-07-17	3
E141	Employee_238	Marketing	East	Product_D	6927	4	2023-07-18	2
E423	Employee_26	HR	East	Product_B	2294	25	2023-04-09	2
E417	Employee_353	Sales	East	Product_B	4293	35	2023-10-12	2
E068	Employee_82	Finance	West	Product_A	6950	20	2023-08-06	4
E439	Employee_489	HR	West	Product_D	2387	18	2023-05-24	2
E024	Employee_332	Sales	West	Product_C	7995	20	2023-06-24	5
E139	Employee_7	Marketing	East	Product_C	9745	5	2023-05-24	3
E088	Employee_385	Support	East	Product_C	3688	18	2023-09-05	1
E328	Employee_264	Marketing	East	Product_C	5130	14	2023-10-01	5
E150	Employee_296	Marketing	North	Product_C	7607	36	2023-01-07	1
E313	Employee_65	Sales	North	Product_A	5708	6	2023-07-28	4
E485	Employee_234	HR	South	Product_B	5175	8	2023-07-24	4
E344	Employee_328	Support	East	Product_D	2868	48	2023-07-12	1
E232	Employee_321	Finance	South	Product_C	5518	3	2023-11-03	2
E474	Employee_482	Support	West	Product_A	3871	8	2023-12-10	5
E378	Employee_129	Finance	South	Product_B	8348	33	2023-02-14	5
E204	Employee_115	Marketing	East	Product_D	6166	6	2023-10-28	1
E201	Employee_492	Sales	North	Product_C	3215	44	2023-05-12	1
E500	Employee_3	Finance	North	Product_A	9237	44	2023-05-02	1
E312	Employee_358	Finance	West	Product_A	6747	26	2023-12-04	4
E035	Employee_6	HR	North	Product_C	6837	21	2023-01-26	1
E042	Employee_483	HR	East	Product_D	5252	35	2023-06-02	1
E222	Employee_168	Finance	North	Product_D	7083	15	2023-10-14	5
E187	Employee_187	Sales	East	Product_B	7552	20	2023-11-10	4
E473	Employee_88	Marketing	North	Product_D	9066	32	2023-08-12	3
E170	Employee_406	Finance	West	Product_C	9828	3	2023-08-30	2
E112	Employee_64	Support	East	Product_C	4040	28	2023-03-09	4
E034	Employee_417	Finance	East	Product_C	1080	1	2023-02-17	5
E301	Employee_144	HR	South	Product_C	5386	33	2023-05-20	5
E059	Employee_487	Sales	West	Product_B	9464	38	2023-02-20	2
E464	Employee_76	HR	East	Product_B	8344	19	2023-07-31	3
E341	Employee_170	Marketing	East	Product_D	3833	35	2023-07-21	4
E444	Employee_107	Finance	North	Product_B	7156	16	2023-11-01	4
E117	Employee_74	Sales	North	Product_D	9435	44	2023-02-23	4
E172	Employee_129	Sales	East	Product_A	4675	27	2023-05-06	4
E314	Employee_94	HR	South	Product_A	8831	27	2023-05-28	3
E405	Employee_420	Marketing	East	Product_A	5819	32	2023-11-10	2
E036	Employee_253	Marketing	West	Product_D	8330	29	2023-08-17	2
E266	Employee_286	Support	East	Product_C	5394	16	2023-08-27	4
E092	Employee_196	Support	South	Product_D	8432	43	2023-03-07	3
E354	Employee_306	Support	East	Product_A	3791	33	2023-09-15	3
E235	Employee_12	Sales	West	Product_C	7904	1	2023-04-04	1
E331	Employee_113	Sales	South	Product_A	2816	5	2023-04-11	5
E247	Employee_398	Finance	East	Product_C	4470	43	2023-07-14	3
E227	Employee_260	Marketing	North	Product_B	8877	11	2023-06-27	3
E360	Employee_206	HR	South	Product_C	1994	7	2023-04-03	5
\.


--
-- TOC entry 4856 (class 2606 OID 16510)
-- Name: sales_data sales_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_data
    ADD CONSTRAINT sales_data_pkey PRIMARY KEY (employee_id);


-- Completed on 2026-04-01 09:18:08

--
-- PostgreSQL database dump complete
--

\unrestrict irXd6MRJ0L1Eklp0whS7heqFthH6hfWWiHsuUbtZUo26AYqKoD5OO3NAMGgVu7z

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict INawiv9fuL2pyjw5ajmjCaMUak42hFKEDO8rCatK58FGITgXpfy5XnEz8heVE6d

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-01 09:18:08

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

-- Completed on 2026-04-01 09:18:08

--
-- PostgreSQL database dump complete
--

\unrestrict INawiv9fuL2pyjw5ajmjCaMUak42hFKEDO8rCatK58FGITgXpfy5XnEz8heVE6d

-- Completed on 2026-04-01 09:18:08

--
-- PostgreSQL database cluster dump complete
--

