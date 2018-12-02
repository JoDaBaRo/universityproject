SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: class_teachers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.class_teachers (
    id bigint NOT NULL,
    practical_class_id integer NOT NULL,
    teacher_category_id integer NOT NULL,
    vehicle_plate_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: class_teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.class_teachers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: class_teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.class_teachers_id_seq OWNED BY public.class_teachers.id;


--
-- Name: control_student_tests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_student_tests (
    id bigint NOT NULL,
    test_date timestamp without time zone NOT NULL,
    test_qualification double precision NOT NULL,
    approve boolean NOT NULL,
    control_test_id integer NOT NULL,
    student_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: control_student_tests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_student_tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_student_tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_student_tests_id_seq OWNED BY public.control_student_tests.id;


--
-- Name: control_tests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_tests (
    id bigint NOT NULL,
    description character varying NOT NULL,
    test_length integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: control_tests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.control_tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: control_tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.control_tests_id_seq OWNED BY public.control_tests.id;


--
-- Name: cost_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cost_types (
    id bigint NOT NULL,
    general_cost_id integer NOT NULL,
    cost_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: cost_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cost_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cost_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cost_types_id_seq OWNED BY public.cost_types.id;


--
-- Name: costs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.costs (
    id bigint NOT NULL,
    total_value numeric NOT NULL,
    student_id integer NOT NULL,
    practical_cost_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: costs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.costs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: costs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.costs_id_seq OWNED BY public.costs.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    person_id character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: general_costs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.general_costs (
    id bigint NOT NULL,
    description character varying NOT NULL,
    value numeric DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: general_costs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.general_costs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: general_costs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.general_costs_id_seq OWNED BY public.general_costs.id;


--
-- Name: licence_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.licence_types (
    id bigint NOT NULL,
    description character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: licence_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.licence_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licence_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.licence_types_id_seq OWNED BY public.licence_types.id;


--
-- Name: licences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.licences (
    id bigint NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    licence_type_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: licences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.licences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: licences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.licences_id_seq OWNED BY public.licences.id;


--
-- Name: people; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people (
    id bigint NOT NULL,
    name character varying NOT NULL,
    last_name character varying NOT NULL,
    address character varying NOT NULL,
    phone_number character varying DEFAULT ''::character varying NOT NULL,
    id_number character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: practical_classes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.practical_classes (
    id bigint NOT NULL,
    description character varying NOT NULL,
    class_length integer NOT NULL,
    licence_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: practical_classes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.practical_classes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: practical_classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.practical_classes_id_seq OWNED BY public.practical_classes.id;


--
-- Name: practical_costs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.practical_costs (
    id bigint NOT NULL,
    description character varying NOT NULL,
    value numeric DEFAULT 0 NOT NULL,
    licence_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: practical_costs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.practical_costs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: practical_costs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.practical_costs_id_seq OWNED BY public.practical_costs.id;


--
-- Name: practical_student_classes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.practical_student_classes (
    id bigint NOT NULL,
    student_performance text NOT NULL,
    class_date timestamp without time zone NOT NULL,
    student_id integer NOT NULL,
    practical_class_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: practical_student_classes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.practical_student_classes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: practical_student_classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.practical_student_classes_id_seq OWNED BY public.practical_student_classes.id;


--
-- Name: practical_student_tests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.practical_student_tests (
    id bigint NOT NULL,
    test_date timestamp without time zone NOT NULL,
    test_qualification double precision NOT NULL,
    approve boolean NOT NULL,
    practical_test_id integer NOT NULL,
    student_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: practical_student_tests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.practical_student_tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: practical_student_tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.practical_student_tests_id_seq OWNED BY public.practical_student_tests.id;


--
-- Name: practical_tests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.practical_tests (
    id bigint NOT NULL,
    description character varying NOT NULL,
    test_length integer NOT NULL,
    test_value numeric NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: practical_tests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.practical_tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: practical_tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.practical_tests_id_seq OWNED BY public.practical_tests.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: student_advances; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.student_advances (
    id bigint NOT NULL,
    advance_value numeric NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    advance_date timestamp without time zone NOT NULL,
    student_id integer NOT NULL,
    cost_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: student_advances_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.student_advances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: student_advances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.student_advances_id_seq OWNED BY public.student_advances.id;


--
-- Name: student_licences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.student_licences (
    id bigint NOT NULL,
    student_id integer NOT NULL,
    licence_id integer NOT NULL,
    expedition_date timestamp without time zone NOT NULL,
    expiration_date timestamp without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: student_licences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.student_licences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: student_licences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.student_licences_id_seq OWNED BY public.student_licences.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.students (
    id bigint NOT NULL,
    enroll_date timestamp without time zone NOT NULL,
    customer_id integer NOT NULL,
    licence_id integer NOT NULL,
    class_teacher_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: teacher_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teacher_categories (
    id bigint NOT NULL,
    teacher_id integer NOT NULL,
    licence_type_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: teacher_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teacher_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teacher_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teacher_categories_id_seq OWNED BY public.teacher_categories.id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teachers (
    id bigint NOT NULL,
    person_id character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teachers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- Name: teoric_classes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teoric_classes (
    id bigint NOT NULL,
    description character varying NOT NULL,
    class_length integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: teoric_classes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teoric_classes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teoric_classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teoric_classes_id_seq OWNED BY public.teoric_classes.id;


--
-- Name: theoretical_tests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.theoretical_tests (
    id bigint NOT NULL,
    description character varying NOT NULL,
    test_length integer NOT NULL,
    test_value numeric NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: theoretical_tests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.theoretical_tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: theoretical_tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.theoretical_tests_id_seq OWNED BY public.theoretical_tests.id;


--
-- Name: theorical_student_classes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.theorical_student_classes (
    id bigint NOT NULL,
    class_date timestamp without time zone NOT NULL,
    student_id integer NOT NULL,
    teacher_id integer NOT NULL,
    teoric_class_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: theorical_student_classes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.theorical_student_classes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: theorical_student_classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.theorical_student_classes_id_seq OWNED BY public.theorical_student_classes.id;


--
-- Name: theorical_student_tests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.theorical_student_tests (
    id bigint NOT NULL,
    test_date timestamp without time zone NOT NULL,
    test_qualification double precision NOT NULL,
    approve boolean NOT NULL,
    theorical_test_id integer NOT NULL,
    student_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: theorical_student_tests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.theorical_student_tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: theorical_student_tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.theorical_student_tests_id_seq OWNED BY public.theorical_student_tests.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    failed_attempts integer DEFAULT 0 NOT NULL,
    unlock_token character varying,
    locked_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: vehicle_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.vehicle_categories (
    id bigint NOT NULL,
    description character varying NOT NULL,
    hourly_rate double precision NOT NULL,
    licence_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: vehicle_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.vehicle_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vehicle_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.vehicle_categories_id_seq OWNED BY public.vehicle_categories.id;


--
-- Name: vehicle_consumes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.vehicle_consumes (
    id bigint NOT NULL,
    kilometers_traveled integer NOT NULL,
    spent_gas integer NOT NULL,
    damage_description character varying DEFAULT ''::character varying NOT NULL,
    vehicle_plate_id integer NOT NULL,
    practical_student_class_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: vehicle_consumes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.vehicle_consumes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vehicle_consumes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.vehicle_consumes_id_seq OWNED BY public.vehicle_consumes.id;


--
-- Name: vehicles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.vehicles (
    id bigint NOT NULL,
    plate character varying NOT NULL,
    brand character varying DEFAULT ''::character varying NOT NULL,
    displacement character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    model_year character varying DEFAULT ''::character varying NOT NULL,
    vehicle_category_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: vehicles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.vehicles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vehicles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.vehicles_id_seq OWNED BY public.vehicles.id;


--
-- Name: class_teachers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.class_teachers ALTER COLUMN id SET DEFAULT nextval('public.class_teachers_id_seq'::regclass);


--
-- Name: control_student_tests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_student_tests ALTER COLUMN id SET DEFAULT nextval('public.control_student_tests_id_seq'::regclass);


--
-- Name: control_tests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_tests ALTER COLUMN id SET DEFAULT nextval('public.control_tests_id_seq'::regclass);


--
-- Name: cost_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cost_types ALTER COLUMN id SET DEFAULT nextval('public.cost_types_id_seq'::regclass);


--
-- Name: costs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.costs ALTER COLUMN id SET DEFAULT nextval('public.costs_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: general_costs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.general_costs ALTER COLUMN id SET DEFAULT nextval('public.general_costs_id_seq'::regclass);


--
-- Name: licence_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.licence_types ALTER COLUMN id SET DEFAULT nextval('public.licence_types_id_seq'::regclass);


--
-- Name: licences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.licences ALTER COLUMN id SET DEFAULT nextval('public.licences_id_seq'::regclass);


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Name: practical_classes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practical_classes ALTER COLUMN id SET DEFAULT nextval('public.practical_classes_id_seq'::regclass);


--
-- Name: practical_costs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practical_costs ALTER COLUMN id SET DEFAULT nextval('public.practical_costs_id_seq'::regclass);


--
-- Name: practical_student_classes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practical_student_classes ALTER COLUMN id SET DEFAULT nextval('public.practical_student_classes_id_seq'::regclass);


--
-- Name: practical_student_tests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practical_student_tests ALTER COLUMN id SET DEFAULT nextval('public.practical_student_tests_id_seq'::regclass);


--
-- Name: practical_tests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practical_tests ALTER COLUMN id SET DEFAULT nextval('public.practical_tests_id_seq'::regclass);


--
-- Name: student_advances id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.student_advances ALTER COLUMN id SET DEFAULT nextval('public.student_advances_id_seq'::regclass);


--
-- Name: student_licences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.student_licences ALTER COLUMN id SET DEFAULT nextval('public.student_licences_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: teacher_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teacher_categories ALTER COLUMN id SET DEFAULT nextval('public.teacher_categories_id_seq'::regclass);


--
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- Name: teoric_classes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teoric_classes ALTER COLUMN id SET DEFAULT nextval('public.teoric_classes_id_seq'::regclass);


--
-- Name: theoretical_tests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.theoretical_tests ALTER COLUMN id SET DEFAULT nextval('public.theoretical_tests_id_seq'::regclass);


--
-- Name: theorical_student_classes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.theorical_student_classes ALTER COLUMN id SET DEFAULT nextval('public.theorical_student_classes_id_seq'::regclass);


--
-- Name: theorical_student_tests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.theorical_student_tests ALTER COLUMN id SET DEFAULT nextval('public.theorical_student_tests_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: vehicle_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vehicle_categories ALTER COLUMN id SET DEFAULT nextval('public.vehicle_categories_id_seq'::regclass);


--
-- Name: vehicle_consumes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vehicle_consumes ALTER COLUMN id SET DEFAULT nextval('public.vehicle_consumes_id_seq'::regclass);


--
-- Name: vehicles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vehicles ALTER COLUMN id SET DEFAULT nextval('public.vehicles_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: class_teachers class_teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.class_teachers
    ADD CONSTRAINT class_teachers_pkey PRIMARY KEY (id);


--
-- Name: control_student_tests control_student_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_student_tests
    ADD CONSTRAINT control_student_tests_pkey PRIMARY KEY (id);


--
-- Name: control_tests control_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_tests
    ADD CONSTRAINT control_tests_pkey PRIMARY KEY (id);


--
-- Name: cost_types cost_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cost_types
    ADD CONSTRAINT cost_types_pkey PRIMARY KEY (id);


--
-- Name: costs costs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.costs
    ADD CONSTRAINT costs_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: general_costs general_costs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.general_costs
    ADD CONSTRAINT general_costs_pkey PRIMARY KEY (id);


--
-- Name: licence_types licence_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.licence_types
    ADD CONSTRAINT licence_types_pkey PRIMARY KEY (id);


--
-- Name: licences licences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.licences
    ADD CONSTRAINT licences_pkey PRIMARY KEY (id);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: practical_classes practical_classes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practical_classes
    ADD CONSTRAINT practical_classes_pkey PRIMARY KEY (id);


--
-- Name: practical_costs practical_costs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practical_costs
    ADD CONSTRAINT practical_costs_pkey PRIMARY KEY (id);


--
-- Name: practical_student_classes practical_student_classes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practical_student_classes
    ADD CONSTRAINT practical_student_classes_pkey PRIMARY KEY (id);


--
-- Name: practical_student_tests practical_student_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practical_student_tests
    ADD CONSTRAINT practical_student_tests_pkey PRIMARY KEY (id);


--
-- Name: practical_tests practical_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.practical_tests
    ADD CONSTRAINT practical_tests_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: student_advances student_advances_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.student_advances
    ADD CONSTRAINT student_advances_pkey PRIMARY KEY (id);


--
-- Name: student_licences student_licences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.student_licences
    ADD CONSTRAINT student_licences_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: teacher_categories teacher_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teacher_categories
    ADD CONSTRAINT teacher_categories_pkey PRIMARY KEY (id);


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- Name: teoric_classes teoric_classes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teoric_classes
    ADD CONSTRAINT teoric_classes_pkey PRIMARY KEY (id);


--
-- Name: theoretical_tests theoretical_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.theoretical_tests
    ADD CONSTRAINT theoretical_tests_pkey PRIMARY KEY (id);


--
-- Name: theorical_student_classes theorical_student_classes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.theorical_student_classes
    ADD CONSTRAINT theorical_student_classes_pkey PRIMARY KEY (id);


--
-- Name: theorical_student_tests theorical_student_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.theorical_student_tests
    ADD CONSTRAINT theorical_student_tests_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: vehicle_categories vehicle_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vehicle_categories
    ADD CONSTRAINT vehicle_categories_pkey PRIMARY KEY (id);


--
-- Name: vehicle_consumes vehicle_consumes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vehicle_consumes
    ADD CONSTRAINT vehicle_consumes_pkey PRIMARY KEY (id);


--
-- Name: vehicles vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);


--
-- Name: index_class_teachers_on_practical_class_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_class_teachers_on_practical_class_id ON public.class_teachers USING btree (practical_class_id);


--
-- Name: index_class_teachers_on_teacher_category_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_class_teachers_on_teacher_category_id ON public.class_teachers USING btree (teacher_category_id);


--
-- Name: index_class_teachers_on_vehicle_plate_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_class_teachers_on_vehicle_plate_id ON public.class_teachers USING btree (vehicle_plate_id);


--
-- Name: index_control_student_tests_on_control_test_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_control_student_tests_on_control_test_id ON public.control_student_tests USING btree (control_test_id);


--
-- Name: index_control_student_tests_on_student_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_control_student_tests_on_student_id ON public.control_student_tests USING btree (student_id);


--
-- Name: index_cost_types_on_cost_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cost_types_on_cost_id ON public.cost_types USING btree (cost_id);


--
-- Name: index_cost_types_on_general_cost_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cost_types_on_general_cost_id ON public.cost_types USING btree (general_cost_id);


--
-- Name: index_costs_on_practical_cost_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_costs_on_practical_cost_id ON public.costs USING btree (practical_cost_id);


--
-- Name: index_costs_on_student_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_costs_on_student_id ON public.costs USING btree (student_id);


--
-- Name: index_customers_on_person_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_customers_on_person_id ON public.customers USING btree (person_id);


--
-- Name: index_licences_on_licence_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_licences_on_licence_type_id ON public.licences USING btree (licence_type_id);


--
-- Name: index_people_on_id_number; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_people_on_id_number ON public.people USING btree (id_number);


--
-- Name: index_practical_classes_on_licence_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_practical_classes_on_licence_id ON public.practical_classes USING btree (licence_id);


--
-- Name: index_practical_costs_on_licence_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_practical_costs_on_licence_id ON public.practical_costs USING btree (licence_id);


--
-- Name: index_practical_student_classes_on_practical_class_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_practical_student_classes_on_practical_class_id ON public.practical_student_classes USING btree (practical_class_id);


--
-- Name: index_practical_student_classes_on_student_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_practical_student_classes_on_student_id ON public.practical_student_classes USING btree (student_id);


--
-- Name: index_practical_student_tests_on_practical_test_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_practical_student_tests_on_practical_test_id ON public.practical_student_tests USING btree (practical_test_id);


--
-- Name: index_practical_student_tests_on_student_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_practical_student_tests_on_student_id ON public.practical_student_tests USING btree (student_id);


--
-- Name: index_student_advances_on_cost_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_student_advances_on_cost_id ON public.student_advances USING btree (cost_id);


--
-- Name: index_student_advances_on_student_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_student_advances_on_student_id ON public.student_advances USING btree (student_id);


--
-- Name: index_student_licences_on_licence_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_student_licences_on_licence_id ON public.student_licences USING btree (licence_id);


--
-- Name: index_student_licences_on_student_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_student_licences_on_student_id ON public.student_licences USING btree (student_id);


--
-- Name: index_students_on_class_teacher_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_students_on_class_teacher_id ON public.students USING btree (class_teacher_id);


--
-- Name: index_students_on_customer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_students_on_customer_id ON public.students USING btree (customer_id);


--
-- Name: index_students_on_licence_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_students_on_licence_id ON public.students USING btree (licence_id);


--
-- Name: index_teacher_categories_on_licence_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_teacher_categories_on_licence_type_id ON public.teacher_categories USING btree (licence_type_id);


--
-- Name: index_teacher_categories_on_teacher_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_teacher_categories_on_teacher_id ON public.teacher_categories USING btree (teacher_id);


--
-- Name: index_teachers_on_person_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_teachers_on_person_id ON public.teachers USING btree (person_id);


--
-- Name: index_theorical_student_classes_on_student_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_theorical_student_classes_on_student_id ON public.theorical_student_classes USING btree (student_id);


--
-- Name: index_theorical_student_classes_on_teacher_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_theorical_student_classes_on_teacher_id ON public.theorical_student_classes USING btree (teacher_id);


--
-- Name: index_theorical_student_classes_on_teoric_class_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_theorical_student_classes_on_teoric_class_id ON public.theorical_student_classes USING btree (teoric_class_id);


--
-- Name: index_theorical_student_tests_on_student_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_theorical_student_tests_on_student_id ON public.theorical_student_tests USING btree (student_id);


--
-- Name: index_theorical_student_tests_on_theorical_test_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_theorical_student_tests_on_theorical_test_id ON public.theorical_student_tests USING btree (theorical_test_id);


--
-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_confirmation_token ON public.users USING btree (confirmation_token);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_users_on_unlock_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_unlock_token ON public.users USING btree (unlock_token);


--
-- Name: index_vehicle_categories_on_licence_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_vehicle_categories_on_licence_id ON public.vehicle_categories USING btree (licence_id);


--
-- Name: index_vehicle_consumes_on_practical_student_class_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_vehicle_consumes_on_practical_student_class_id ON public.vehicle_consumes USING btree (practical_student_class_id);


--
-- Name: index_vehicle_consumes_on_vehicle_plate_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_vehicle_consumes_on_vehicle_plate_id ON public.vehicle_consumes USING btree (vehicle_plate_id);


--
-- Name: index_vehicles_on_vehicle_category_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_vehicles_on_vehicle_category_id ON public.vehicles USING btree (vehicle_category_id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20181108212504'),
('20181123214949'),
('20181123215348'),
('20181123221210'),
('20181123223837'),
('20181123224435'),
('20181126225539'),
('20181126230338'),
('20181126232754'),
('20181128140525'),
('20181128141128'),
('20181128141541'),
('20181128142413'),
('20181128144354'),
('20181128144711'),
('20181128145352'),
('20181128150344'),
('20181128151401'),
('20181128151957'),
('20181128153124'),
('20181128162421'),
('20181128163412'),
('20181128164057'),
('20181128164548'),
('20181128164805'),
('20181128165444'),
('20181128165715'),
('20181128170153');


