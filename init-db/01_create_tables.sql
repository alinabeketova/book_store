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

-- Таблица издательств
CREATE TABLE IF NOT EXISTS public.publisher (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    name varchar(255) NOT NULL,
    address varchar(255) NULL,
    phone varchar(20) NULL,
    email varchar(100) NULL,
    website varchar(255) NULL,
    status_id int4 NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT publisher_pkey PRIMARY KEY (id),
    CONSTRAINT publisher_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status(id)
);

-- Таблица авторов
CREATE TABLE IF NOT EXISTS public.author (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    full_name varchar(100) NOT NULL,
    biography text NULL,
    birth_date date NULL,
    death_date date NULL,
    status_id int4 NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT author_pkey PRIMARY KEY (id),
    CONSTRAINT author_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status(id)
);

-- Таблица жанров
CREATE TABLE IF NOT EXISTS public.genre (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    name varchar(50) NOT NULL,
    description text NULL,
    status_id int4 NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT genre_pkey PRIMARY KEY (id),
    CONSTRAINT genre_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status(id)
);

-- Таблица книг
CREATE TABLE IF NOT EXISTS public.book (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    isbn varchar(20) NOT NULL,
    title varchar(500) NOT NULL,
    description text NULL,
    publication_year int4 NULL,
    pages int4 NULL,
    cover_type varchar(50) NULL,
    weight float4 NULL,
    dimensions varchar(50) NULL,
    language varchar(50) NULL,
    publisher_id int4 NOT NULL,
    price numeric(10,2) NOT NULL,
    discount numeric(5,2) NULL DEFAULT 0,
    quantity_in_stock int4 NOT NULL DEFAULT 0,
    min_quantity int4 NOT NULL DEFAULT 5,
    status_id int4 NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT book_pkey PRIMARY KEY (id),
    CONSTRAINT book_isbn_key UNIQUE (isbn),
    CONSTRAINT book_price_check CHECK (price >= 0),
    CONSTRAINT book_discount_check CHECK (discount >= 0 AND discount <= 100),
    CONSTRAINT book_quantity_check CHECK (quantity_in_stock >= 0),
    CONSTRAINT book_publisher_id_fkey FOREIGN KEY (publisher_id) REFERENCES public.publisher(id),
    CONSTRAINT book_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status(id)
);

-- Таблица связи книг и авторов
CREATE TABLE IF NOT EXISTS public.book_author (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    book_id int4 NOT NULL,
    author_id int4 NOT NULL,
    is_main_author boolean NOT NULL DEFAULT true,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT book_author_pkey PRIMARY KEY (id),
    CONSTRAINT book_author_book_id_author_id_key UNIQUE (book_id, author_id),
    CONSTRAINT book_author_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book(id),
    CONSTRAINT book_author_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.author(id)
);

-- Таблица связи книг и жанров
CREATE TABLE IF NOT EXISTS public.book_genre (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    book_id int4 NOT NULL,
    genre_id int4 NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT book_genre_pkey PRIMARY KEY (id),
    CONSTRAINT book_genre_book_id_genre_id_key UNIQUE (book_id, genre_id),
    CONSTRAINT book_genre_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book(id),
    CONSTRAINT book_genre_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id)
);

-- Таблица заказов
CREATE TABLE IF NOT EXISTS public.order (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    order_number varchar(50) NOT NULL,
    user_id int4 NOT NULL,
    total_amount numeric(10,2) NOT NULL,
    discount_amount numeric(10,2) NULL DEFAULT 0,
    final_amount numeric(10,2) NOT NULL,
    delivery_address varchar(255) NOT NULL,
    contact_phone varchar(20) NOT NULL,
    note text NULL,
    status_id int4 NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date timestamp NULL,
    CONSTRAINT order_pkey PRIMARY KEY (id),
    CONSTRAINT order_order_number_key UNIQUE (order_number),
    CONSTRAINT order_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id),
    CONSTRAINT order_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status(id)
);

-- Таблица элементов заказа
CREATE TABLE IF NOT EXISTS public.order_item (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    order_id int4 NOT NULL,
    book_id int4 NOT NULL,
    quantity int4 NOT NULL,
    unit_price numeric(10,2) NOT NULL,
    discount numeric(5,2) NULL DEFAULT 0,
    total_price numeric(10,2) NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT order_item_pkey PRIMARY KEY (id),
    CONSTRAINT order_item_quantity_check CHECK (quantity > 0),
    CONSTRAINT order_item_unit_price_check CHECK (unit_price >= 0),
    CONSTRAINT order_item_order_id_fkey FOREIGN KEY (order_id) REFERENCES public."order"(id),
    CONSTRAINT order_item_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book(id)
);

-- Таблица отзывов
CREATE TABLE IF NOT EXISTS public.review (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    user_id int4 NOT NULL,
    book_id int4 NOT NULL,
    rating int4 NOT NULL,
    comment text NULL,
    status_id int4 NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date timestamp NULL,
    CONSTRAINT review_pkey PRIMARY KEY (id),
    CONSTRAINT review_rating_check CHECK (rating >= 1 AND rating <= 5),
    CONSTRAINT review_user_id_book_id_key UNIQUE (user_id, book_id),
    CONSTRAINT review_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id),
    CONSTRAINT review_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book(id),
    CONSTRAINT review_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status(id)
);

-- Таблица корзины покупок
CREATE TABLE IF NOT EXISTS public.cart (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    user_id int4 NOT NULL,
    book_id int4 NOT NULL,
    quantity int4 NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date timestamp NULL,
    CONSTRAINT cart_pkey PRIMARY KEY (id),
    CONSTRAINT cart_quantity_check CHECK (quantity > 0),
    CONSTRAINT cart_user_id_book_id_key UNIQUE (user_id, book_id),
    CONSTRAINT cart_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id),
    CONSTRAINT cart_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book(id)
);

-- Таблица промокодов/скидок
CREATE TABLE IF NOT EXISTS public.promo_code (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    code varchar(50) NOT NULL,
    description varchar(255) NULL,
    discount_type varchar(10) NOT NULL,
    discount_value numeric(10,2) NOT NULL,
    min_order_amount numeric(10,2) NULL,
    max_discount_amount numeric(10,2) NULL,
    valid_from timestamp NOT NULL,
    valid_to timestamp NOT NULL,
    usage_limit int4 NULL,
    used_count int4 NOT NULL DEFAULT 0,
    status_id int4 NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT promo_code_pkey PRIMARY KEY (id),
    CONSTRAINT promo_code_code_key UNIQUE (code),
    CONSTRAINT promo_code_discount_type_check CHECK (discount_type IN ('percent', 'fixed')),
    CONSTRAINT promo_code_discount_value_check CHECK (discount_value > 0),
    CONSTRAINT promo_code_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status(id)
);

-- Таблица использования промокодов
CREATE TABLE IF NOT EXISTS public.promo_code_usage (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    promo_code_id int4 NOT NULL,
    user_id int4 NOT NULL,
    order_id int4 NOT NULL,
    discount_applied numeric(10,2) NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT promo_code_usage_pkey PRIMARY KEY (id),
    CONSTRAINT promo_code_usage_order_id_key UNIQUE (order_id),
    CONSTRAINT promo_code_usage_promo_code_id_user_id_key UNIQUE (promo_code_id, user_id),
    CONSTRAINT promo_code_usage_promo_code_id_fkey FOREIGN KEY (promo_code_id) REFERENCES public.promo_code(id),
    CONSTRAINT promo_code_usage_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id),
    CONSTRAINT promo_code_usage_order_id_fkey FOREIGN KEY (order_id) REFERENCES public."order"(id)
);

-- Таблица избранных товаров
CREATE TABLE IF NOT EXISTS public.wishlist (
    id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
    user_id int4 NOT NULL,
    book_id int4 NOT NULL,
    create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT wishlist_pkey PRIMARY KEY (id),
    CONSTRAINT wishlist_user_id_book_id_key UNIQUE (user_id, book_id),
    CONSTRAINT wishlist_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id),
    CONSTRAINT wishlist_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book(id)
);