--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.23
-- Dumped by pg_dump version 9.5.5

-- Started on 2019-10-07 15:05:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2044 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 57304)
-- Name: defuncion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE defuncion (
    iddefuncion integer NOT NULL,
    nacta integer,
    ntomo integer,
    fechaacta date,
    nombre1 character varying(30),
    nombre2 character varying(30),
    apellido1 character varying(30),
    apellido2 character varying(30),
    codestado integer,
    codmunicipio integer,
    codparroquia integer,
    codof integer,
    idsolicitud integer,
    anosolicitud integer
);


ALTER TABLE defuncion OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 57302)
-- Name: defuncion_iddefuncion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE defuncion_iddefuncion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE defuncion_iddefuncion_seq OWNER TO postgres;

--
-- TOC entry 2046 (class 0 OID 0)
-- Dependencies: 181
-- Name: defuncion_iddefuncion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE defuncion_iddefuncion_seq OWNED BY defuncion.iddefuncion;


--
-- TOC entry 173 (class 1259 OID 48956)
-- Name: estado; Type: TABLE; Schema: public; Owner: onrc
--

CREATE TABLE estado (
    codestado integer NOT NULL,
    nombrestado character varying(20)
);


ALTER TABLE estado OWNER TO onrc;

--
-- TOC entry 2048 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN estado.codestado; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN estado.codestado IS 'Código de estado';


--
-- TOC entry 2049 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN estado.nombrestado; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN estado.nombrestado IS 'Nombre del estado';


--
-- TOC entry 184 (class 1259 OID 57318)
-- Name: matrimonio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE matrimonio (
    idmatrimonio integer NOT NULL,
    nacta integer,
    ntomo integer,
    fechaacta date,
    nombre1esposo character varying(30),
    nombre2esposo character varying(30),
    apellido1esposo character varying(30),
    apellido2esposo character varying(30),
    nombre1esposa character varying(30),
    nombre2esposa character varying(30),
    apellido1esposa character varying(30),
    apellido2esposa character varying(30),
    codestado integer,
    codmunicipio integer,
    codparroquia integer,
    codof integer,
    idsolicitud integer,
    anosolicitud integer
);


ALTER TABLE matrimonio OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 57316)
-- Name: matrimonio_idmatrimonio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE matrimonio_idmatrimonio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE matrimonio_idmatrimonio_seq OWNER TO postgres;

--
-- TOC entry 2052 (class 0 OID 0)
-- Dependencies: 183
-- Name: matrimonio_idmatrimonio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE matrimonio_idmatrimonio_seq OWNED BY matrimonio.idmatrimonio;


--
-- TOC entry 174 (class 1259 OID 48959)
-- Name: municipio; Type: TABLE; Schema: public; Owner: onrc
--

CREATE TABLE municipio (
    codmunicipio integer NOT NULL,
    nombremunicipio character varying(20),
    codestadom integer NOT NULL
);


ALTER TABLE municipio OWNER TO onrc;

--
-- TOC entry 2054 (class 0 OID 0)
-- Dependencies: 174
-- Name: COLUMN municipio.codmunicipio; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN municipio.codmunicipio IS 'Código municipio';


--
-- TOC entry 2055 (class 0 OID 0)
-- Dependencies: 174
-- Name: COLUMN municipio.nombremunicipio; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN municipio.nombremunicipio IS 'Nombre municipio';


--
-- TOC entry 2056 (class 0 OID 0)
-- Dependencies: 174
-- Name: COLUMN municipio.codestadom; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN municipio.codestadom IS 'Código estado';


--
-- TOC entry 180 (class 1259 OID 57291)
-- Name: nacimiento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE nacimiento (
    idnacimiento integer NOT NULL,
    nacta integer,
    ntomo integer,
    fechaacta date,
    nombre1 character varying(30),
    nombre2 character varying(30),
    apellido1 character varying(30),
    apellido2 character varying(30),
    codestado integer,
    codmunicipio integer,
    codparroquia integer,
    codof integer,
    idsolicitud integer,
    anosolicitud integer
);


ALTER TABLE nacimiento OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 57289)
-- Name: nacimiento_idnacimiento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE nacimiento_idnacimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nacimiento_idnacimiento_seq OWNER TO postgres;

--
-- TOC entry 2059 (class 0 OID 0)
-- Dependencies: 179
-- Name: nacimiento_idnacimiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE nacimiento_idnacimiento_seq OWNED BY nacimiento.idnacimiento;


--
-- TOC entry 175 (class 1259 OID 48962)
-- Name: ourc; Type: TABLE; Schema: public; Owner: onrc
--

CREATE TABLE ourc (
    codestado integer NOT NULL,
    codof integer NOT NULL,
    tipoficina "char" DEFAULT 'C'::"char" NOT NULL,
    nombreuh character varying(80) NOT NULL,
    codmunicipio integer NOT NULL,
    codparroquia integer NOT NULL,
    CONSTRAINT checktipoficina CHECK ((((((tipoficina = 'A'::"char") OR (tipoficina = 'B'::"char")) OR (tipoficina = 'C'::"char")) OR (tipoficina = 'D'::"char")) OR (tipoficina = 'E'::"char")))
);


ALTER TABLE ourc OWNER TO onrc;

--
-- TOC entry 2061 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN ourc.codestado; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN ourc.codestado IS 'Código del Estado';


--
-- TOC entry 2062 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN ourc.codof; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN ourc.codof IS 'Código de la Oficina';


--
-- TOC entry 2063 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN ourc.tipoficina; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN ourc.tipoficina IS 'Tipo de Oficina';


--
-- TOC entry 2064 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN ourc.nombreuh; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN ourc.nombreuh IS 'Nombre de la Unidad Hospitalaria';


--
-- TOC entry 2065 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN ourc.codmunicipio; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN ourc.codmunicipio IS 'Código del Municipio';


--
-- TOC entry 2066 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN ourc.codparroquia; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN ourc.codparroquia IS 'Código de la Parroquia';


--
-- TOC entry 176 (class 1259 OID 48967)
-- Name: parroquia; Type: TABLE; Schema: public; Owner: onrc
--

CREATE TABLE parroquia (
    codparroquia integer NOT NULL,
    nombreparroquia character varying(30),
    codmunicipiop integer NOT NULL,
    codestadop integer NOT NULL
);


ALTER TABLE parroquia OWNER TO onrc;

--
-- TOC entry 2068 (class 0 OID 0)
-- Dependencies: 176
-- Name: COLUMN parroquia.codparroquia; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN parroquia.codparroquia IS 'Código de la Parroquia';


--
-- TOC entry 2069 (class 0 OID 0)
-- Dependencies: 176
-- Name: COLUMN parroquia.nombreparroquia; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN parroquia.nombreparroquia IS 'Nombre de la Parroquia';


--
-- TOC entry 2070 (class 0 OID 0)
-- Dependencies: 176
-- Name: COLUMN parroquia.codmunicipiop; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN parroquia.codmunicipiop IS 'Código del Municipio';


--
-- TOC entry 2071 (class 0 OID 0)
-- Dependencies: 176
-- Name: COLUMN parroquia.codestadop; Type: COMMENT; Schema: public; Owner: onrc
--

COMMENT ON COLUMN parroquia.codestadop IS 'Código del Estado';


--
-- TOC entry 178 (class 1259 OID 57272)
-- Name: solicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE solicitud (
    idsolicitud integer NOT NULL,
    anosolicitud integer DEFAULT date_part('year'::text, now()) NOT NULL,
    tipoacta character varying(15),
    fecharegistrosoli date DEFAULT now(),
    rutaimagenact text,
    fecharepuestasoli date,
    solicerrada boolean DEFAULT false,
    quienentreacta integer,
    idusuario integer,
    eliminada boolean DEFAULT false
);


ALTER TABLE solicitud OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 57270)
-- Name: solicitud_idsolicitud_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE solicitud_idsolicitud_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE solicitud_idsolicitud_seq OWNER TO postgres;

--
-- TOC entry 2074 (class 0 OID 0)
-- Dependencies: 177
-- Name: solicitud_idsolicitud_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE solicitud_idsolicitud_seq OWNED BY solicitud.idsolicitud;


--
-- TOC entry 186 (class 1259 OID 57331)
-- Name: ueh; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ueh (
    idueh integer NOT NULL,
    nacta integer,
    ntomo integer,
    fechaacta date,
    nombre1esposo character varying(30),
    nombre2esposo character varying(30),
    apellido1esposo character varying(30),
    apellido2esposo character varying(30),
    nombre1esposa character varying(30),
    nombre2esposa character varying(30),
    apellido1esposa character varying(30),
    apellido2esposa character varying(30),
    codestado integer,
    codmunicipio integer,
    codparroquia integer,
    codof integer,
    idsolicitud integer,
    anosolicitud integer
);


ALTER TABLE ueh OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 57329)
-- Name: ueh_idueh_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ueh_idueh_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ueh_idueh_seq OWNER TO postgres;

--
-- TOC entry 2077 (class 0 OID 0)
-- Dependencies: 185
-- Name: ueh_idueh_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ueh_idueh_seq OWNED BY ueh.idueh;


--
-- TOC entry 171 (class 1259 OID 40763)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    idusuario integer NOT NULL,
    tipodocumento character varying(1),
    cedula character varying(30),
    nombre character varying(30),
    apellido character varying(30),
    correo text,
    rutaimagen text,
    activo boolean DEFAULT false,
    tipousuario character varying(15),
    usuario character varying(30)
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 40766)
-- Name: usuario_idusuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_idusuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_idusuario_seq OWNER TO postgres;

--
-- TOC entry 2080 (class 0 OID 0)
-- Dependencies: 172
-- Name: usuario_idusuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_idusuario_seq OWNED BY usuario.idusuario;


--
-- TOC entry 1881 (class 2604 OID 57307)
-- Name: iddefuncion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY defuncion ALTER COLUMN iddefuncion SET DEFAULT nextval('defuncion_iddefuncion_seq'::regclass);


--
-- TOC entry 1882 (class 2604 OID 57321)
-- Name: idmatrimonio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matrimonio ALTER COLUMN idmatrimonio SET DEFAULT nextval('matrimonio_idmatrimonio_seq'::regclass);


--
-- TOC entry 1880 (class 2604 OID 57294)
-- Name: idnacimiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nacimiento ALTER COLUMN idnacimiento SET DEFAULT nextval('nacimiento_idnacimiento_seq'::regclass);


--
-- TOC entry 1875 (class 2604 OID 57275)
-- Name: idsolicitud; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud ALTER COLUMN idsolicitud SET DEFAULT nextval('solicitud_idsolicitud_seq'::regclass);


--
-- TOC entry 1883 (class 2604 OID 57334)
-- Name: idueh; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ueh ALTER COLUMN idueh SET DEFAULT nextval('ueh_idueh_seq'::regclass);


--
-- TOC entry 1871 (class 2604 OID 40768)
-- Name: idusuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN idusuario SET DEFAULT nextval('usuario_idusuario_seq'::regclass);


--
-- TOC entry 2032 (class 0 OID 57304)
-- Dependencies: 182
-- Data for Name: defuncion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO defuncion (iddefuncion, nacta, ntomo, fechaacta, nombre1, nombre2, apellido1, apellido2, codestado, codmunicipio, codparroquia, codof, idsolicitud, anosolicitud) VALUES (1, 800, 3, '2018-02-09', 'PABLO', 'PEPA', 'GODOY', 'GOIMEZ', 1, 1, 18, 7, 11, 2019);


--
-- TOC entry 2081 (class 0 OID 0)
-- Dependencies: 181
-- Name: defuncion_iddefuncion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('defuncion_iddefuncion_seq', 1, true);


--
-- TOC entry 2023 (class 0 OID 48956)
-- Dependencies: 173
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: onrc
--

INSERT INTO estado (codestado, nombrestado) VALUES (1, 'DISTRITO CAPITAL');
INSERT INTO estado (codestado, nombrestado) VALUES (6, 'BOLIVAR');
INSERT INTO estado (codestado, nombrestado) VALUES (5, 'BARINAS');
INSERT INTO estado (codestado, nombrestado) VALUES (4, 'ARAGUA');
INSERT INTO estado (codestado, nombrestado) VALUES (3, 'APURE');
INSERT INTO estado (codestado, nombrestado) VALUES (2, 'ANZOATEGUI');
INSERT INTO estado (codestado, nombrestado) VALUES (7, 'CARABOBO');
INSERT INTO estado (codestado, nombrestado) VALUES (8, 'COJEDES');
INSERT INTO estado (codestado, nombrestado) VALUES (9, 'FALCON');
INSERT INTO estado (codestado, nombrestado) VALUES (10, 'GUARICO');
INSERT INTO estado (codestado, nombrestado) VALUES (11, 'LARA');
INSERT INTO estado (codestado, nombrestado) VALUES (12, 'MERIDA');
INSERT INTO estado (codestado, nombrestado) VALUES (13, 'MIRANDA');
INSERT INTO estado (codestado, nombrestado) VALUES (14, 'MONAGAS');
INSERT INTO estado (codestado, nombrestado) VALUES (15, 'NVA.ESPARTA');
INSERT INTO estado (codestado, nombrestado) VALUES (16, 'PORTUGUESA');
INSERT INTO estado (codestado, nombrestado) VALUES (17, 'SUCRE');
INSERT INTO estado (codestado, nombrestado) VALUES (18, 'TACHIRA');
INSERT INTO estado (codestado, nombrestado) VALUES (19, 'TRUJILLO');
INSERT INTO estado (codestado, nombrestado) VALUES (20, 'YARACUY');
INSERT INTO estado (codestado, nombrestado) VALUES (21, 'ZULIA');
INSERT INTO estado (codestado, nombrestado) VALUES (22, 'AMAZONAS');
INSERT INTO estado (codestado, nombrestado) VALUES (23, 'DELTA AMACURO');
INSERT INTO estado (codestado, nombrestado) VALUES (24, 'LA GUAIRA');


--
-- TOC entry 2034 (class 0 OID 57318)
-- Dependencies: 184
-- Data for Name: matrimonio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO matrimonio (idmatrimonio, nacta, ntomo, fechaacta, nombre1esposo, nombre2esposo, apellido1esposo, apellido2esposo, nombre1esposa, nombre2esposa, apellido1esposa, apellido2esposa, codestado, codmunicipio, codparroquia, codof, idsolicitud, anosolicitud) VALUES (1, 300, 2, '1983-08-24', 'PABLO', 'VICENTE', 'HERNANDEZ', 'ALCALA', 'ANGELICA', 'DELVALLE', 'LICONTI', 'ARCIA', 1, 1, 9, 10, 12, 2019);


--
-- TOC entry 2082 (class 0 OID 0)
-- Dependencies: 183
-- Name: matrimonio_idmatrimonio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('matrimonio_idmatrimonio_seq', 3, true);


--
-- TOC entry 2024 (class 0 OID 48959)
-- Dependencies: 174
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: onrc
--

INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'LIBERTADOR', 1);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ANACO', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'ARAGUA', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'BOLIVAR', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'BRUZUAL', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'CAJIGAL', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'FREITES', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'INDEPENDENCIA', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'LIBERTAD', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'MIRANDA', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'MONAGAS', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'PE#ALVER', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'SIMON RODRIGUEZ', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'SOTILLO', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'GUANIPA', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (15, 'GUANTA', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (16, 'PIRITU', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (17, 'M.L/DIEGO BAUTISTA U', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (18, 'CARVAJAL', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (19, 'SANTA ANA', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (20, 'MC GREGOR', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (21, 'MP.S JUAN CAPISTRANO', 2);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ACHAGUAS', 3);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'PAEZ', 3);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'PEDRO CAMEJO', 3);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'ROMULO GALLEGOS', 3);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'SAN FERNANDO', 3);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'BIRUACA', 3);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'GIRARDOT', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'SANTIAGO MARI#O', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'JOSE FELIX RIVAS', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'SAN CASIMIRO', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'SAN SEBASTIAN', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'SUCRE', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'URDANETA', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'ZAMORA', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'LIBERTADOR', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'JOSE ANGEL LAMAS', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'BOLIVAR', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'SANTOS MICHELENA', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'MARIO B IRAGORRY', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'TOVAR', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (15, 'CAMATAGUA', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (16, 'JOSE R REVENGA', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (17, 'FRANCISCO LINARES A.', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (18, 'M.OCUMARE D LA COSTA', 4);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ARISMENDI', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'BARINAS', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'BOLIVAR', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'EZEQUIEL ZAMORA', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'OBISPOS', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'PEDRAZA', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'ROJAS', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'SOSA', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'ALBERTO ARVELO T', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'CRUZ PAREDES', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'ANDRES E. BLANCO', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'CARONI', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'HERES', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'PIAR', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'ROSCIO', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'SUCRE', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'SIFONTES', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'GRAN SABANA', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'EL CALLAO', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'MP.PADRE PEDRO CHIEN', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'BEJUMA', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'CARLOS ARVELO', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'DIEGO IBARRA', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'GUACARA', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'MONTALBAN', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'JUAN JOSE MORA', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'PUERTO CABELLO', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'SAN JOAQUIN', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'VALENCIA', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'MIRANDA', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'LOS GUAYOS', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'NAGUANAGUA', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'SAN DIEGO', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'LIBERTADOR', 7);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ANZOATEGUI', 8);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'FALCON', 8);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'GIRARDOT', 8);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'MP PAO SN J BAUTISTA', 8);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'RICAURTE', 8);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'TINACO', 8);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'LIMA BLANCO', 8);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'ROMULO GALLEGOS', 8);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ACOSTA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'BOLIVAR', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'BUCHIVACOA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'CARIRUBANA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'COLINA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'DEMOCRACIA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'FALCON', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'FEDERACION', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'MAUROA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'MIRANDA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'PETIT', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'SILVA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'ZAMORA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'DABAJURO', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (15, 'MONS. ITURRIZA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (16, 'LOS TAQUES', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (17, 'PIRITU', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (18, 'UNION', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (19, 'SAN FRANCISCO', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (20, 'JACURA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (21, 'CACIQUE MANAURE', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (22, 'PALMA SOLA', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (23, 'SUCRE', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (24, 'URUMACO', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (25, 'TOCOPERO', 9);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'INFANTE', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'MELLADO', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'MIRANDA', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'MONAGAS', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'RIBAS', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'ROSCIO', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'ZARAZA', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'CAMAGUAN', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'MP.S JOSE DE GUARIBE', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'LAS MERCEDES', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'EL SOCORRO', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'ORTIZ', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'S MARIA DE IPIRE', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'CHAGUARAMAS', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (15, 'MP.SAN GERONIMO DE G', 10);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'CRESPO', 11);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'IRIBARREN', 11);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'JIMENEZ', 11);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'ANGOSTURA', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'MORAN', 11);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'PALAVECINO', 11);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'EZEQUIEL ZAMORA', 8);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'TORRES', 11);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'URDANETA', 11);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'ANDRES E BLANCO', 11);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'SIMON PLANAS', 11);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ALBERTO ADRIANI', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'ANDRES BELLO', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'ARZOBISPO CHACON', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'CAMPO ELIAS', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'GUARAQUE', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'MP.JULIO CESAR SALAS', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'JUSTO BRICE#O', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'LIBERTADOR', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'SANTOS MARQUINA', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'MIRANDA', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'ANTONIO PINTO S.', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'MP.OB. RAMOS DE LORA', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'CARACCIOLO PARRA', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'MP.CARDENAL QUINTERO', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (15, 'PUEBLO LLANO', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (16, 'RANGEL', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (17, 'RIVAS DAVILA', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (18, 'SUCRE', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (19, 'TOVAR', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (20, 'TULIO F CORDERO', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (21, 'PADRE NOGUERA', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (22, 'ARICAGUA', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (23, 'ZEA', 12);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ACEVEDO', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'BRION', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'GUAICAIPURO', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'INDEPENDENCIA', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'LANDER', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'PAEZ', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'PAZ CASTILLO', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'PLAZA', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'SUCRE', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'URDANETA', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'ZAMORA', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'CRISTOBAL ROJAS', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'LOS SALIAS', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'ANDRES BELLO', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (15, 'SIMON BOLIVAR', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (16, 'BARUTA', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (17, 'CARRIZAL', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (18, 'CHACAO', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (19, 'EL HATILLO', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (20, 'BUROZ', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (21, 'PEDRO GUAL', 13);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ACOSTA', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'BOLIVAR', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'CARIPE', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'CEDE#O', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'EZEQUIEL ZAMORA', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'LIBERTADOR', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'MATURIN', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'PIAR', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'PUNCERES', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'SOTILLO', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'AGUASAY', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'SANTA BARBARA', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'URACOA', 14);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ARISMENDI', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'DIAZ', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'GOMEZ', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'MANEIRO', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'MARCANO', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'MARI#O', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'MP.PENIN. DE MACANAO', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'MP.VILLALBA(I.COCHE)', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'TUBORES', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'MP.ANTOLIN DEL CAMPO', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'GARCIA', 15);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ARAURE', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'ESTELLER', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'GUANARE', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'GUANARITO', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'OSPINO', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'PAEZ', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'SUCRE', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'TUREN', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'M.JOSE V DE UNDA', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'AGUA BLANCA', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'PAPELON', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'MP.GENARO BOCONOITO', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'MP.S RAFAEL DE ONOTO', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'SANTA ROSALIA', 16);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ARISMENDI', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'BENITEZ', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'BERMUDEZ', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'CAJIGAL', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'MARI#O', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'MEJIA', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'MONTES', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'RIBERO', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'SUCRE', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'VALDEZ', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'ANDRES E BLANCO', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'LIBERTADOR', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'ANDRES MATA', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'BOLIVAR', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (15, 'CRUZ S ACOSTA', 17);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'AYACUCHO', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'BOLIVAR', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'INDEPENDENCIA', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'CARDENAS', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'JAUREGUI', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'JUNIN', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'LOBATERA', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'SAN CRISTOBAL', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'URIBANTE', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'CORDOBA', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'GARCIA DE HEVIA', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'GUASIMOS', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'MICHELENA', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'LIBERTADOR', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (15, 'PANAMERICANO', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (17, 'SUCRE', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (18, 'ANDRES BELLO', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (19, 'FERNANDEZ FEO', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (20, 'LIBERTAD', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (21, 'SAMUEL MALDONADO', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (22, 'SEBORUCO', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (23, 'ANTONIO ROMULO C', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (24, 'FCO DE MIRANDA', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (25, 'JOSE MARIA VARGA', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (26, 'RAFAEL URDANETA', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (27, 'SIMON RODRIGUEZ', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (28, 'TORBES', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (29, 'SAN JUDAS TADEO', 18);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'RAFAEL RANGEL', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'BOCONO', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'CARACHE', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'ESCUQUE', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'TRUJILLO', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'URDANETA', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'VALERA', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'CANDELARIA', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'MIRANDA', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'MONTE CARMELO', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'MOTATAN', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'PAMPAN', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'MP.S RAFAEL CARVAJAL', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'SUCRE', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (15, 'ANDRES BELLO', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (16, 'BOLIVAR', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (17, 'JOSE F M CA#IZAL', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (18, 'JUAN V CAMPO ELI', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (19, 'LA CEIBA', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (20, 'PAMPANITO', 19);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'BOLIVAR', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'BRUZUAL', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'NIRGUA', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'SAN FELIPE', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'SUCRE', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'URACHICHE', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'PE#A', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'MP.JOSE ANTONIO PAEZ', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'LA TRINIDAD', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'COCOROTE', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'INDEPENDENCIA', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'ARISTIDES BASTID', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'MANUEL MONGE', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'VEROES', 20);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'BARALT', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'SANTA RITA', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'COLON', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'MARA', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'MARACAIBO', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'MIRANDA', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'PAEZ', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (8, 'MACHIQUES DE P', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (9, 'SUCRE', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'LA CA#ADA DE U.', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (11, 'LAGUNILLAS', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (12, 'CATATUMBO', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (13, 'M/ROSARIO DE PERIJA', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (14, 'CABIMAS', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (15, 'MP.VALMORE RODRIGUEZ', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (16, 'JESUS E LOSSADA', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (17, 'ALMIRANTE P', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (18, 'SAN FRANCISCO', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (19, 'JESUS M SEMPRUN', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (20, 'FRANCISCO J PULG', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (21, 'SIMON BOLIVAR', 21);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'ATURES', 22);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'ATABAPO', 22);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'MAROA', 22);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'RIO NEGRO', 22);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (5, 'AUTANA', 22);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (6, 'MANAPIARE', 22);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (7, 'ALTO ORINOCO', 22);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'TUCUPITA', 23);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'PEDERNALES', 23);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (3, 'ANTONIO DIAZ', 23);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (4, 'CASACOIMA', 23);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (1, 'VARGAS', 24);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (10, 'A JOSE DE SUCRE', 5);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'MUÑOZ', 3);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (2, 'CEDEÑO', 6);
INSERT INTO municipio (codmunicipio, nombremunicipio, codestadom) VALUES (16, 'MP.PEDRO MARIA UREÑA', 18);


--
-- TOC entry 2030 (class 0 OID 57291)
-- Dependencies: 180
-- Data for Name: nacimiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO nacimiento (idnacimiento, nacta, ntomo, fechaacta, nombre1, nombre2, apellido1, apellido2, codestado, codmunicipio, codparroquia, codof, idsolicitud, anosolicitud) VALUES (2, 100, 1, '2017-01-01', 'PABLO', 'VICENTE', 'HERNANDEZ', 'ALCALA', 17, 1, 1, 23, 10, 2019);
INSERT INTO nacimiento (idnacimiento, nacta, ntomo, fechaacta, nombre1, nombre2, apellido1, apellido2, codestado, codmunicipio, codparroquia, codof, idsolicitud, anosolicitud) VALUES (1, 1001, 4, '1983-08-24', 'PABLO', 'PEPA', 'GOMEZA', 'GODOY', 17, 1, 1, 23, 9, 2019);
INSERT INTO nacimiento (idnacimiento, nacta, ntomo, fechaacta, nombre1, nombre2, apellido1, apellido2, codestado, codmunicipio, codparroquia, codof, idsolicitud, anosolicitud) VALUES (3, 1250, 5, '2013-01-01', 'MIRIAN', 'JOSEFINA', 'ALCALA', 'RODRIGUEZ', 1, 1, 20, 33, 18, 2019);
INSERT INTO nacimiento (idnacimiento, nacta, ntomo, fechaacta, nombre1, nombre2, apellido1, apellido2, codestado, codmunicipio, codparroquia, codof, idsolicitud, anosolicitud) VALUES (4, 1251, 6, '2011-01-14', 'PABLO', 'VICENTE', 'HERNANDEZ', 'ALCALA', 15, 5, 1, 13, 19, 2019);


--
-- TOC entry 2083 (class 0 OID 0)
-- Dependencies: 179
-- Name: nacimiento_idnacimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('nacimiento_idnacimiento_seq', 4, true);


--
-- TOC entry 2025 (class 0 OID 48962)
-- Dependencies: 175
-- Data for Name: ourc; Type: TABLE DATA; Schema: public; Owner: onrc
--

INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 54, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 38, 'C', 'CLINICA POPULAR EL PARAISO                        ', 1, 22);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 70, 'C', 'CENTRO HOSPITAL TRUJILLO                          ', 5, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 23, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 26, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 14, 'B', 'OFICINA DE REGISTRO CIVIL PARROQUIA               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 48, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (23, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 71, 'C', 'HOSPITAL RAFAEL RANGEL                            ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 56, 'A', 'UNIDAD DE REGISTRO CIVIL MUNICIPIO                ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 67, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 16, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 29, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 39, 'C', 'HOSPITAL UYAPAR                                   ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 72, 'B', 'UNIDAD DE REGISTRO CIVIL SAN MIGUEL               ', 2, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 42, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 47, 'C', 'HOSPITAL  PASTOR OROPEZA                          ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 7, 'C', 'UNIDAD HOSPITAL DR. FRANCISCO ANTONIO RISQUEZ     ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 35, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 76, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 2, 'C', 'HOSPITAL VIRGEN DEL VALLE                         ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 68, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 6, 'C', 'UNIDAD HOSPITALARIA DR LUIS RAZZETI               ', 2, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 49, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 29, 'C', 'U.H. HOSPITAL TIPO II EL VIGIA                    ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 71, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 21, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 15, 'C', 'HOSPITAL  JOAQUINA DE ROTONDARO                   ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 19, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 33, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 9, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 55, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 55, 'D', 'CLINICA AVILA                                     ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 25, 'C', 'HOSPITAL TIPO I DE VALLE GUANAPE                  ', 18, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 73, 'C', 'HOSPITAL DR. JOSE GREGORIO BENGOA                 ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 85, 'C', 'HOSPITAL LINO AREVALO                             ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 14, 'C', 'HOSPITAL DR. JOSE ELIAS LANDINEZ                  ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 14, 'C', 'HOSPITAL  DR. AGUSTIN HERNANDEZ                   ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 42, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 8, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 18, 'C', 'HOSPITAL TIPO I                                   ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 46, 'C', 'HOSPITAL  DR RAFAEL ZAMORA AREVALO                ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 47, 'C', 'HOSPITAL  ISRAEL RANUAREZ BALZA.                  ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 69, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 48, 'C', 'UNIDAD R. C. HOSPITALARIA CARMEN NARCISA          ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 21, 'C', ' HOSPITAL DE LAS GARZAS                           ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 44, 'C', 'U.H DR RAFAEL ZAMORA AREVALO                      ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 50, 'C', 'SALA DE PARTO SANTIAGA ELIVERIA ALVARADO          ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 10, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 59, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 3, 'C', 'HOSPITAL DR. LUIS RAZZETI                         ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 12, 'C', 'HOSPITLAL DR ARMANDO MATA SANCHEZ                 ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 13, 'C', 'HOSPITAL UNIVERSITARIO DE CARACAS                 ', 1, 20);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 88, 'C', 'HOSPITAL SIMON BOLIVAR                            ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 24, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 3, 'D', 'MATERNIDAD LA FLORESTA                            ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 43, 'D', 'POLICLINICA METROPOLITANA                         ', 16, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 19, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 89, 'C', 'HOSPITAL EGMIDIO CASTOR RIOS                      ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 18, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 9, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 56, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 56, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (22, 2, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 22, 'C', 'HOSPITAL MATERNIDAD SANTA ANA                     ', 1, 21);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 15, 'C', 'HOSPITAL DR RAFAEL CALLES SIERRA                  ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 43, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (22, 9, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 67, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 90, 'C', 'HOSPITAL FRANCISCO BUSTAMANTE                     ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 29, 'C', 'HOSPITAL DRA LORENZA CASTILLO                     ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 45, 'C', 'HOSPITAL JESUS ARNOLDO CAMACHO.                   ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 18, 'C', 'CENTRO MATERNO INFANTIL ANA TERESA DE JESUS PONCE ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 9, 'C', 'HOSPITAL DR NICOLAS GIANNINI                      ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 53, 'C', 'HOSPITALARIA RAFAEL RANGEL                        ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 63, 'C', 'UNIDAD DE REGISTRO CIVIL PARROQUIA RIVAS-BERTI    ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 14, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (23, 3, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 7, 'C', 'HOSPITAL DR.JESUS MARIA CASAL RAMOS               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 47, 'D', 'CENTRO MEDICO DR JOSE MUÑOZ                       ', 5, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 75, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 77, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 22, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 57, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 28, 'C', 'HOSPITAL CENTRAL CARIPE DR JOSE URRESTARAZU       ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 23, 'C', 'HOSPITAL  CASTOR NIEVES RIOS                      ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 3, 'C', 'HOSPITAL  DR. LUIS ORTEGA                         ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 13, 'C', 'HOSPITAL GERVASIO VERA CUSTODIO                   ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 14, 'C', 'R C HOSPT. DE COLON DR. ERNESTO PAULINI           ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 32, 'C', 'UNIDAD DISTRITAL HOSPITALARIA BEJUMA              ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 13, 'C', 'CENTRO HOSPITALARIO JESUS LEON RIBAS              ', 21, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 51, 'C', 'HOSPITAL DR NUÑEZ TOVAR                           ', 7, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 65, 'C', 'HOSPITAL C.D.I. LA FRIA                           ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 19, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 70, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 10, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 12, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 56, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 35, 'C', 'URC INST. AUTN  HOSP. UNIV.DE LOS ANDES           ', 8, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (23, 2, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 24, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 80, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 9, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 28, 'C', 'CLINICA POPULAR DE CATIA                          ', 1, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 16, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 47, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 57, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 6, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 63, 'D', 'POLICLINICA AMADO                                 ', 5, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 45, 'D', 'CENTRO CLINICO MATERNO INFANTIL SAN JUAN          ', 5, 11);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 57, 'C', 'HOSPITAL EDUARDO SOTO PEÑA                        ', 5, 13);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 69, 'C', 'HOSPITAL MATERNO INFANTIL DR. RAUL LEONI          ', 5, 16);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 34, 'C', 'HOSPITAL ANTONIO MARIA PINEDA                     ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 36, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 5, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 25, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 13, 'C', 'HOSPITAL DR DARIO MARQUEZ                         ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 36, 'C', 'HOSPITAL LUIS GONZALEZ ESPINOZA                   ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 38, 'C', 'HOSPITAL TIPO I                                   ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 6, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 26, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 122, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 40, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 51, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 52, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 58, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 35, 'D', 'CLINICA HERRERA LYNCH                             ', 1, 21);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 36, 'C', 'CLINICA POPULAR EL VALLE                          ', 1, 14);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 72, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 14, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 4, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 5, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 17, 'C', 'HOSPITAL DE YAGUARAPARO                           ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 30, 'C', 'U. HOSPT.DE R. C. NAC. TAYA MARAJEEWAI            ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (23, 5, 'C', 'HOSPITAL DR LUIS RAZETTI                          ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 2, 'C', 'HOSPITAL CENTRAL DR.PLACIDO DANIEL RODRIGUEZ RI   ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 11, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 34, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 25, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 48, 'C', ' HOSPITAL DR ANTONIO RISQUEZ.                     ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 58, 'C', 'HOSPITAL DR.ANGULO RIVAS                          ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 23, 'C', 'HOSPITAL MILITAR DR CARLOS ARVELO                 ', 1, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 23, 'C', '  HOSPITAL T1- ELORZA                             ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 70, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 42, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 74, 'C', 'HOSPITAL DR. RAFAEL GALLARDO                      ', 10, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 48, 'C', 'HOSPITAL MILITAR CORONEL ELBANO PAREDES VIVAS.    ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 59, 'C', 'HOSPITAL DR.RAFAEL RANGEL                         ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (22, 4, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 29, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 8, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 21, 'C', 'HOSPITAL DR TULIO LOPEZ RAMIREZ                   ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 60, 'C', 'HOSPITAL DR. DOMINGO GUZMAN LANDER                ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 8, 'C', 'UNIDAD HOSPITALARIA MARGOT BETANCOURT.            ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 35, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 49, 'C', 'HOSPITAL NUESTRA SEÑORA DE LA CARIDAD             ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 19, 'C', 'HOSPITAL URACOA                                   ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 28, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 11, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 44, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 56, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 13, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 44, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 19, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 50, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 43, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (22, 3, 'C', 'HOSPITAL DR JOSE GREGORIO HERNANDEZ               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 61, 'C', 'HOSPITAL DR.FELIPE GUEVARA ROJAS                  ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 49, 'C', 'HOSPITAL DR. ARMANDO CASTILLO PLAZA               ', 5, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 4, 'C', 'HOSPITAL MATERNIDAD HERRERA VEGA                  ', 1, 12);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 18, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 22, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 20, 'C', 'HOSPITAL DR. JOSE MARIA VARGAS                    ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 53, 'C', 'HOSPITAL DR. ADOLFO PONS                          ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 46, 'D', 'CLINICA ZULIA                                     ', 5, 11);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 15, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 37, 'C', 'HOSPITAL TIPO I SINAMAICA                         ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 36, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 19, 'C', 'HOSPITAL DR ARNALDO GABALDON                      ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 66, 'C', 'HOSPITAL LUIS IGNACIO MONTERO                     ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 40, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 39, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 43, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 11, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 42, 'C', 'HOSPTITAL CENTRAL DR. URQUINAONA                  ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 77, 'D', 'POLICLINICA SAN FRANCISCO                         ', 18, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 12, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 74, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 15, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 5, 'C', 'HOSPITAL DR MIGUEL PEREZ CARREÑO                  ', 1, 12);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 50, 'C', 'HOSPITAL PALO NEGRO                               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 76, 'D', 'CENTRO CLINICO MADRE MARIA DE SAN JOSE            ', 18, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 22, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 34, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 34, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 112, 'C', 'U. R. C.HOSPITALARIA ADOLFO D''AMPAPRE             ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 13, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 9, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 80, 'C', 'HOSPITAL MATERNO INFANTIL DR RAFAEL BELLOSO CHACIN', 18, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 101, 'C', 'HOSPITAL JUAN DE DIOS MARTINEZ                    ', 9, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 31, 'C', 'HOSPITAL HERMOGENES SALVIDIA                      ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (22, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 58, 'D', 'CLINICA FERROMINERA DEL ORINOCO                   ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 19, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 53, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 21, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 33, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 42, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 22, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 9, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 19, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 41, 'C', 'HOSPITAL ANTONIO PATRICIO DE ALCALA               ', 9, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 20, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 15, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 80, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 1, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 85, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 54, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 42, 'C', 'AMBULATORIO ANSELMO LOAIZA MARQUEZ                ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 32, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 54, 'C', 'HOSPITAL MILITAR FRANCISCO VALBUENA               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 51, 'C', 'HOSPITAL NUESTRA SEÑORA DE CHIQUINQUIRA           ', 5, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 152, 'C', 'HOSPITAL GENERAL SANTA BARBARA                    ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 5, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 17, 'C', 'HOSPITAL DR MARTIN LUCENA                         ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 29, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 43, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 12);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 45, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 5, 'C', 'HOSPITAL CENTRAL DE MARACAY                       ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 21, 'C', 'HOSPITAL DR JOSE GREGORIO HERNANDEZ               ', 1, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 18, 'D', 'POLICLINICA LA ARBOLEDA                           ', 1, 21);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 35, 'C', ' MATERNIDAD AMBULAT LA CARUCIEÑA                  ', 2, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 40, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 27, 'C', 'HOSPITAL  JUANA GUEVARA                           ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 10, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 16, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 17, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 6, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 31, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 36, 'D', 'CLINICA MARIA EDELMIRA ARAUJO                     ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 62, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 86, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 49, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 34, 'C', 'HOSPITAL CAICARA                                  ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 73, 'C', 'HOSPITAL DR. JOSE MARIA ESPINOZA                  ', 10, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 47, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 22, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 16, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 64, 'D', 'CENTRO MEDICO PARAISO                             ', 5, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 19, 'C', 'HOSPITAL  DR. TIBURCIO GARRIDO                    ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 42, 'D', 'CTRO.CLINICO-MATERNO LEOPOLDO AGUERREVERE         ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 63, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 25, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 37, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 22, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 47, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 52, 'C', 'HOSPITAL DR MIGUEL OSIO                           ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 25, 'C', 'HOSPITAL EUGENIO P.D BELLARD                      ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 10, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 36, 'C', 'HOSP. MATERNO INFANTIL DE PETARE                  ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (22, 8, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 40, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 46, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 42, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 149, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 15, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 34, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 25, 'C', 'HOSPITAL  DR. PADRE OLIVERO                       ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 17, 'C', 'U. R. C. HOSPITALARIA FRATERNIDAD                 ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 27, 'C', 'HOSPITAL RAUL LEONI                               ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 138, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 84, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 17, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 8, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 17, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 86, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 54, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 153, 'C', 'HOSPITAL I DR. SENEN CASTILLO REVEROL             ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 17, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 38, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 55, 'C', 'HOSPITAL ELVIRA BUENO MESA                        ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 3, 'C', 'HOSPITAL MI NIÑO VENEZOLANO II                    ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 28, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 49, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 29, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 38, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 15, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 28, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 53, 'B', 'OFICINA DE REGISTRO CIVIL PARROQUIA               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 114, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 7, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 20, 'C', 'HOSPITAL ERNESTO REGENER                          ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 9, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 31, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 23, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 17, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 49, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 6, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 15, 'C', 'HOSPITAL DR JOSE RANGEL                           ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 7, 'C', 'HOSPITAL DR. JOSE MARIA VARGAS                    ', 16, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 60, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 12, 'C', '. HOSPITAL DR JOSE FRANCISCO TORREALBA.           ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 25, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 20, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 17, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 141, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 21, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 23, 'C', 'HOSPITAL PEDRO RAFAEL FIGALLA                     ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 24, 'C', 'U. R. C. HOSPITA PUERTO MIRANDA                   ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 50, 'D', 'CENTRO MEDICO SAN LUCAS                           ', 5, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 61, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 49, 'C', 'HOSPITAL DR PABLO VILLARROEL                      ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 30, 'C', 'HOSPITAL DE PEDRO ZARAZA.                         ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 29, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 25, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 4, 'D', 'CENTRO CLINICO PRIVADO NAZARETH                   ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 33, 'C', 'HOSPITAL PASTOR OROPEZA                           ', 2, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 3, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 26, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 23, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 13, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 43, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 42, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 42, 'C', 'REGISTRO CIVIL ACARIGUA   SEGURO SOCIAL           ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 154, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 20, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 42, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 46, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 17, 'C', 'AMBULATORIO  JOSE FRANCISCO DIAZ RODRIGUEZ        ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 65, 'C', 'HOSPITAL BAUDILIO LARA TIPO I                     ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 58, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 50, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 35, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 20, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 43, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 61, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 14);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 25, 'C', 'HOSPITAL  JOSE ANTONIO PAEZ                       ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 40, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 47, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 118, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 70, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 15, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 113, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 56, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 155, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 51, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 40, 'C', 'UNIDAD DOÑA INES ROJAS SALAS.                     ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 31, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 40, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 35, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 10, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 12, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 42, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 22, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 5, 'C', 'HOSPITAL  CRUZ ROJA                               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 31, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 22, 'C', 'HOSPITAL BR. RAFAEL RANGEL                        ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 2, 'C', 'CLINICA POPULAR NUEVA ESPARTA                     ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 12, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 95, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 19, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 97, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 15, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 157, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 29, 'C', 'HOSPITAL DR LUIS SALAZAR DOMINGUEZ                ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 38, 'D', 'CENTRO DE SALUD INSTITUTO MEDICO VALERA           ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 56, 'D', 'HOSPITAL CENTRO QUIRURJICO CAICARA                ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 77, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 21, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 10, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 5, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 4, 'D', 'CENTRO MEDICO MARACAY                             ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 26, 'C', 'HOSPITAL FRANCISCO URDANETA DELGADO.              ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 158, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 19, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 51, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 36, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 15, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 23, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 57, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 3, 'C', 'U.R.C. HOSPITAL PATROCINIO PEÑA  RUIZ             ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 54, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 31, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 33, 'C', ' HOSPITAL BINACIONAL  JOSE LEONARDO FERNANDEZ     ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 159, 'C', 'HOSPITAL I CONCEPCIÓN                             ', 10, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 45, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 19, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 34, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 57, 'D', 'HOSPITAL EL PALMAR                                ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 78, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 19, 'C', 'UNIDAD HOSPITALARIA  DE TUCANI                    ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 43, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 22, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 17, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 45, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 134, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 77, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 29, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 81, 'C', 'HOSPITAL DR MANUEL NORIEGA TRIGO                  ', 18, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 6, 'C', 'CLINICA BOLIVARIANA  EL ESPINAL                   ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 25, 'C', 'HOSPITAL MATERNIDAD                               ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 126, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 34, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 40, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 31, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 63, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 17, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 50, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 28, 'C', 'HOSPITAL PABLO ACOSTA ORTIZ                       ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 34, 'C', 'UNIDAD HOSPITALARIA  MATERNIDAD INTEGRAL DE ARAGUA', 13, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 28, 'C', 'HOSPITAL DR. EGIDIO MONTESINOS                    ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 74, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 28, 'C', 'HOSPITAL NEGRA HIPOLITA                           ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 45, 'C', 'HOSPITAL DR. JOSE GREGORIO HERNANDEZ              ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 18, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 5, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 50, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 21, 'D', 'UNIDAD HOSPITALARIA  CENTRO MEDICO CAGUA.         ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (22, 7, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 83, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 71, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 35, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 65, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 87, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 59, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 120, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 40, 'C', 'CENTRO DE SALUD HOSPITAL DR. JOSE VASALLOS CORTEZ ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 156, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 146, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 15, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 64, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 35, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 5, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 21, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 28, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 17, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 72, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 17, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 51, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 35, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 76, 'C', 'HOSPITAL DR. CARLOS DIEZ DEL CIERVO DE JUDIBANA   ', 16, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 27, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 27, 'C', 'CENTRO DE SALUD DR. PEDRO EMILIO CARRILLO         ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 41, 'C', 'U. R. C. HOSPITALARIO SAN SEBASTIAN               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 25, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 11);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 50, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 79, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 41, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 22, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 29, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 21, 'C', 'CENTRO DE SALUD DR. RAFAEL QUEVEDO VILORIA        ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 19);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 56, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 17);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 10, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 2, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 43, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 27, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 4, 'D', 'URC HOSPITAL ALFREDO J GONZALEZ                   ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 44, 'D', 'HOSPITAL LOS ILUSTRES                             ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 57, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 1, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 5, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 10, 'C', 'URC HOSPITAL EL PIÑAL                             ', 19, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 11, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 43, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 55, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 10, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 57, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 16);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 25, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 44, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 18, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 21, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 65, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 12);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 25, 'C', 'HOSPITAL MATERNO INFANTIL RAFAEL OROPEZA          ', 1, 17);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 37, 'C', 'HOSPITAL DOMINGO LUCIANI                          ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 12, 'C', 'U R C H  DR. JOSÉ GREGORIO GONZALEZ               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 42, 'C', 'HOSPITAL DR. JOSE GREGORIO HERNANDEZ              ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 50, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 29, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 37, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 11, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 21, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 28, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 24, 'C', 'HOSPITAL MATERNIDAD CONCEPCION PALACIOS           ', 1, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 55, 'C', 'U H DE R C HOSPITAL PADRE JUSTO DE RUBIO          ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 8, 'C', 'MODULO ASISTENCIAL DE MARIPA                      ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 96, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 46, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 4, 'A', 'UNIDAD DE REGISTRO CIVIL MUNICIPIO                ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 144, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 21, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 8, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 36, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 17, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 30, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 26, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 49, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 21, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 64, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 17, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 65, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 61, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 23, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 10, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 111, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 45, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 21, 'C', ' MATERNO INFANT CANDELARIA GARCIA.MUN.BERMUDEZ    ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 124, 'C', 'HOSPITAL PEDRO GARCIA CLARA                       ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 23, 'C', 'HOSPITAL CENTRAL DE HIGUEROTE                     ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 50, 'C', 'HOSPITAL ROSARIO VERA ZURITA                      ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 2, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 82, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 75, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 44, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 25, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 41, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 21, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 51, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 21, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 2, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 35, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 46, 'C', 'HOSPITAL DE LOS VALLES DEL TUY                    ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 58, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 52, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 23, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 21);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 53, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 160, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 25, 'C', 'HOSPITAL DR. ARMANDO DELGADO MONTERO              ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 8, 'C', 'U. R. C. H. DR PATRICIO DE ALCALÁ                 ', 9, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 44, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 29, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 41, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 22, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 21, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 17, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 27, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 52, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 17);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 31, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 5, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 62, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 29, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 34, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 44, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 94, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 19, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 34, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 12);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 52, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 37, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 19, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 47, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 83, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 15, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 31, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 31, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 15);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 40, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 66, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 81, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 31, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 91, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 55, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 45, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 148, 'C', 'U. R. C. HOSP. SENEN CASTILLO REVEROL             ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 7, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 50, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 37, 'D', 'CLINICA LAS CIENCIAS                              ', 1, 20);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 37, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 10, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 47, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 44, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 11);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 46, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 27, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 24, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 26, 'C', 'UNIDAD DE REGISTRO CIVIL H JOSE A VARGAS          ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 31, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 23, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 19, 'C', 'HOSPITAL FRANCISCO LAZO MARTI.                    ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 35, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 109, 'C', 'HOSPITAL DR.LUIS RAZETTI                          ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 28, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 41, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 15, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 5, 'C', 'HOSPITAL CAMINO FELIZ                             ', 2, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 58, 'C', 'HOSPITAL VICTORINO SANTAELLA                      ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 9, 'C', ' HOSPITAL DR. MIGUEL ORAA                         ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 7, 'C', 'HOSPITAL DR SAMUEL DARIO MALDONADO.               ', 2, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 10, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 19, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 3, 'D', 'CLINICA MADRE MARIA                               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 59, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 161, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 2, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 4, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 20, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 35, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 36, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 9, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 17, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 14, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 2, 'C', 'HOSPITAL MI NIÑO VENEZOLANO I                     ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 57, 'C', 'U R C HOSP DR. JOSE GREGORIO HERNANDEZ            ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 17, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 20, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 14, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 34, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 10, 'C', 'U. R. C. HOSPITALARIA DR CARLOS SANDA             ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 14, 'C', 'HOSPITAL DR JUAN MONTEZUMA GINNARI                ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 29, 'C', 'HOSPITAL UYAPAR                                   ', 1, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 2, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 37, 'C', 'HOSPITAL SIMON BOLIVAR                            ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 36, 'C', 'U. R. C. HOSPITALARIA JULIA BENITEZ               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 3, 'C', 'HOSPITAL RURAL I NUESTRA SEÑORA DEL ROSARIO       ', 13, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 10, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 30, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 61, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 40, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 45, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 19, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 31, 'C', 'U.H. R.C.N. DR FCO J. GUTIÉRREZ                   ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 34, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 4, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 3, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 81, 'C', 'R.C. DE NAC. AAAMBULATORIO RURAL II               ', 23, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 47, 'C', 'U.HOSPITALARIA R.C. GENERAL DE MORON              ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 41, 'C', 'HOSPITAL NUESTRA SEÑORA DEL CARMEN                ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 2, 'C', 'U.R.C. HOSPITAL DR JOSE MARIA VARGAS              ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 60, 'C', 'U R C HOSPITAL  GENERAL DE TARIBA                 ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 58, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 62, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 33, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 18, 'C', 'HOSPITAL DR JUAN APONTE                           ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 45, 'C', 'DR. ADOLFO PRINCE LARA                            ', 7, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 63, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 5, 'C', 'HOSPITAL DR.OSWALDO BARRIOS                       ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 23, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 50, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 19, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 36, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 25, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 8, 'C', 'U. H TIPO I TULIO FEBRES CORDERO                  ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 11, 'C', 'UNIDAD HOSP II SAN JOSÉ DE TOVAR                  ', 19, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 162, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 15, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 24, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 59, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 36, 'C', 'UNIDAD HOSPITALARIA DE EJIDO                      ', 4, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 69, 'D', 'HOSPITAL DR. JOSE GREGORIO HERNANDEZ              ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 37, 'D', 'CENTRO DE SALUD POLICLINICA RAFAEL RANGEL         ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 35, 'C', 'UNIDAD HOSPITALARIA DR RAFAEL RANGEL              ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 19, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 19, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 20, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 2, 'C', 'REGISTRO CIVIL DE LA PLACERA                      ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 12, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 52, 'C', 'UNIDAD HOSPITALARIA DE LAGUNILLAS                 ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 24, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 45, 'D', 'HOSPITAL MEDICO QUIRURGICA GENERAL ANDINA         ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 1, 'C', 'UNIDAD HOSPITALARIA DR EGOR NUCETE                ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 2, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 31, 'C', 'HOSPITAL DR. ARNALDO GABALDON                     ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 41, 'C', 'HOSPITAL JUAN GERMAN ROSCIO                       ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 23, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 23, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 32, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 20, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 32, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 23, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 20, 'C', 'UNIDAD HOSP DR SAMUEL DARIO MALDONADO             ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 51, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 10, 'C', 'CENTRO DE SALUD MARIA ARACELIS ALVAREZ            ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 6, 'C', 'HOSPITAL DR. JOSE MARIA VARGAS                    ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 49, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 14, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 29, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 37, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 17, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 41, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 7, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 25, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 22, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 22, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 52, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 2, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (22, 6, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 37, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 22, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 31, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 15, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 54, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 43, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 19, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (22, 5, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 28, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 6, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 16, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 3, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 37, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 35, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 19, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 33, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 28, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 29, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 79, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 18, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 18, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 5, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 45, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 26, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 15, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 24, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 20, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (23, 4, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 59, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 31, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 67, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 43, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 15, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 56, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 13);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 73, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 15);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 36, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 23, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 32, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 42, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 129, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 16, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 105, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 39, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 39, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 68, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 16);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 40, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 28, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 8, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 22, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 9, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 49, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 9, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 19, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 79, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 43, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 37, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 44, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 53, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 10, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 6, 'B', 'OFICINA DE REGISTRO CIVIL PARROQUIA               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 15, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 19, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 15, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 26, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 27, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 46, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 4, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 5, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 13, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 30, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 12, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 60, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 84, 'B', 'OFICINA DE REGISTRO CIVIL PARROQUIA               ', 16, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 10, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 34, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (8, 13, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 19, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (20, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 2, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 20, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 10, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 22, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 25, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 59, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 64, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 25, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 39, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 23, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 45, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 26, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 32, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 5, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 18, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 2, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 59, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 17, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 1, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 40, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 53, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 18, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 24, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 26, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 151, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 36, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 75, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 72, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 25, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 71, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 50, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 60, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 15);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 119, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 85, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 88, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 98, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 23, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 28, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 28, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 84, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 89, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 93, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 99, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 19, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 53, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 46, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 45, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 14);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 49, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 132, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 49, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 65, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 133, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 82, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 143, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 21, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 71, 'A', 'UNIDAD DE REGISTRO CIVIL MUNICIPIO                ', 19, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 46, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 2, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 10, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 22, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 41, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 103, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 145, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 15, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 49, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 23, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 70, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 100, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 62, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 44, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 45, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 121, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 11);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 17);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 22, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 2, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 15, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 31, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 31, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 29, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 22);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 5, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 62, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 24, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 54, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 90, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 127, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 54, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 41, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 52, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 19, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 47, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 1, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 5, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 34, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 11);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 15, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 15, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 54, 'A', 'UNIDAD DE REGISTRO CIVIL MUNICIPIO                ', 4, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 15, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 5, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 41, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 34, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 150, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 25, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 115, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 44, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 3, 'C', 'HOSPITAL MATERNO INFANTIL DR. JOSE MARIA VARGAS   ', 9, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 10, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 68, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 35, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 62, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 47, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 60, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 47, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 30, 'C', 'HOSPITAL DR. ENRIQUE TEJERA                       ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 2, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 78, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 57, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 28, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 53, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 15, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 60, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 13);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 46, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 69, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 40, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 23, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 47, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 46, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 23, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 49, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 11);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 22, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 51, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 76, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 62, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 36, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 10);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 17, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 22, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 2, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 16);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 56, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 59, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 13);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 2, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 1, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 50, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 14, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 41, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 39, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 22, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 32, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 69, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 57, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 44, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 58, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 15, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 55, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 49, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 63, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 58, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 60, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 15, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 19, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 128, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 55, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 139, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 55, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 73, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 20);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 59, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 14);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 41, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 136, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 104, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 142, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 21, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 102, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 147, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 15, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 68, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 8);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 36, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 68, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 43, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 52, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 21, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 37, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 30, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 15, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 116, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 92, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 123, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 52, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 40, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 53, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 37, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 43, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 60, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 12);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 55, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 108, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 34, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 46, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 42, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 130, 'C', 'HOSPITAL  DR. HUGO PARRA LEON                     ', 6, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 10, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 29, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 51, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 62, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 38, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 22, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 37, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 135, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 107, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 23, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 37, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 64, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 7);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 83, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 23, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 24, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 5, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (13, 41, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 28, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 61, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 22, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 61, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 11);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 65, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 41, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 61, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (17, 5, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 15, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (14, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 78, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 19, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIA', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 27, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 44, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 66, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 4, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 44, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 13, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 54, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (15, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 75, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 74, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 63, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 28, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 46, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 16, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (7, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 67, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 82, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 3, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 12, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 2, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 25, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 106, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 125, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 11, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 21, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 64, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (2, 55, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 20, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 19, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (18, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 56, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 42, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 58, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 15);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 17, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 17, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 61, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 12);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 5, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 29, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (5, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 8, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 9, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 6, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 110, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 18, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 3, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 7, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 18);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 51, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (24, 1, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (3, 19, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 66, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 131, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 5);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 46, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 48, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (16, 36, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 35, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 7, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (10, 16, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 47, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 18, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 117, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 14, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (9, 67, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 13, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (6, 12, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 72, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 8, 14);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (4, 11, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 66, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 5, 18);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 137, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (21, 140, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 2, 1);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 53, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 10, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (19, 20, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 9, 3);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (12, 33, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 4, 6);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (11, 52, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL               ', 6, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 10, 'A', 'OFICINA DE REGISTRO CIVIL MUNICIPAL', 1, 9);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 39, 'E', 'MEDICATURA FORENSE                                ', 1, 20);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 16, 'C', 'HOSPITAL DOCTOR JESUS YERENA                      ', 1, 4);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 1, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL CANDELARIA', 1, 2);
INSERT INTO ourc (codestado, codof, tipoficina, nombreuh, codmunicipio, codparroquia) VALUES (1, 26, 'B', 'UNIDAD DE REGISTRO CIVIL PARROQUIAL EL RECREO', 1, 13);


--
-- TOC entry 2026 (class 0 OID 48967)
-- Dependencies: 176
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: onrc
--

INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ALTAGRACIA', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CANDELARIA', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CATEDRAL', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'LA PASTORA', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SAN AGUSTIN', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'SAN JOSE', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'SAN JUAN', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'SANTA ROSALIA', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'SANTA TERESA', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (10, 'SUCRE', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (11, '23 DE ENERO', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (12, 'ANTIMANO', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (13, 'EL RECREO', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (14, 'EL VALLE', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (15, 'LA VEGA', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (16, 'MACARAO', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (17, 'CARICUAO', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (18, 'EL JUNQUITO', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (19, 'COCHE', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (20, 'SAN PEDRO', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (21, 'SAN BERNARDINO', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (22, 'EL PARAISO', 1, 1);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ANACO', 1, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN JOAQUIN', 1, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. ARAGUA DE BARCELONA', 2, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CACHIPO', 2, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL CARMEN', 3, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN CRISTOBAL', 3, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'BERGANTIN', 3, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CAIGUA', 3, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'EL PILAR', 3, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'NARICUAL', 3, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CLARINES', 4, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'GUANAPE', 4, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SABANA DE UCHIRE', 4, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. ONOTO', 5, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN PABLO', 5, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CANTAURA', 6, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LIBERTADOR', 6, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SANTA ROSA', 6, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'URICA', 6, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SOLEDAD', 7, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'MAMO', 7, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN MATEO', 8, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL CARITO', 8, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SANTA INES', 8, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PARIAGUAN', 9, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ATAPIRIRE', 9, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'BOCA DEL PAO', 9, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'EL PAO', 9, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. MAPIRE', 10, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PIAR', 10, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SN DIEGO DE CABRUTICA', 10, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SANTA CLARA', 10, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'UVERITO', 10, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'ZUATA', 10, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PUERTO PIRITU', 11, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN MIGUEL', 11, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SUCRE', 11, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. EL TIGRE', 12, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'POZUELOS', 13, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CM. PUERTO LA CRUZ', 13, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN JOSE DE GUANIPA', 14, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GUANTA', 15, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CHORRERON', 15, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PIRITU', 16, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN FRANCISCO', 16, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'LECHERIAS', 17, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL MORRO', 17, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'VALLE GUANAPE', 18, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SANTA BARBARA', 18, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SANTA ANA', 19, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PUEBLO NUEVO', 19, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL CHAPARRO', 20, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'TOMAS ALFARO CALATRAVA', 20, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BOCA UCHIRE', 21, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BOCA DE CHAVEZ', 21, 2);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ACHAGUAS', 1, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'APURITO', 1, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL YAGUAL', 1, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'GUACHARA', 1, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'MUCURITAS', 1, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'QUESERAS DEL MEDIO', 1, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BRUZUAL', 2, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'MANTECAL', 2, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'QUINTERO', 2, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN VICENTE', 2, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'RINCON HONDO', 2, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GUASDUALITO', 3, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ARAMENDI', 3, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL AMPARO', 3, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN CAMILO', 3, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'URDANETA', 3, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN JUAN DE PAYARA', 4, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CODAZZI', 4, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CUNAVICHE', 4, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ELORZA', 5, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA TRINIDAD', 5, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN FERNANDO', 6, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PE#ALVER', 6, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL RECREO', 6, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SN RAFAEL DE ATAMAICA', 6, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BIRUACA', 7, 3);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'LAS DELICIAS', 1, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CHORONI', 1, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MADRE MA DE SAN JOSE', 1, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'JOAQUIN CRESPO', 1, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'PEDRO JOSE OVALLES', 1, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'JOSE CASANOVA GODOY', 1, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'ANDRES ELOY BLANCO', 1, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'LOS TACARIGUAS', 1, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. TURMERO', 2, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAMAN DE GUERE', 2, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'ALFREDO PACHECO M', 2, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CHUAO', 2, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'AREVALO APONTE', 2, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LA VICTORIA', 3, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ZUATA', 3, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PAO DE ZARATE', 3, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CASTOR NIEVES RIOS', 3, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LAS GUACAMAYAS', 3, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN CASIMIRO', 4, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'VALLE MORIN', 4, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'GUIRIPA', 4, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'OLLAS DE CARAMACATE', 4, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN SEBASTIAN', 5, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CAGUA', 6, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BELLA VISTA', 6, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. BARBACOAS', 7, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN FRANCISCO DE CARA', 7, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'TAGUAY', 7, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'LAS PE#ITAS', 7, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. VILLA DE CURA', 8, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'MAGDALENO', 8, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN FRANCISCO DE ASIS', 8, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'VALLES DE TUCUTUNEMO', 8, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'AUGUSTO MIJARES', 8, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PALO NEGRO', 9, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN MARTIN DE PORRES', 9, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SANTA CRUZ', 10, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN MATEO', 11, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LAS TEJERIAS', 12, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'TIARA', 12, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. EL LIMON', 13, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CA A DE AZUCAR', 13, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. COLONIA TOVAR', 14, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CAMATAGUA', 15, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CARMEN DE CURA', 15, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. EL CONSEJO', 16, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SANTA RITA', 17, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'FRANCISCO DE MIRANDA', 17, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MONS FELICIANO G', 17, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'OCUMARE DE LA COSTA', 18, 4);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ARISMENDI', 1, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'GUADARRAMA', 1, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA UNION', 1, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN ANTONIO', 1, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ALFREDO A LARRIVA', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BARINAS', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN SILVESTRE', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SANTA INES', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SANTA LUCIA', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'TORUNOS', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'EL CARMEN', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'ROMULO BETANCOURT', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'CORAZON DE JESUS', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (10, 'RAMON I MENDEZ', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (11, 'ALTO BARINAS', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (12, 'MANUEL P FAJARDO', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (13, 'JUAN A RODRIGUEZ D', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (14, 'DOMINGA ORTIZ P', 2, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ALTAMIRA', 3, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BARINITAS', 3, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CALDERAS', 3, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SANTA BARBARA', 4, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PQ.JOSE IGNACIO DEL PUMAR', 4, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'RAMON IGNACIO MENDEZ', 4, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'PEDRO BRICE#O MENDEZ', 4, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL REAL', 5, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA LUZ', 5, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'OBISPOS', 5, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'LOS GUASIMITOS', 5, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CIUDAD BOLIVIA', 6, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'IGNACIO BRICE#O', 6, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PAEZ', 6, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'JOSE FELIX RIBAS', 6, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'DOLORES', 7, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LIBERTAD', 7, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PALACIO FAJARDO', 7, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SANTA ROSA', 7, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CIUDAD DE NUTRIAS', 8, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL REGALO', 8, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PUERTO DE NUTRIAS', 8, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SANTA CATALINA', 8, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'RODRIGUEZ DOMINGUEZ', 9, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SABANETA', 9, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'TICOPORO', 10, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'NICOLAS PULIDO', 10, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'ANDRES BELLO', 10, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BARRANCAS', 11, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL SOCORRO', 11, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MASPARRITO', 11, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL CANTON', 12, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SANTA CRUZ DE GUACAS', 12, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PUERTO VIVAS', 12, 5);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SIMON BOLIVAR', 1, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ONCE DE ABRIL', 1, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'VISTA AL SOL', 1, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CHIRICA', 1, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'DALLA COSTA', 1, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'CACHAMAY', 1, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'UNIVERSIDAD', 1, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'UNARE', 1, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'YOCOIMA', 1, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (10, 'POZO VERDE', 1, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CAICARA DEL ORINOCO', 2, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ASCENSION FARRERAS', 2, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'ALTAGRACIA', 2, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'LA URBANA', 2, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'GUANIAMO', 2, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'PIJIGUAOS', 2, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CATEDRAL', 3, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'AGUA SALADA', 3, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA SABANITA', 3, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'VISTA HERMOSA', 3, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'MARHUANTA', 3, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'JOSE ANTONIO PAEZ', 3, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'ORINOCO', 3, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'PANAPANA', 3, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'ZEA', 3, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. UPATA', 4, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ANDRES ELOY BLANCO', 4, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PEDRO COVA', 4, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. GUASIPATI', 5, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SALOM', 5, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. MARIPA', 6, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ARIPAO', 6, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LAS MAJADAS', 6, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MOITACO', 6, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'GUARATARO', 6, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. TUMEREMO', 7, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'DALLA COSTA', 7, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN ISIDRO', 7, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CIUDAD PIAR', 8, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN FRANCISCO', 8, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'BARCELONETA', 8, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SANTA BARBARA', 8, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SANTA ELENA DE UAIREN', 9, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'IKABARU', 9, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. EL CALLAO', 10, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. EL PALMAR', 11, 6);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BEJUMA', 1, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CANOABO', 1, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SIMON BOLIVAR', 1, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GUIGUE', 2, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BELEN', 2, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'TACARIGUA', 2, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MARIARA', 3, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'AGUAS CALIENTES', 3, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GUACARA', 4, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CIUDAD ALIANZA', 4, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'YAGUA', 4, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MONTALBAN', 5, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MORON', 6, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'URAMA', 6, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'DEMOCRACIA', 7, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'FRATERNIDAD', 7, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'GOAIGOAZA', 7, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'JUAN JOSE FLORES', 7, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'BARTOLOME SALOM', 7, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'UNION', 7, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'BORBURATA', 7, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'PATANEMO', 7, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN JOAQUIN', 8, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CANDELARIA', 9, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CATEDRAL', 9, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL SOCORRO', 9, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MIGUEL PE#A', 9, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SAN BLAS', 9, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'SAN JOSE', 9, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'SANTA ROSA', 9, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'RAFAEL URDANETA', 9, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'NEGRO PRIMERO', 9, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MIRANDA', 10, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'U LOS GUAYOS', 11, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'NAGUANAGUA', 12, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'URB SAN DIEGO', 13, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'U TOCUYITO', 14, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'U INDEPENDENCIA', 14, 7);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'COJEDES', 1, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JUAN DE MATA SUAREZ', 1, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'TINAQUILLO', 2, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL BAUL', 3, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SUCRE', 3, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL PAO', 4, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'LIBERTAD DE COJEDES', 5, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL AMPARO', 5, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN CARLOS DE AUSTRIA', 6, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JUAN ANGEL BRAVO', 6, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MANUEL MANRIQUE', 6, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GRL/JEFE JOSE L SILVA', 7, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MACAPO', 8, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA AGUADITA', 8, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ROMULO GALLEGOS', 9, 8);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN JUAN DE LOS CAYOS', 1, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CAPADARE', 1, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA PASTORA', 1, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'LIBERTADOR', 1, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN LUIS', 2, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ARACUA', 2, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA PE#A', 2, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CAPATARIDA', 3, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BOROJO', 3, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SEQUE', 3, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'ZAZARIDA', 3, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'BARIRO', 3, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'GUAJIRO', 3, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'NORTE', 4, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CARIRUBANA', 4, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PUNTA CARDON', 4, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SANTA ANA', 4, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'LA VELA DE CORO', 5, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ACURIGUA', 5, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'GUAIBACOA', 5, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MACORUCA', 5, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LAS CALDERAS', 5, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PEDREGAL', 6, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'AGUA CLARA', 6, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'AVARIA', 6, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'PIEDRA GRANDE', 6, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'PURURECHE', 6, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PUEBLO NUEVO', 7, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ADICORA', 7, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'BARAIVED', 7, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'BUENA VISTA', 7, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'JADACAQUIVA', 7, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'MORUY', 7, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'EL VINCULO', 7, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'EL HATO', 7, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'ADAURE', 7, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CHURUGUARA', 8, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'AGUA LARGA', 8, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'INDEPENDENCIA', 8, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MAPARARI', 8, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'EL PAUJI', 8, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MENE DE MAUROA', 9, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CASIGUA', 9, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN FELIX', 9, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN ANTONIO', 10, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN GABRIEL', 10, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SANTA ANA', 10, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'GUZMAN GUILLERMO', 10, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'MITARE', 10, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'SABANETA', 10, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'RIO SECO', 10, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CABURE', 11, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CURIMAGUA', 11, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'COLINA', 11, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'TUCACAS', 12, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BOCA DE AROA', 12, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PUERTO CUMAREBO', 13, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA CIENAGA', 13, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA SOLEDAD', 13, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'PUEBLO CUMAREBO', 13, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'ZAZARIDA', 13, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. DABAJURO', 14, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CHICHIRIVICHE', 15, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BOCA DE TOCUYO', 15, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'TOCUYO DE LA COSTA', 15, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'LOS TAQUES', 16, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JUDIBANA', 16, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PIRITU', 17, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN JOSE DE LA COSTA', 17, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'STA.CRUZ DE BUCARAL', 18, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL CHARAL', 18, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LAS VEGAS DEL TUY', 18, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. MIRIMIRE', 19, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'JACURA', 20, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'AGUA LINDA', 20, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'ARAURIMA', 20, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. YARACAL', 21, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PALMA SOLA', 22, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SUCRE', 23, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PECAYA', 23, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'URUMACO', 24, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BRUZUAL', 24, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. TOCOPERO', 25, 9);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'VALLE DE LA PASCUA', 1, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ESPINO', 1, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL SOMBRERO', 2, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SOSA', 2, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CALABOZO', 3, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL CALVARIO', 3, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL RASTRO', 3, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'GUARDATINAJAS', 3, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ALTAGRACIA DE ORITUCO', 4, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LEZAMA', 4, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LIBERTAD DE ORITUCO', 4, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN FCO DE MACAIRA', 4, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SAN RAFAEL DE ORITUCO', 4, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'SOUBLETTE', 4, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'PASO REAL DE MACAIRA', 4, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'TUCUPIDO', 5, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN RAFAEL DE LAYA', 5, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PQ.SAN JUAN DE LOS MORROS', 6, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PARAPARA', 6, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CANTAGALLO', 6, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ZARAZA', 7, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN JOSE DE UNARE', 7, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CAMAGUAN', 8, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PUERTO MIRANDA', 8, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'UVERITO', 8, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN JOSE DE GUARIBE', 9, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'LAS MERCEDES', 10, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'STA RITA DE MANAPIRE', 10, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CABRUTA', 10, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL SOCORRO', 11, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ORTIZ', 12, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN FCO. DE TIZNADOS', 12, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN JOSE DE TIZNADOS', 12, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'S LORENZO DE TIZNADOS', 12, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SANTA MARIA DE IPIRE', 13, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ALTAMIRA', 13, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CHAGUARAMAS', 14, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GUAYABAL', 15, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CAZORLA', 15, 10);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'FREITEZ', 1, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JOSE MARIA BLANCO', 1, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CATEDRAL', 2, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA CONCEPCION', 2, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SANTA ROSA', 2, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'UNION', 2, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'EL CUJI', 2, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'TAMACA', 2, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'JUAN DE VILLEGAS', 2, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'AGUEDO F. ALVARADO', 2, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'BUENA VISTA', 2, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (10, 'JUAREZ', 2, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'JUAN B RODRIGUEZ', 3, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'DIEGO DE LOZADA', 3, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN MIGUEL', 3, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CUARA', 3, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'PARAISO DE SAN JOSE', 3, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'TINTORERO', 3, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'JOSE BERNARDO DORANTE', 3, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'CRNEL. MARIANO PERAZA', 3, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BOLIVAR', 4, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ANZOATEGUI', 4, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'GUARICO', 4, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'HUMOCARO ALTO', 4, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'HUMOCARO BAJO', 4, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'MORAN', 4, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'HILARIO LUNA Y LUNA', 4, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'LA CANDELARIA', 4, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CABUDARE', 5, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JOSE G. BASTIDAS', 5, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'AGUA VIVA', 5, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'TRINIDAD SAMUEL', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ANTONIO DIAZ', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CAMACARO', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CASTA#EDA', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'CHIQUINQUIRA', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'ESPINOZA LOS MONTEROS', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'LARA', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'MANUEL MORILLO', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'MONTES DE OCA', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (10, 'TORRES', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (11, 'EL BLANCO', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (12, 'MONTA A VERDE', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (13, 'HERIBERTO ARROYO', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (14, 'LAS MERCEDES', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (15, 'CECILIO ZUBILLAGA', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (16, 'REYES VARGAS', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (17, 'ALTAGRACIA', 6, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SIQUISIQUE', 7, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN MIGUEL', 7, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'XAGUAS', 7, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MOROTURO', 7, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PIO TAMAYO', 8, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'YACAMBU', 8, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'QBDA. HONDA DE GUACHE', 8, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SARARE', 9, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'GUSTAVO VEGAS LEON', 9, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'BURIA', 9, 11);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GABRIEL PICON G.', 1, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'HECTOR AMABLE MORA', 1, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'JOSE NUCETE SARDI', 1, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'PULIDO MENDEZ', 1, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'PTE. ROMULO GALLEGOS', 1, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'PRESIDENTE BETANCOURT', 1, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'PRESIDENTE PAEZ', 1, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LA AZULITA', 2, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CANAGUA', 3, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CAPURI', 3, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CHACANTA', 3, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'EL MOLINO', 3, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'GUAIMARAL', 3, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'MUCUTUY', 3, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'MUCUCHACHI', 3, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ACEQUIAS', 4, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JAJI', 4, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA MESA', 4, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN JOSE', 4, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'MONTALBAN', 4, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'MATRIZ', 4, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'FERNANDEZ PE#A', 4, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. GUARAQUE', 5, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'MESA DE QUINTERO', 5, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'RIO NEGRO', 5, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. ARAPUEY', 6, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PALMIRA', 6, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. TORONDOY', 7, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN CRISTOBAL DE T', 7, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ARIAS', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAGRARIO', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MILLA', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'EL LLANO', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'JUAN RODRIGUEZ SUAREZ', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'JACINTO PLAZA', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'DOMINGO PE#A', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'GONZALO PICON FEBRES', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'OSUNA RODRIGUEZ', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (10, 'LASSO DE LA VEGA', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (11, 'CARACCIOLO PARRA P', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (12, 'MARIANO PICON SALAS', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (13, 'ANTONIO SPINETTI DINI', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (14, 'EL MORRO', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (15, 'LOS NEVADOS', 8, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. TABAY', 9, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. TIMOTES', 10, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ANDRES ELOY BLANCO', 10, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PI#ANGO', 10, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'LA VENTA', 10, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. STA CRUZ DE MORA', 11, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'MESA BOLIVAR', 11, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MESA DE LAS PALMAS', 11, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. STA ELENA DE ARENALES', 12, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ELOY PAREDES', 12, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'R DE ALCAZAR', 12, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. TUCANI', 13, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'FLORENCIO RAMIREZ', 13, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SANTO DOMINGO', 14, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LAS PIEDRAS', 14, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PUEBLO LLANO', 15, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. MUCUCHIES', 16, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'MUCURUBA', 16, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN RAFAEL', 16, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CACUTE', 16, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LA TOMA', 16, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. BAILADORES', 17, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'GERONIMO MALDONADO', 17, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LAGUNILLAS', 18, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CHIGUARA', 18, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'ESTANQUES', 18, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN JUAN', 18, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'PUEBLO NUEVO DEL SUR', 18, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'LA TRAMPA', 18, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL LLANO', 19, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'TOVAR', 19, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL AMPARO', 19, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN FRANCISCO', 19, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. NUEVA BOLIVIA', 20, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'INDEPENDENCIA', 20, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MARIA C PALACIOS', 20, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SANTA APOLONIA', 20, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. STA MARIA DE CAPARO', 21, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. ARICAGUA', 22, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN ANTONIO', 22, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. ZEA', 23, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CA#O EL TIGRE', 23, 12);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CAUCAGUA', 1, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ARAGUITA', 1, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'AREVALO GONZALEZ', 1, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CAPAYA', 1, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'PANAQUIRE', 1, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'RIBAS', 1, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'EL CAFE', 1, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'MARIZAPA', 1, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'HIGUEROTE', 2, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CURIEPE', 2, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'TACARIGUA', 2, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'LOS TEQUES', 3, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CECILIO ACOSTA', 3, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PARACOTOS', 3, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN PEDRO', 3, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'TACATA', 3, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'EL JARILLO', 3, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'ALTAGRACIA DE LA M', 3, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'STA TERESA DEL TUY', 4, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL CARTANAL', 4, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'OCUMARE DEL TUY', 5, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA DEMOCRACIA', 5, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SANTA BARBARA', 5, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'RIO CHICO', 6, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL GUAPO', 6, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PQ.TACARIGUA DE LA LAGUNA', 6, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'PAPARO', 6, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SN FERNANDO DEL GUAPO', 6, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SANTA LUCIA', 7, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GUARENAS', 8, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PETARE', 9, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LEONCIO MARTINEZ', 9, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CAUCAGUITA', 9, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'FILAS DE MARICHES', 9, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LA DOLORITA', 9, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CUA', 10, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'NUEVA CUA', 10, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GUATIRE', 11, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BOLIVAR', 11, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CHARALLAVE', 12, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LAS BRISAS', 12, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN ANTONIO LOS ALTOS', 13, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PQ.SAN JOSE DE BARLOVENTO', 14, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CUMBO', 14, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN FCO DE YARE', 15, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'S ANTONIO DE YARE', 15, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BARUTA', 16, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL CAFETAL', 16, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LAS MINAS DE BARUTA', 16, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CARRIZAL', 17, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CHACAO', 18, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL HATILLO', 19, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MAMPORAL', 20, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CUPIRA', 21, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'MACHURUCUTO', 21, 13);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN ANTONIO', 1, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN FRANCISCO', 1, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CARIPITO', 2, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CARIPE', 3, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'TERESEN', 3, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL GUACHARO', 3, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN AGUSTIN', 3, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LA GUANOTA', 3, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'SABANA DE PIEDRA', 3, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CAICARA', 4, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'AREO', 4, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN FELIX', 4, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'VIENTO FRESCO', 4, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PUNTA DE MATA', 5, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL TEJERO', 5, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. TEMBLADOR', 6, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'TABASCA', 6, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LAS ALHUACAS', 6, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CHAGUARAMAS', 6, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL FURRIAL', 7, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JUSEPIN', 7, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL COROZO', 7, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN VICENTE', 7, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LA PICA', 7, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'ALTO DE LOS GODOS', 7, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'BOQUERON', 7, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'LAS COCUIZAS', 7, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'SANTA CRUZ', 7, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (10, 'SAN SIMON', 7, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. ARAGUA', 8, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CHAGUARAMAL', 8, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'GUANAGUANA', 8, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'APARICIO', 8, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'TAGUAYA', 8, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'EL PINTO', 8, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'LA TOSCANA', 8, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. QUIRIQUIRE', 9, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CACHIPO', 9, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. BARRANCAS', 10, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LOS BARRANCOS DE FAJARDO', 10, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. AGUASAY', 11, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SANTA BARBARA', 12, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. URACOA', 13, 14);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LA ASUNCION', 1, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN JUAN BAUTISTA', 2, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ZABALA', 2, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SANTA ANA', 3, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'GUEVARA', 3, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MATASIETE', 3, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'BOLIVAR', 3, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SUCRE', 3, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PAMPATAR', 4, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'AGUIRRE', 4, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. JUAN GRIEGO', 5, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ADRIAN', 5, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PORLAMAR', 6, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. BOCA DEL RIO', 7, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN FRANCISCO', 7, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN PEDRO DE COCHE', 8, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'VICENTE FUENTES', 8, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PUNTA DE PIEDRAS', 9, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LOS BARALES', 9, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM.LA PLAZA DE PARAGUACHI', 10, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. VALLE ESP SANTO', 11, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'FRANCISCO FAJARDO', 11, 15);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. ARAURE', 1, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'RIO ACARIGUA', 1, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PIRITU', 2, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'UVERAL', 2, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. GUANARE', 3, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CORDOBA', 3, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PQ.SAN JUAN GUANAGUANARE', 3, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'VIRGEN DE LA COROMOTO', 3, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'PQ.SAN JOSE DE LA MONTA#A', 3, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. GUANARITO', 4, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PQ.TRINIDAD DE LA CAPILLA', 4, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'DIVINA PASTORA', 4, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. OSPINO', 5, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'APARICION', 5, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA ESTACION', 5, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. ACARIGUA', 6, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PAYARA', 6, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PIMPINELA', 6, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'RAMON PERAZA', 6, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. BISCUCUY', 7, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CONCEPCION', 7, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PQ.SAN RAFAEL PALO ALZADO', 7, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'UVENCIO A VELASQUEZ', 7, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SAN JOSE DE SAGUAZ', 7, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'VILLA ROSA', 7, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. VILLA BRUZUAL', 8, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CANELONES', 8, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SANTA CRUZ', 8, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN ISIDRO LABRADOR', 8, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CHABASQUEN', 9, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PE#A BLANCA', 9, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. AGUA BLANCA', 10, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PAPELON', 11, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CA#O DELGADITO', 11, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. BOCONOITO', 12, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ANTOLIN TOVAR AQUINO', 12, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN RAFAEL DE ONOTO', 13, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SANTA FE', 13, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'THERMO MORLES', 13, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. EL PLAYON', 14, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'FLORIDA', 14, 16);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'RIO CARIBE', 1, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN JUAN GALDONAS', 1, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PUERTO SANTO', 1, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'EL MORRO DE PTO SANTO', 1, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'ANTONIO JOSE DE SUCRE', 1, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL PILAR', 2, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL RINCON', 2, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'GUARAUNOS', 2, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'TUNAPUICITO', 2, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'UNION', 2, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'GRAL FCO. A VASQUEZ', 2, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SANTA CATALINA', 3, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SANTA ROSA', 3, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SANTA TERESA', 3, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'BOLIVAR', 3, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'MACARAPANA', 3, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'YAGUARAPARO', 4, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LIBERTAD', 4, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PAUJIL', 4, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'IRAPA', 5, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CAMPO CLARO', 5, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SORO', 5, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN ANTONIO DE IRAPA', 5, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'MARABAL', 5, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN ANT DEL GOLFO', 6, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CUMANACOA', 7, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ARENAS', 7, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'ARICAGUA', 7, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'COCOLLAR', 7, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SAN FERNANDO', 7, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'SAN LORENZO', 7, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CARIACO', 8, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CATUARO', 8, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'RENDON', 8, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SANTA CRUZ', 8, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SANTA MARIA', 8, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ALTAGRACIA', 9, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'AYACUCHO', 9, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SANTA INES', 9, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'VALENTIN VALIENTE', 9, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SAN JUAN', 9, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'PQ.GRAN MARISCAL', 9, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'RAUL LEONI', 9, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GUIRIA', 10, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CRISTOBAL COLON', 10, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PUNTA DE PIEDRA', 10, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'BIDEAU', 10, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MARI#O', 11, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ROMULO GALLEGOS', 11, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'TUNAPUY', 12, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CAMPO ELIAS', 12, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN JOSE DE AREOCUAR', 13, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'TAVERA ACOSTA', 13, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. MARIGUITAR', 14, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ARAYA', 15, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'MANICUARE', 15, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CHACOPATA', 15, 17);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. COLON', 1, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'RIVAS BERTI', 1, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN PEDRO DEL RIO', 1, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN ANT DEL TACHIRA', 2, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PALOTAL', 2, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'JUAN VICENTE GOMEZ', 2, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'ISAIAS MEDINA ANGARIT', 2, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CAPACHO NUEVO', 3, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JUAN GERMAN ROSCIO', 3, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'ROMAN CARDENAS', 3, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. TARIBA', 4, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA FLORIDA', 4, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'AMENODORO RANGEL LAMU', 4, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LA GRITA', 5, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EMILIO C. GUERRERO', 5, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MONS. MIGUEL A SALAS', 5, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. RUBIO', 6, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BRAMON', 6, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA PETROLEA', 6, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'QUINIMARI', 6, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LOBATERA', 7, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CONSTITUCION', 7, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'LA CONCORDIA', 8, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PEDRO MARIA MORANTES', 8, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SN JUAN BAUTISTA', 8, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN SEBASTIAN', 8, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'DR. FCO. ROMERO LOBO', 8, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PREGONERO', 9, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CARDENAS', 9, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'POTOSI', 9, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'JUAN PABLO PE#ALOZA', 9, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. STA. ANA  DEL TACHIRA', 10, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LA FRIA', 11, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BOCA DE GRITA', 11, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'JOSE ANTONIO PAEZ', 11, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. PALMIRA', 12, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. MICHELENA', 13, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. ABEJALES', 14, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN JOAQUIN DE NAVAY', 14, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'DORADAS', 14, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'EMETERIO OCHOA', 14, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. COLONCITO', 15, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA PALMITA', 15, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. URE#A', 16, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'NUEVA ARCADIA', 16, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. QUENIQUEA', 17, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN PABLO', 17, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PQ.ELEAZAR LOPEZ CONTRERA', 17, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CORDERO', 18, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM.SAN RAFAEL DEL PINAL', 19, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SANTO DOMINGO', 19, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'ALBERTO ADRIANI', 19, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CAPACHO VIEJO', 20, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CIPRIANO CASTRO', 20, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MANUEL FELIPE RUGELES', 20, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LA TENDIDA', 21, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BOCONO', 21, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'HERNANDEZ', 21, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SEBORUCO', 22, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LAS MESAS', 23, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN JOSE DE BOLIVAR', 24, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. EL COBRE', 25, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. DELICIAS', 26, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN SIMON', 27, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN JOSECITO', 28, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. UMUQUENA', 29, 18);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BETIJOQUE', 1, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JOSE G HERNANDEZ', 1, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA PUEBLITA', 1, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'EL CEDRO', 1, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BOCONO', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL CARMEN', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MOSQUEY', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'AYACUCHO', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'BURBUSAY', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'GENERAL RIVAS', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'MONSE#OR JAUREGUI', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'RAFAEL RANGEL', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'SAN JOSE', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (10, 'SAN MIGUEL', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (11, 'GUARAMACAL', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (12, 'LA VEGA DE GUARAMACAL', 2, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CARACHE', 3, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA CONCEPCION', 3, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CUICAS', 3, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'PANAMERICANA', 3, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SANTA CRUZ', 3, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ESCUQUE', 4, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SABANA LIBRE', 4, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA UNION', 4, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SANTA RITA', 4, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CRISTOBAL MENDOZA', 5, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CHIQUINQUIRA', 5, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MATRIZ', 5, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MONSE#OR CARRILLO', 5, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'CRUZ CARRILLO', 5, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'ANDRES LINARES', 5, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'TRES ESQUINAS', 5, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'LA QUEBRADA', 6, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JAJO', 6, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA MESA', 6, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SANTIAGO', 6, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'CABIMBU', 6, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'TU#AME', 6, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MERCEDES DIAZ', 7, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JUAN IGNACIO MONTILLA', 7, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA BEATRIZ', 7, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MENDOZA', 7, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LA PUERTA', 7, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'SAN LUIS', 7, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CHEJENDE', 8, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CARRILLO', 8, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CEGARRA', 8, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'BOLIVIA', 8, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'MANUEL SALVADOR ULLOA', 8, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'SAN JOSE', 8, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'ARNOLDO GABALDON', 8, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL DIVIDIVE', 9, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'AGUA CALIENTE', 9, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL CENIZO', 9, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'AGUA SANTA', 9, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'VALERITA', 9, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MONTE CARMELO', 10, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'BUENA VISTA', 10, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'STA MARIA DEL HORCON', 10, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MOTATAN', 11, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL BA#O', 11, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'JALISCO', 11, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PAMPAN', 12, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SANTA ANA', 12, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA PAZ', 12, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'FLOR DE PATRIA', 12, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CARVAJAL', 13, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ANTONIO N BRICE#O', 13, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CAMPO ALEGRE', 13, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'JOSE LEONARDO SUAREZ', 13, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SABANA DE MENDOZA', 14, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JUNIN', 14, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'VALMORE RODRIGUEZ', 14, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'EL PARAISO', 14, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SANTA ISABEL', 15, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ARAGUANEY', 15, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL JAGUITO', 15, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'LA ESPERANZA', 15, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SABANA GRANDE', 16, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CHEREGUE', 16, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'GRANADOS', 16, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'EL SOCORRO', 17, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LOS CAPRICHOS', 17, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'ANTONIO JOSE DE SUCRE', 17, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CAMPO ELIAS', 18, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ARNOLDO GABALDON', 18, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SANTA APOLONIA', 19, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA CEIBA', 19, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL PROGRESO', 19, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'TRES DE FEBRERO', 19, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PAMPANITO', 20, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PAMPANITO II', 20, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LA CONCEPCION', 20, 19);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. AROA', 1, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. CHIVACOA', 2, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CAMPO ELIAS', 2, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. NIRGUA', 3, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SALOM', 3, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'TEMERLA', 3, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN FELIPE', 4, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ALBARICO', 4, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN JAVIER', 4, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. GUAMA', 5, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. URACHICHE', 6, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. YARITAGUA', 7, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN ANDRES', 7, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SABANA DE PARRA', 8, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. BORAURE', 9, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. COCOROTE', 10, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. INDEPENDENCIA', 11, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN PABLO', 12, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. YUMARE', 13, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. FARRIAR', 14, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'EL GUAYABO', 14, 20);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GENERAL URDANETA', 1, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LIBERTADOR', 1, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MANUEL GUANIPA MATOS', 1, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MARCELINO BRICE#O', 1, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SAN TIMOTEO', 1, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'PUEBLO NUEVO', 1, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PEDRO LUCAS URRIBARRI', 2, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SANTA RITA', 2, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'JOSE CENOVIO URRIBARR', 2, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'EL MENE', 2, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SANTA CRUZ DEL ZULIA', 3, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'URRIBARRI', 3, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MORALITO', 3, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN CARLOS DEL ZULIA', 3, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SANTA BARBARA', 3, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'LUIS DE VICENTE', 4, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'RICAURTE', 4, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MONS.MARCOS SERGIO G', 4, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN RAFAEL', 4, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LAS PARCELAS', 4, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'TAMARE', 4, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'LA SIERRITA', 4, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BOLIVAR', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'COQUIVACOA', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CRISTO DE ARANZA', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CHIQUINQUIRA', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SANTA LUCIA', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'OLEGARIO VILLALOBOS', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'JUANA DE AVILA', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'PQ.CARACCIOLO PARRA PEREZ', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'IDELFONZO VASQUEZ', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (10, 'CACIQUE MARA', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (11, 'CECILIO ACOSTA', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (12, 'RAUL LEONI', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (13, 'FRANCISCO EUGENIO B', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (14, 'MANUEL DAGNINO', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (15, 'LUIS HURTADO HIGUERA', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (16, 'VENANCIO PULGAR', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (17, 'ANTONIO BORJAS ROMERO', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (18, 'SAN ISIDRO', 5, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'FARIA', 6, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAN ANTONIO', 6, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'ANA MARIA CAMPOS', 6, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'SAN JOSE', 6, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'ALTAGRACIA', 6, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GOAJIRA', 7, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ELIAS SANCHEZ RUBIO', 7, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SINAMAICA', 7, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'ALTA GUAJIRA', 7, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN JOSE DE PERIJA', 8, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'PQ.BARTOLOME DE LAS CASAS', 8, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'LIBERTAD', 8, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'RIO NEGRO', 8, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'GIBRALTAR', 9, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'HERAS', 9, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'M.ARTURO CELESTINO A', 9, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'ROMULO GALLEGOS', 9, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'BOBURES', 9, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'EL BATEY', 9, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ANDRES BELLO (KM 48)', 10, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'POTRERITOS', 10, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL CARMELO', 10, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CHIQUINQUIRA', 10, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'CONCEPCION', 10, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'ELEAZAR LOPEZ C', 11, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ALONSO DE OJEDA', 11, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'VENEZUELA', 11, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CAMPO LARA', 11, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LIBERTAD', 11, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'UDON PEREZ', 12, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ENCONTRADOS', 12, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'DONALDO GARCIA', 13, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SIXTO ZAMBRANO', 13, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'EL ROSARIO', 13, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'AMBROSIO', 14, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'GERMAN RIOS LINARES', 14, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'JORGE HERNANDEZ', 14, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'LA ROSA', 14, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'PUNTA GORDA', 14, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'CARMEN HERRERA', 14, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'SAN BENITO', 14, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'ROMULO BETANCOURT', 14, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'ARISTIDES CALVANI', 14, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'RAUL CUENCA', 15, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA VICTORIA', 15, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'RAFAEL URDANETA', 15, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'JOSE RAMON YEPEZ', 16, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LA CONCEPCION', 16, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN JOSE', 16, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MARIANO PARRA LEON', 16, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MONAGAS', 17, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ISLA DE TOAS', 17, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'MARCIAL HERNANDEZ', 18, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'FRANCISCO OCHOA', 18, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN FRANCISCO', 18, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'EL BAJO', 18, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'DOMITILA FLORES', 18, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'LOS CORTIJOS', 18, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'BARI', 19, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'JESUS M SEMPRUN', 19, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SIMON RODRIGUEZ', 20, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CARLOS QUEVEDO', 20, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'FRANCISCO J PULGAR', 20, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'RAFAEL MARIA BARALT', 21, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'MANUEL MANRIQUE', 21, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'RAFAEL URDANETA', 21, 21);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'FERNANDO GIRON TOVAR', 1, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LUIS ALBERTO GOMEZ', 1, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'PARHUE#A', 1, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'PLATANILLAL', 1, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN FERNANDO DE ATABA', 2, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'UCATA', 2, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'YAPACANA', 2, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CANAME', 2, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. MAROA', 3, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'VICTORINO', 3, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'COMUNIDAD', 3, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN CARLOS DE RIO NEG', 4, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SOLANO', 4, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CASIQUIARE', 4, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'COCUY', 4, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. ISLA DE RATON', 5, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SAMARIAPO', 5, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SIPAPO', 5, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MUNDUAPO', 5, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'GUAYAPO', 5, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. SAN JUAN DE MANAPIARE', 6, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ALTO VENTUARI', 6, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MEDIO VENTUARI', 6, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'BAJO VENTUARI', 6, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CM. LA ESMERALDA', 7, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'HUACHAMACARE', 7, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MARAWAKA', 7, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MAVACA', 7, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'SIERRA PARIMA', 7, 22);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'SAN JOSE', 1, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'VIRGEN DEL VALLE', 1, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'SAN RAFAEL', 1, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'JOSE VIDAL MARCANO', 1, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LEONARDO RUIZ PINEDA', 1, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'MONS. ARGIMIRO GARCIA', 1, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'PQ.MCL.ANTONIO J DE SUCRE', 1, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'JUAN MILLAN', 1, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'PEDERNALES', 2, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'LUIS B PRIETO FIGUERO', 2, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CURIAPO', 3, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'SANTOS DE ABELGAS', 3, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'MANUEL RENAUD', 3, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'PADRE BARRAL', 3, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'ANICETO LUGO', 3, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'ALMIRANTE LUIS BRION', 3, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'IMATACA', 4, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'ROMULO GALLEGOS', 4, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'JUAN BAUTISTA ARISMEN', 4, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'MANUEL PIAR', 4, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, '5 DE JULIO', 4, 23);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (1, 'CARABALLEDA', 1, 24);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (2, 'CARAYACA', 1, 24);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (3, 'CARUAO', 1, 24);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (4, 'CATIA LA MAR', 1, 24);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (5, 'LA GUAIRA', 1, 24);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (6, 'MACUTO', 1, 24);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (7, 'MAIQUETIA', 1, 24);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (8, 'NAIGUATA', 1, 24);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (9, 'EL JUNKO', 1, 24);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (11, 'CARLOS SOUBLETTE', 1, 24);
INSERT INTO parroquia (codparroquia, nombreparroquia, codmunicipiop, codestadop) VALUES (10, 'URIMARE', 1, 24);


--
-- TOC entry 2028 (class 0 OID 57272)
-- Dependencies: 178
-- Data for Name: solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO solicitud (idsolicitud, anosolicitud, tipoacta, fecharegistrosoli, rutaimagenact, fecharepuestasoli, solicerrada, quienentreacta, idusuario, eliminada) VALUES (11, 2019, 'DEFUNCION', '2019-09-30', NULL, NULL, false, NULL, 18, false);
INSERT INTO solicitud (idsolicitud, anosolicitud, tipoacta, fecharegistrosoli, rutaimagenact, fecharepuestasoli, solicerrada, quienentreacta, idusuario, eliminada) VALUES (16, 2019, 'UEH', '2019-09-30', NULL, NULL, false, NULL, 18, false);
INSERT INTO solicitud (idsolicitud, anosolicitud, tipoacta, fecharegistrosoli, rutaimagenact, fecharepuestasoli, solicerrada, quienentreacta, idusuario, eliminada) VALUES (9, 2019, 'NACIMIENTO', '2019-09-30', '../imagenesActas/usuario_pvha88/pvha88-9-2018.pdf', '2019-10-06', true, 17225280, 18, false);
INSERT INTO solicitud (idsolicitud, anosolicitud, tipoacta, fecharegistrosoli, rutaimagenact, fecharepuestasoli, solicerrada, quienentreacta, idusuario, eliminada) VALUES (18, 2019, 'NACIMIENTO', '2019-10-07', NULL, NULL, false, NULL, 20, false);
INSERT INTO solicitud (idsolicitud, anosolicitud, tipoacta, fecharegistrosoli, rutaimagenact, fecharepuestasoli, solicerrada, quienentreacta, idusuario, eliminada) VALUES (19, 2019, 'NACIMIENTO', '2019-10-07', NULL, NULL, false, NULL, 20, false);
INSERT INTO solicitud (idsolicitud, anosolicitud, tipoacta, fecharegistrosoli, rutaimagenact, fecharepuestasoli, solicerrada, quienentreacta, idusuario, eliminada) VALUES (20, 2019, 'UEH', '2019-10-07', '../imagenesActas/usuario_mirian/mirian-20-2019.pdf', '2019-10-07', true, 17225280, 20, false);
INSERT INTO solicitud (idsolicitud, anosolicitud, tipoacta, fecharegistrosoli, rutaimagenact, fecharepuestasoli, solicerrada, quienentreacta, idusuario, eliminada) VALUES (12, 2019, 'MATRIMONIO', '2019-09-30', NULL, NULL, false, NULL, 18, false);
INSERT INTO solicitud (idsolicitud, anosolicitud, tipoacta, fecharegistrosoli, rutaimagenact, fecharepuestasoli, solicerrada, quienentreacta, idusuario, eliminada) VALUES (17, 2019, 'UEH', '2019-09-30', NULL, NULL, false, NULL, 18, false);
INSERT INTO solicitud (idsolicitud, anosolicitud, tipoacta, fecharegistrosoli, rutaimagenact, fecharepuestasoli, solicerrada, quienentreacta, idusuario, eliminada) VALUES (10, 2019, 'NACIMIENTO', '2019-09-30', '../imagenesActas/usuario_pvha88/pvha88-10-2019.pdf', '2019-10-06', true, 17225280, 18, false);


--
-- TOC entry 2084 (class 0 OID 0)
-- Dependencies: 177
-- Name: solicitud_idsolicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('solicitud_idsolicitud_seq', 20, true);


--
-- TOC entry 2036 (class 0 OID 57331)
-- Dependencies: 186
-- Data for Name: ueh; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ueh (idueh, nacta, ntomo, fechaacta, nombre1esposo, nombre2esposo, apellido1esposo, apellido2esposo, nombre1esposa, nombre2esposa, apellido1esposa, apellido2esposa, codestado, codmunicipio, codparroquia, codof, idsolicitud, anosolicitud) VALUES (2, 1, 1, '2009-01-01', 'PABLO', 'VICENTE', 'HERNANDEZ', 'ALCALA', 'ANGELICA', 'DELVALLE', 'LICONTI', 'ARCIA', 1, 1, 9, 10, 17, 2019);
INSERT INTO ueh (idueh, nacta, ntomo, fechaacta, nombre1esposo, nombre2esposo, apellido1esposo, apellido2esposo, nombre1esposa, nombre2esposa, apellido1esposa, apellido2esposa, codestado, codmunicipio, codparroquia, codof, idsolicitud, anosolicitud) VALUES (1, 1001, 4, '1984-11-17', 'PABLO', 'VICENTE', 'HERNANDEZ', 'ALCALA', 'ANGELICA', 'DELVALLE', 'LICONTI', 'ARCIA', 1, 1, 9, 10, 16, 2019);
INSERT INTO ueh (idueh, nacta, ntomo, fechaacta, nombre1esposo, nombre2esposo, apellido1esposo, apellido2esposo, nombre1esposa, nombre2esposa, apellido1esposa, apellido2esposa, codestado, codmunicipio, codparroquia, codof, idsolicitud, anosolicitud) VALUES (3, 1251, 6, '2000-01-01', 'JOSE', 'VICENTE', 'HERNANDEZ', 'ALCALA', 'MIRIAN', 'JOSEFINA', 'ALCALA', 'RODRIGUEZ', 13, 4, 1, 59, 20, 2019);


--
-- TOC entry 2085 (class 0 OID 0)
-- Dependencies: 185
-- Name: ueh_idueh_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ueh_idueh_seq', 3, true);


--
-- TOC entry 2021 (class 0 OID 40763)
-- Dependencies: 171
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usuario (idusuario, tipodocumento, cedula, nombre, apellido, correo, rutaimagen, activo, tipousuario, usuario) VALUES (53, 'C', '6523133', 'JOSE', 'HERNANDEZ', 'jose@gmail.com', '../imagenes/usuario.jpg', true, 'USUARIO', 'jose');
INSERT INTO usuario (idusuario, tipodocumento, cedula, nombre, apellido, correo, rutaimagen, activo, tipousuario, usuario) VALUES (19, 'C', '17225280', 'ANGELICA', 'LICONTI', 'angelica@gmail.com', '../imagenesPerfil/usuario_angelica/IMG_20131231_234440.jpg', true, 'ASISTENTE', 'angelica');
INSERT INTO usuario (idusuario, tipodocumento, cedula, nombre, apellido, correo, rutaimagen, activo, tipousuario, usuario) VALUES (21, 'C', '16148762', 'PABLO', 'HERNANDEZ', 'pvha.1610@gmail.com', '../imagenes/usuario.jpg', true, 'ADMINISTRADOR', 'pvha1610');
INSERT INTO usuario (idusuario, tipodocumento, cedula, nombre, apellido, correo, rutaimagen, activo, tipousuario, usuario) VALUES (54, 'C', '161487623', 'PABLO', 'HERNANDEZ', 'xpedro15@htomail.com', '../imagenes/usuario.jpg', false, 'USUARIO', 'pedro');
INSERT INTO usuario (idusuario, tipodocumento, cedula, nombre, apellido, correo, rutaimagen, activo, tipousuario, usuario) VALUES (18, 'C', '16148762', 'PABLO', 'HERNANDEZ', 'pvha_88@hotmail.com', '../imagenesPerfil/usuario_pvha88/Los destroyers 20190303_135706.jpg', true, 'USUARIO', 'pvha88');
INSERT INTO usuario (idusuario, tipodocumento, cedula, nombre, apellido, correo, rutaimagen, activo, tipousuario, usuario) VALUES (20, 'C', '6422975', 'MIRIAN', 'ALCALA', 'mirian@gmail.com', '../imagenesPerfil/usuario_mirian/IMG_20150815_190152.jpg', true, 'USUARIO', 'mirian');


--
-- TOC entry 2086 (class 0 OID 0)
-- Dependencies: 172
-- Name: usuario_idusuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_idusuario_seq', 55, true);


--
-- TOC entry 1899 (class 2606 OID 57309)
-- Name: pkdefuncion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY defuncion
    ADD CONSTRAINT pkdefuncion PRIMARY KEY (iddefuncion);


--
-- TOC entry 1887 (class 2606 OID 48971)
-- Name: pkestado; Type: CONSTRAINT; Schema: public; Owner: onrc
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT pkestado PRIMARY KEY (codestado);


--
-- TOC entry 1901 (class 2606 OID 57323)
-- Name: pkmatrimonio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matrimonio
    ADD CONSTRAINT pkmatrimonio PRIMARY KEY (idmatrimonio);


--
-- TOC entry 1889 (class 2606 OID 48973)
-- Name: pkmunicipio; Type: CONSTRAINT; Schema: public; Owner: onrc
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT pkmunicipio PRIMARY KEY (codmunicipio, codestadom);


--
-- TOC entry 1897 (class 2606 OID 57296)
-- Name: pknacimiento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nacimiento
    ADD CONSTRAINT pknacimiento PRIMARY KEY (idnacimiento);


--
-- TOC entry 1891 (class 2606 OID 48975)
-- Name: pkourc; Type: CONSTRAINT; Schema: public; Owner: onrc
--

ALTER TABLE ONLY ourc
    ADD CONSTRAINT pkourc PRIMARY KEY (codestado, codof);


--
-- TOC entry 1893 (class 2606 OID 48977)
-- Name: pkparroquia; Type: CONSTRAINT; Schema: public; Owner: onrc
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT pkparroquia PRIMARY KEY (codparroquia, codmunicipiop, codestadop);


--
-- TOC entry 1895 (class 2606 OID 57283)
-- Name: pksolicitud; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT pksolicitud PRIMARY KEY (idsolicitud, anosolicitud);


--
-- TOC entry 1903 (class 2606 OID 57336)
-- Name: pkueh; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ueh
    ADD CONSTRAINT pkueh PRIMARY KEY (idueh);


--
-- TOC entry 1885 (class 2606 OID 40790)
-- Name: pkusuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pkusuario PRIMARY KEY (idusuario);


--
-- TOC entry 1911 (class 2606 OID 57310)
-- Name: fkdefuncion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY defuncion
    ADD CONSTRAINT fkdefuncion FOREIGN KEY (idsolicitud, anosolicitud) REFERENCES solicitud(idsolicitud, anosolicitud) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1912 (class 2606 OID 57324)
-- Name: fkmatrimonio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matrimonio
    ADD CONSTRAINT fkmatrimonio FOREIGN KEY (idsolicitud, anosolicitud) REFERENCES solicitud(idsolicitud, anosolicitud) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1904 (class 2606 OID 48978)
-- Name: fkmunicipio; Type: FK CONSTRAINT; Schema: public; Owner: onrc
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT fkmunicipio FOREIGN KEY (codestadom) REFERENCES estado(codestado) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1910 (class 2606 OID 57297)
-- Name: fknacimiento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nacimiento
    ADD CONSTRAINT fknacimiento FOREIGN KEY (idsolicitud, anosolicitud) REFERENCES solicitud(idsolicitud, anosolicitud) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1905 (class 2606 OID 48983)
-- Name: fkourc1; Type: FK CONSTRAINT; Schema: public; Owner: onrc
--

ALTER TABLE ONLY ourc
    ADD CONSTRAINT fkourc1 FOREIGN KEY (codestado) REFERENCES estado(codestado) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 1906 (class 2606 OID 48988)
-- Name: fkourc2; Type: FK CONSTRAINT; Schema: public; Owner: onrc
--

ALTER TABLE ONLY ourc
    ADD CONSTRAINT fkourc2 FOREIGN KEY (codmunicipio, codestado) REFERENCES municipio(codmunicipio, codestadom) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 1907 (class 2606 OID 48993)
-- Name: fkourc3; Type: FK CONSTRAINT; Schema: public; Owner: onrc
--

ALTER TABLE ONLY ourc
    ADD CONSTRAINT fkourc3 FOREIGN KEY (codparroquia, codmunicipio, codestado) REFERENCES parroquia(codparroquia, codmunicipiop, codestadop) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 1908 (class 2606 OID 48998)
-- Name: fkparroquia; Type: FK CONSTRAINT; Schema: public; Owner: onrc
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT fkparroquia FOREIGN KEY (codestadop, codmunicipiop) REFERENCES municipio(codestadom, codmunicipio) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1909 (class 2606 OID 57284)
-- Name: fksolicitud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT fksolicitud FOREIGN KEY (idusuario) REFERENCES usuario(idusuario) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 1913 (class 2606 OID 57337)
-- Name: fkueh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ueh
    ADD CONSTRAINT fkueh FOREIGN KEY (idsolicitud, anosolicitud) REFERENCES solicitud(idsolicitud, anosolicitud) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2043 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 2045 (class 0 OID 0)
-- Dependencies: 182
-- Name: defuncion; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE defuncion FROM PUBLIC;
REVOKE ALL ON TABLE defuncion FROM postgres;
GRANT ALL ON TABLE defuncion TO postgres;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE defuncion TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE defuncion TO asistente;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE defuncion TO usuario;


--
-- TOC entry 2047 (class 0 OID 0)
-- Dependencies: 181
-- Name: defuncion_iddefuncion_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE defuncion_iddefuncion_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE defuncion_iddefuncion_seq FROM postgres;
GRANT ALL ON SEQUENCE defuncion_iddefuncion_seq TO postgres;
GRANT ALL ON SEQUENCE defuncion_iddefuncion_seq TO administrador;
GRANT ALL ON SEQUENCE defuncion_iddefuncion_seq TO asistente;
GRANT ALL ON SEQUENCE defuncion_iddefuncion_seq TO usuario;


--
-- TOC entry 2050 (class 0 OID 0)
-- Dependencies: 173
-- Name: estado; Type: ACL; Schema: public; Owner: onrc
--

REVOKE ALL ON TABLE estado FROM PUBLIC;
REVOKE ALL ON TABLE estado FROM onrc;
GRANT ALL ON TABLE estado TO onrc;
GRANT SELECT,INSERT,UPDATE ON TABLE estado TO administrador;
GRANT SELECT,INSERT,UPDATE ON TABLE estado TO registrador;
GRANT SELECT,INSERT,UPDATE ON TABLE estado TO usuario;
GRANT SELECT,INSERT,UPDATE ON TABLE estado TO dmrc;


--
-- TOC entry 2051 (class 0 OID 0)
-- Dependencies: 184
-- Name: matrimonio; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE matrimonio FROM PUBLIC;
REVOKE ALL ON TABLE matrimonio FROM postgres;
GRANT ALL ON TABLE matrimonio TO postgres;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE matrimonio TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE matrimonio TO asistente;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE matrimonio TO usuario;


--
-- TOC entry 2053 (class 0 OID 0)
-- Dependencies: 183
-- Name: matrimonio_idmatrimonio_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE matrimonio_idmatrimonio_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE matrimonio_idmatrimonio_seq FROM postgres;
GRANT ALL ON SEQUENCE matrimonio_idmatrimonio_seq TO postgres;
GRANT ALL ON SEQUENCE matrimonio_idmatrimonio_seq TO administrador;
GRANT ALL ON SEQUENCE matrimonio_idmatrimonio_seq TO asistente;
GRANT ALL ON SEQUENCE matrimonio_idmatrimonio_seq TO usuario;


--
-- TOC entry 2057 (class 0 OID 0)
-- Dependencies: 174
-- Name: municipio; Type: ACL; Schema: public; Owner: onrc
--

REVOKE ALL ON TABLE municipio FROM PUBLIC;
REVOKE ALL ON TABLE municipio FROM onrc;
GRANT ALL ON TABLE municipio TO onrc;
GRANT SELECT,INSERT,UPDATE ON TABLE municipio TO administrador;
GRANT SELECT,INSERT,UPDATE ON TABLE municipio TO registrador;
GRANT SELECT,INSERT,UPDATE ON TABLE municipio TO usuario;
GRANT SELECT,INSERT,UPDATE ON TABLE municipio TO dmrc;


--
-- TOC entry 2058 (class 0 OID 0)
-- Dependencies: 180
-- Name: nacimiento; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE nacimiento FROM PUBLIC;
REVOKE ALL ON TABLE nacimiento FROM postgres;
GRANT ALL ON TABLE nacimiento TO postgres;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE nacimiento TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE nacimiento TO asistente;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE nacimiento TO usuario;


--
-- TOC entry 2060 (class 0 OID 0)
-- Dependencies: 179
-- Name: nacimiento_idnacimiento_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE nacimiento_idnacimiento_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE nacimiento_idnacimiento_seq FROM postgres;
GRANT ALL ON SEQUENCE nacimiento_idnacimiento_seq TO postgres;
GRANT ALL ON SEQUENCE nacimiento_idnacimiento_seq TO administrador;
GRANT ALL ON SEQUENCE nacimiento_idnacimiento_seq TO asistente;
GRANT ALL ON SEQUENCE nacimiento_idnacimiento_seq TO usuario;


--
-- TOC entry 2067 (class 0 OID 0)
-- Dependencies: 175
-- Name: ourc; Type: ACL; Schema: public; Owner: onrc
--

REVOKE ALL ON TABLE ourc FROM PUBLIC;
REVOKE ALL ON TABLE ourc FROM onrc;
GRANT ALL ON TABLE ourc TO onrc;
GRANT SELECT,INSERT,UPDATE ON TABLE ourc TO administrador;
GRANT SELECT,INSERT,UPDATE ON TABLE ourc TO registrador;
GRANT SELECT,INSERT,UPDATE ON TABLE ourc TO usuario;
GRANT SELECT,INSERT,UPDATE ON TABLE ourc TO dmrc;


--
-- TOC entry 2072 (class 0 OID 0)
-- Dependencies: 176
-- Name: parroquia; Type: ACL; Schema: public; Owner: onrc
--

REVOKE ALL ON TABLE parroquia FROM PUBLIC;
REVOKE ALL ON TABLE parroquia FROM onrc;
GRANT ALL ON TABLE parroquia TO onrc;
GRANT SELECT,INSERT,UPDATE ON TABLE parroquia TO administrador;
GRANT SELECT,INSERT,UPDATE ON TABLE parroquia TO registrador;
GRANT SELECT,INSERT,UPDATE ON TABLE parroquia TO usuario;
GRANT SELECT,INSERT,UPDATE ON TABLE parroquia TO dmrc;


--
-- TOC entry 2073 (class 0 OID 0)
-- Dependencies: 178
-- Name: solicitud; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE solicitud FROM PUBLIC;
REVOKE ALL ON TABLE solicitud FROM postgres;
GRANT ALL ON TABLE solicitud TO postgres;
GRANT SELECT ON TABLE solicitud TO administrador;
GRANT SELECT ON TABLE solicitud TO asistente;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE solicitud TO usuario;


--
-- TOC entry 2075 (class 0 OID 0)
-- Dependencies: 177
-- Name: solicitud_idsolicitud_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE solicitud_idsolicitud_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE solicitud_idsolicitud_seq FROM postgres;
GRANT ALL ON SEQUENCE solicitud_idsolicitud_seq TO postgres;
GRANT ALL ON SEQUENCE solicitud_idsolicitud_seq TO administrador;
GRANT ALL ON SEQUENCE solicitud_idsolicitud_seq TO usuario;
GRANT ALL ON SEQUENCE solicitud_idsolicitud_seq TO asistente;


--
-- TOC entry 2076 (class 0 OID 0)
-- Dependencies: 186
-- Name: ueh; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE ueh FROM PUBLIC;
REVOKE ALL ON TABLE ueh FROM postgres;
GRANT ALL ON TABLE ueh TO postgres;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ueh TO administrador;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ueh TO asistente;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE ueh TO usuario;


--
-- TOC entry 2078 (class 0 OID 0)
-- Dependencies: 185
-- Name: ueh_idueh_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE ueh_idueh_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE ueh_idueh_seq FROM postgres;
GRANT ALL ON SEQUENCE ueh_idueh_seq TO postgres;
GRANT ALL ON SEQUENCE ueh_idueh_seq TO administrador;
GRANT ALL ON SEQUENCE ueh_idueh_seq TO asistente;
GRANT ALL ON SEQUENCE ueh_idueh_seq TO usuario;


--
-- TOC entry 2079 (class 0 OID 0)
-- Dependencies: 171
-- Name: usuario; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE usuario FROM PUBLIC;
REVOKE ALL ON TABLE usuario FROM postgres;
GRANT ALL ON TABLE usuario TO postgres;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE usuario TO administrador;
GRANT SELECT,INSERT,UPDATE ON TABLE usuario TO usuario;


-- Completed on 2019-10-07 15:05:23

--
-- PostgreSQL database dump complete
--

