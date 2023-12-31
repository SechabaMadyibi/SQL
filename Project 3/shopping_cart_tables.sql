-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.cart_table
(
    product_id bigint NOT NULL,
    qty bigint,
    CONSTRAINT cart_table_pkey PRIMARY KEY (product_id)
);

CREATE TABLE IF NOT EXISTS public.order_details
(
    order_id bigint NOT NULL,
    product_id bigint,
    qty bigint,
);

CREATE TABLE IF NOT EXISTS public.order_header
(
    order_id bigserial NOT NULL DEFAULT nextval('order_header_order_id_seq'::regclass),
    users bigint,
    orderdate timestamp,
    CONSTRAINT order_header_pkey PRIMARY KEY (order_id)
);

CREATE TABLE IF NOT EXISTS public.products_menu_table
(
    id bigserial NOT NULL DEFAULT nextval('products_menu_table_id_seq'::regclass),
    name text COLLATE pg_catalog."default",
    price text COLLATE pg_catalog."default",
    CONSTRAINT products_menu_table_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.users_table
(
    id bigserial NOT NULL DEFAULT nextval('users_table_id_seq'::regclass),
    name text COLLATE pg_catalog."default",
    CONSTRAINT users_table_pkey PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.cart_table
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) ;
    REFERENCES public.products_menu_table (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS cart_table_pkey
    ON public.cart_table(product_id);


ALTER TABLE IF EXISTS public.order_details
    ADD CONSTRAINT order_id FOREIGN KEY (order_id) 
    REFERENCES public.order_header (order_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS order_details_pkey
    ON public.order_details(order_id);


ALTER TABLE IF EXISTS public.order_details
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) 
    REFERENCES public.cart_table (product_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.order_header
    ADD CONSTRAINT users FOREIGN KEY (users)
    REFERENCES public.users_table (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;