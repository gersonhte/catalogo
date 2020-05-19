-- SQL Manager 2007 for PostgreSQL 4.3.0.4
-- ---------------------------------------
-- Host      : 10.10.10.11
-- Database  : instituto
-- Version   : PostgreSQL 8.1.11 on i686-redhat-linux-gnu, compiled by GCC gcc (GCC) 4.1.2 20070626 (Red Hat 4.1.2-14)


--
-- Definition for language plpgsql (OID = 16387) : 
--
CREATE TRUSTED PROCEDURAL LANGUAGE plpgsql
   HANDLER "plpgsql_call_handler"
;
SET check_function_bodies = false;
--
-- Structure for table alumnos (OID = 16388) : 
--
SET search_path = public, pg_catalog;
CREATE TABLE public.alumnos (
    alu_id integer NOT NULL,
    alu_pat character varying(30),
    alu_mat character varying(30),
    alu_nom character varying(30),
    alu_fna date,
    alu_tel character varying(20),
    alu_dir character varying(50),
    alu_mail character varying(50)
) WITHOUT OIDS;
--
-- Structure for table cursos (OID = 16390) : 
--
CREATE TABLE public.cursos (
    cursos_id integer NOT NULL,
    cursos_cod character varying(5),
    cursos_nom character varying(30)
) WITHOUT OIDS;
--
-- Definition for sequence cursos_cursos_id_seq (OID = 16392) : 
--
CREATE SEQUENCE public.cursos_cursos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table cursos_notas (OID = 16394) : 
--
CREATE TABLE public.cursos_notas (
    curno_id integer NOT NULL,
    curno_cur integer,
    curno_alu integer,
    curno_n1 integer DEFAULT 0 NOT NULL,
    curno_n2 integer DEFAULT 0 NOT NULL,
    curno_n3 integer DEFAULT 0 NOT NULL,
    curno_n4 integer DEFAULT 0 NOT NULL,
    curno_cond character varying(20),
    curno_mail boolean DEFAULT false
) WITHOUT OIDS;
--
-- Definition for sequence cursos_notas_curno_id_seq (OID = 16401) : 
--
CREATE SEQUENCE public.cursos_notas_curno_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for view rep_notas (OID = 16403) : 
--
CREATE VIEW public.rep_notas AS
SELECT cursos.cursos_id, cursos.cursos_nom, alumnos.alu_id,
    alumnos.alu_pat, alumnos.alu_mat, alumnos.alu_nom, alumnos.alu_mail,
    cursos_notas.curno_n1, cursos_notas.curno_n2, cursos_notas.curno_n3,
    cursos_notas.curno_n4, cursos_notas.curno_cond, cursos_notas.curno_mail
FROM ((cursos JOIN cursos_notas ON ((cursos.cursos_id =
    cursos_notas.curno_cur))) JOIN alumnos ON ((cursos_notas.curno_alu =
    alumnos.alu_id)));

--
-- Structure for table usuarios (OID = 16406) : 
--
CREATE TABLE public.usuarios (
    user_id integer NOT NULL,
    user_nom character varying(30),
    user_pass character varying(20),
    user_cod character varying(10)
) WITHOUT OIDS;
--
-- Data for table public.alumnos (OID = 16388) (LIMIT 0,5)
--
INSERT INTO alumnos (alu_id, alu_pat, alu_mat, alu_nom, alu_fna, alu_tel, alu_dir, alu_mail)
VALUES (1, 'Bustamante', 'Rivero', 'Jorge', '1978-05-11', '5747158', 'Jr Mariano Carranza 452 Lince', 'jbustamante@comsa.com');

INSERT INTO alumnos (alu_id, alu_pat, alu_mat, alu_nom, alu_fna, alu_tel, alu_dir, alu_mail)
VALUES (2, 'Solis', 'Gonzales', 'Maria', '1980-08-11', '99856985', 'Av Peru 1978 San Martin de Porres', 'msolis@peru.com');

INSERT INTO alumnos (alu_id, alu_pat, alu_mat, alu_nom, alu_fna, alu_tel, alu_dir, alu_mail)
VALUES (3, 'Toribio', 'Vega', 'Ricardo', '1990-11-01', '2253652', 'Asoc Los Lirios 154 Lima', 'ricardo1458@hotmail.com');

INSERT INTO alumnos (alu_id, alu_pat, alu_mat, alu_nom, alu_fna, alu_tel, alu_dir, alu_mail)
VALUES (4, 'Vega', 'Melgarejo', 'Juan', '1974-06-14', '33600312', 'Av Universitario 789 Comas', 'juan_unac@hotmail.com');

INSERT INTO alumnos (alu_id, alu_pat, alu_mat, alu_nom, alu_fna, alu_tel, alu_dir, alu_mail)
VALUES (5, 'Salas', 'Mejia', 'Josefina', '1986-09-11', '99856852', 'Av central 584 San Isidro', 'joseSalas@gmail.com');

--
-- Data for table public.cursos (OID = 16390) (LIMIT 0,3)
--
INSERT INTO cursos (cursos_id, cursos_cod, cursos_nom)
VALUES (1, 'COM01', 'Java');

INSERT INTO cursos (cursos_id, cursos_cod, cursos_nom)
VALUES (2, 'COM02', 'Linux');

INSERT INTO cursos (cursos_id, cursos_cod, cursos_nom)
VALUES (3, 'COM03', 'Redes y Conectividad');

--
-- Data for table public.cursos_notas (OID = 16394) (LIMIT 0,8)
--
INSERT INTO cursos_notas (curno_id, curno_cur, curno_alu, curno_n1, curno_n2, curno_n3, curno_n4, curno_cond, curno_mail)
VALUES (3, 1, 4, 20, 12, 15, 19, NULL, false);

INSERT INTO cursos_notas (curno_id, curno_cur, curno_alu, curno_n1, curno_n2, curno_n3, curno_n4, curno_cond, curno_mail)
VALUES (4, 1, 5, 18, 9, 10, 14, NULL, false);

INSERT INTO cursos_notas (curno_id, curno_cur, curno_alu, curno_n1, curno_n2, curno_n3, curno_n4, curno_cond, curno_mail)
VALUES (5, 2, 2, 11, 18, 17, 12, NULL, false);

INSERT INTO cursos_notas (curno_id, curno_cur, curno_alu, curno_n1, curno_n2, curno_n3, curno_n4, curno_cond, curno_mail)
VALUES (1, 1, 1, 8, 12, 11, 17, NULL, false);

INSERT INTO cursos_notas (curno_id, curno_cur, curno_alu, curno_n1, curno_n2, curno_n3, curno_n4, curno_cond, curno_mail)
VALUES (2, 1, 2, 14, 11, 6, 13, NULL, false);

INSERT INTO cursos_notas (curno_id, curno_cur, curno_alu, curno_n1, curno_n2, curno_n3, curno_n4, curno_cond, curno_mail)
VALUES (6, 2, 4, 11, 18, 17, 19, NULL, false);

INSERT INTO cursos_notas (curno_id, curno_cur, curno_alu, curno_n1, curno_n2, curno_n3, curno_n4, curno_cond, curno_mail)
VALUES (7, 2, 5, 8, 4, 11, 10, NULL, false);

INSERT INTO cursos_notas (curno_id, curno_cur, curno_alu, curno_n1, curno_n2, curno_n3, curno_n4, curno_cond, curno_mail)
VALUES (8, 3, 1, 16, 8, 17, 16, NULL, false);

--
-- Data for table public.usuarios (OID = 16406) (LIMIT 0,2)
--
INSERT INTO usuarios (user_id, user_nom, user_pass, user_cod)
VALUES (1, 'cperez', 'CARLOS ANDRES PEREZ', '123456');

INSERT INTO usuarios (user_id, user_nom, user_pass, user_cod)
VALUES (2, 'vvelazquez', 'VICTORIA VELASQUEZ', '123456');

--
-- Definition for index alumnos_pkey (OID = 24576) : 
--
ALTER TABLE ONLY alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (alu_id);
--
-- Definition for index cursos_pkey (OID = 24578) : 
--
ALTER TABLE ONLY cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (cursos_id);
--
-- Definition for index usuarios_pkey (OID = 24580) : 
--
ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (user_id);
--
-- Definition for index cursos_notas_pkey (OID = 24582) : 
--
ALTER TABLE ONLY cursos_notas
    ADD CONSTRAINT cursos_notas_pkey PRIMARY KEY (curno_id);
--
-- Data for sequence public.cursos_cursos_id_seq (OID = 16392)
--
SELECT pg_catalog.setval('cursos_cursos_id_seq', 1, false);
--
-- Data for sequence public.cursos_notas_curno_id_seq (OID = 16401)
--
SELECT pg_catalog.setval('cursos_notas_curno_id_seq', 1, false);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'Standard public schema';
