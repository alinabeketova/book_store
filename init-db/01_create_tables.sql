CREATE TABLE IF NOT EXISTS public.status (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	"name" varchar(100) NOT NULL,
	note varchar(255) NULL,
	CONSTRAINT status_pkey PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS public."role" (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	name varchar(255) NOT NULL,
	note varchar(255) NULL,
	status_id int4 NOT NULL,
	create_date timestamp NOT NULL,
	CONSTRAINT role_pkey PRIMARY KEY (id),
	CONSTRAINT role_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status(id)
);
CREATE TABLE IF NOT EXISTS public."user" (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	first_name varchar(20) NOT NULL,
	middle_name varchar(20) NULL,
	last_name varchar(20) NOT NULL,
	date_of_birth date NOT NULL,
	address varchar(100) NULL,
	email varchar(100) NOT NULL,
	passport_number varchar(10) NOT NULL,
	"password" varchar(255) NOT NULL,
	CONSTRAINT user_email_key UNIQUE (email),
	CONSTRAINT user_pkey PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS public.user_role (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	user_id int4 NOT NULL,
	role_id int4 NOT NULL,
	create_date timestamp NOT NULL,
	CONSTRAINT user_role_pkey PRIMARY KEY (id),
	CONSTRAINT user_role_user_id_role_id_key UNIQUE (user_id, role_id),
	CONSTRAINT user_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public."role"(id),
	CONSTRAINT user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id)
);