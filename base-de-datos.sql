-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://github.com/pgadmin-org/pgadmin4/issues/new/choose if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS tienda_ropa.clientes
(
    id integer NOT NULL DEFAULT nextval('tienda_ropa.usuario_id_seq'::regclass),
    nombre character varying(50) COLLATE pg_catalog."default",
    correo character varying(50) COLLATE pg_catalog."default",
    contacto numeric(10, 0),
    CONSTRAINT usuario_pkey PRIMARY KEY (id)
);
END;