-- Заполнение таблицы status
INSERT INTO public.status (name, note)
SELECT 'Активный', 'Запись активна'
WHERE NOT EXISTS (SELECT 1 FROM public.status WHERE name = 'Активный');

INSERT INTO public.status (name, note)
SELECT 'Неактивный', 'Запись неактивна'
WHERE NOT EXISTS (SELECT 1 FROM public.status WHERE name = 'Неактивный');

INSERT INTO public.status (name, note)
SELECT 'Архивный', 'Запись в архиве'
WHERE NOT EXISTS (SELECT 1 FROM public.status WHERE name = 'Архивный');

-- Заполнение таблицы role
INSERT INTO public.role (name, note, status_id, create_date)
SELECT 'Администратор', 'Полные права доступа', 1, '2024-01-15 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.role WHERE name = 'Администратор');

INSERT INTO public.role (name, note, status_id, create_date)
SELECT 'Менеджер', 'Управление пользователями', 1, '2024-01-15 10:05:00'
WHERE NOT EXISTS (SELECT 1 FROM public.role WHERE name = 'Менеджер');

INSERT INTO public.role (name, note, status_id, create_date)
SELECT 'Пользователь', 'Базовые права', 1, '2024-01-15 10:10:00'
WHERE NOT EXISTS (SELECT 1 FROM public.role WHERE name = 'Пользователь');

INSERT INTO public.role (name, note, status_id, create_date)
SELECT 'Гость', 'Ограниченный доступ', 2, '2024-01-15 10:15:00'
WHERE NOT EXISTS (SELECT 1 FROM public.role WHERE name = 'Гость');

INSERT INTO public.role (name, note, status_id, create_date)
SELECT 'Аналитик', 'Аналитика данных', 1, '2024-01-15 10:20:00'
WHERE NOT EXISTS (SELECT 1 FROM public.role WHERE name = 'Аналитик');

-- Заполнение таблицы user
INSERT INTO public.user (first_name, middle_name, last_name, date_of_birth, address, email, passport_number, password)
SELECT 'Иван', 'Иванович', 'Иванов', '1985-05-15', 'ул. Ленина, д. 10, кв. 5', 'ivanov@mail.ru', '4501123456', '$2b$12$mP2AvmctUyZ/N/wyB//NBerugokLHJxCSwXzOz/bdkONKh7q8q13e'
WHERE NOT EXISTS (SELECT 1 FROM public.user WHERE email = 'ivanov@mail.ru');

INSERT INTO public.user (first_name, middle_name, last_name, date_of_birth, address, email, passport_number, password)
SELECT 'Петр', 'Петрович', 'Петров', '1990-08-22', 'ул. Пушкина, д. 25', 'petrov@mail.ru', '4501654321', '$2b$12$mP2AvmctUyZ/N/wyB//NBerugokLHJxCSwXzOz/bdkONKh7q8q13e'
WHERE NOT EXISTS (SELECT 1 FROM public.user WHERE email = 'petrov@mail.ru');

INSERT INTO public.user (first_name, middle_name, last_name, date_of_birth, address, email, passport_number, password)
SELECT 'Анна', 'Сергеевна', 'Сидорова', '1992-03-10', 'ул. Гагарина, д. 15, кв. 12', 'sidorova@mail.ru', '4501789456', '$2b$12$mP2AvmctUyZ/N/wyB//NBerugokLHJxCSwXzOz/bdkONKh7q8q13e'
WHERE NOT EXISTS (SELECT 1 FROM public.user WHERE email = 'sidorova@mail.ru');

INSERT INTO public.user (first_name, middle_name, last_name, date_of_birth, address, email, passport_number, password)
SELECT 'Мария', 'Александровна', 'Кузнецова', '1988-11-30', 'ул. Советская, д. 8', 'kuznetsova@mail.ru', '4501123789', '$2b$12$mP2AvmctUyZ/N/wyB//NBerugokLHJxCSwXzOz/bdkONKh7q8q13e'
WHERE NOT EXISTS (SELECT 1 FROM public.user WHERE email = 'kuznetsova@mail.ru');

INSERT INTO public.user (first_name, middle_name, last_name, date_of_birth, address, email, passport_number, password)
SELECT 'Сергей', 'Дмитриевич', 'Смирнов', '1983-07-18', 'ул. Мира, д. 33, кв. 7', 'smirnov@mail.ru', '4501456123', '$2b$12$mP2AvmctUyZ/N/wyB//NBerugokLHJxCSwXzOz/bdkONKh7q8q13e'
WHERE NOT EXISTS (SELECT 1 FROM public.user WHERE email = 'smirnov@mail.ru');

INSERT INTO public.user (first_name, middle_name, last_name, date_of_birth, address, email, passport_number, password)
SELECT 'Ольга', 'Викторовна', 'Попова', '1995-02-25', 'ул. Центральная, д. 1', 'popova@mail.ru', '4501890123', '$2b$12$mP2AvmctUyZ/N/wyB//NBerugokLHJxCSwXzOz/bdkONKh7q8q13e'
WHERE NOT EXISTS (SELECT 1 FROM public.user WHERE email = 'popova@mail.ru');

INSERT INTO public.user (first_name, middle_name, last_name, date_of_birth, address, email, passport_number, password)
SELECT 'Дмитрий', 'Алексеевич', 'Васильев', '1991-09-14', 'ул. Лесная, д. 45, кв. 3', 'vasilev@mail.ru', '4501234567', '$2b$12$mP2AvmctUyZ/N/wyB//NBerugokLHJxCSwXzOz/bdkONKh7q8q13e'
WHERE NOT EXISTS (SELECT 1 FROM public.user WHERE email = 'vasilev@mail.ru');

INSERT INTO public.user (first_name, middle_name, last_name, date_of_birth, address, email, passport_number, password)
SELECT 'Елена', 'Николаевна', 'Новикова', '1987-12-05', 'ул. Садовая, д. 20', 'novikova@mail.ru', '4501345678', '$2b$12$mP2AvmctUyZ/N/wyB//NBerugokLHJxCSwXzOz/bdkONKh7q8q13e'
WHERE NOT EXISTS (SELECT 1 FROM public.user WHERE email = 'novikova@mail.ru');

INSERT INTO public.user (first_name, middle_name, last_name, date_of_birth, address, email, passport_number, password)
SELECT 'Алексей', 'Владимирович', 'Федоров', '1993-06-20', 'ул. Школьная, д. 11, кв. 9', 'fedorov@mail.ru', '4501567890', '$2b$12$mP2AvmctUyZ/N/wyB//NBerugokLHJxCSwXzOz/bdkONKh7q8q13e'
WHERE NOT EXISTS (SELECT 1 FROM public.user WHERE email = 'fedorov@mail.ru');

INSERT INTO public.user (first_name, middle_name, last_name, date_of_birth, address, email, passport_number, password)
SELECT 'Наталья', 'Игоревна', 'Морозова', '1994-04-12', 'ул. Парковая, д. 5', 'morozova@mail.ru', '4501678901', '$2b$12$mP2AvmctUyZ/N/wyB//NBerugokLHJxCSwXzOz/bdkONKh7q8q13e'
WHERE NOT EXISTS (SELECT 1 FROM public.user WHERE email = 'morozova@mail.ru');

-- Заполнение таблицы user_role
INSERT INTO public.user_role (user_id, role_id, create_date)
SELECT 1, 1, '2024-01-16 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.user_role WHERE user_id = 1 AND role_id = 1);

INSERT INTO public.user_role (user_id, role_id, create_date)
SELECT 1, 2, '2024-01-16 09:05:00'
WHERE NOT EXISTS (SELECT 1 FROM public.user_role WHERE user_id = 1 AND role_id = 2);

INSERT INTO public.user_role (user_id, role_id, create_date)
SELECT 2, 2, '2024-01-16 09:10:00'
WHERE NOT EXISTS (SELECT 1 FROM public.user_role WHERE user_id = 2 AND role_id = 2);

INSERT INTO public.user_role (user_id, role_id, create_date)
SELECT 3, 3, '2024-01-16 09:15:00'
WHERE NOT EXISTS (SELECT 1 FROM public.user_role WHERE user_id = 3 AND role_id = 3);

INSERT INTO public.user_role (user_id, role_id, create_date)
SELECT 4, 3, '2024-01-16 09:20:00'
WHERE NOT EXISTS (SELECT 1 FROM public.user_role WHERE user_id = 4 AND role_id = 3);

INSERT INTO public.user_role (user_id, role_id, create_date)
SELECT 5, 4, '2024-01-16 09:25:00'
WHERE NOT EXISTS (SELECT 1 FROM public.user_role WHERE user_id = 5 AND role_id = 4);

INSERT INTO public.user_role (user_id, role_id, create_date)
SELECT 6, 5, '2024-01-16 09:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.user_role WHERE user_id = 6 AND role_id = 5);


-- Заполнение таблицы publisher (издательства)
INSERT INTO public.publisher (name, address, phone, email, website, status_id, create_date)
SELECT 'Эксмо', 'ул. Зорге, д. 1, Москва', '+7 (495) 411-68-86', 'info@eksmo.ru', 'https://eksmo.ru', 1, '2023-01-10 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.publisher WHERE name = 'Эксмо');

INSERT INTO public.publisher (name, address, phone, email, website, status_id, create_date)
SELECT 'АСТ', 'ул. Правды, д. 8, Москва', '+7 (495) 777-02-50', 'ast@ast.ru', 'https://ast.ru', 1, '2023-01-12 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.publisher WHERE name = 'АСТ');

INSERT INTO public.publisher (name, address, phone, email, website, status_id, create_date)
SELECT 'Питер', 'пр. Медиков, д. 5, Санкт-Петербург', '+7 (812) 703-73-73', 'books@piter.com', 'https://piter.com', 1, '2023-01-15 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.publisher WHERE name = 'Питер');

INSERT INTO public.publisher (name, address, phone, email, website, status_id, create_date)
SELECT 'Манн, Иванов и Фербер', 'ул. Шаболовка, д. 34, Москва', '+7 (495) 268-05-45', 'order@mann-ivanov-ferber.ru', 'https://mann-ivanov-ferber.ru', 1, '2023-01-18 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.publisher WHERE name = 'Манн, Иванов и Фербер');

-- Заполнение таблицы author (4 автора)
INSERT INTO public.author (full_name, biography, birth_date, death_date, status_id, create_date)
SELECT 'Лев Николаевич Толстой', 'Русский писатель, мыслитель, философ и публицист. Классик мировой литературы.', '1828-08-28', '1910-11-07', 1, '2023-01-20 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.author WHERE full_name = 'Лев Николаевич Толстой');

INSERT INTO public.author (full_name, biography, birth_date, death_date, status_id, create_date)
SELECT 'Федор Достоевский', 'Русский писатель, мыслитель, философ и публицист. Классик мировой литературы.', '1821-10-30', '1881-01-28', 1, '2023-01-21 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.author WHERE full_name = 'Федор Достоевский');

INSERT INTO public.author (full_name, biography, birth_date, death_date, status_id, create_date)
SELECT 'Антон Павлович Чехов', 'Русский писатель, прозаик, драматург. Классик мировой литературы.', '1860-01-17', '1904-07-02', 1, '2023-01-22 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.author WHERE full_name = 'Антон Павлович Чехов');

INSERT INTO public.author (full_name, biography, birth_date, death_date, status_id, create_date)
SELECT 'Джордж Оруэлл', 'Британский писатель и публицист. Известен своими антиутопическими произведениями.', '1903-06-25', '1950-01-21', 1, '2023-01-23 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.author WHERE full_name = 'Джордж Оруэлл');

-- Заполнение таблицы genre (10 жанров)
INSERT INTO public.genre (name, description, status_id, create_date)
SELECT 'Роман', 'Большое повествовательное произведение в прозе, иногда в стихах, имеющее сложный сюжет.', 1, '2023-01-25 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.genre WHERE name = 'Роман');

INSERT INTO public.genre (name, description, status_id, create_date)
SELECT 'Фантастика', 'Жанр в литературе, кино и других видах искусства, описывающий вымышленные события и технологии.', 1, '2023-01-25 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.genre WHERE name = 'Фантастика');

INSERT INTO public.genre (name, description, status_id, create_date)
SELECT 'Детектив', 'Жанр, описывающий процесс исследования загадочного происшествия с целью выявления его обстоятельств.', 1, '2023-01-25 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.genre WHERE name = 'Детектив');

INSERT INTO public.genre (name, description, status_id, create_date)
SELECT 'Исторический', 'Произведения, действие которых происходит в прошлом, часто с использованием реальных исторических событий.', 1, '2023-01-25 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.genre WHERE name = 'Исторический');

INSERT INTO public.genre (name, description, status_id, create_date)
SELECT 'Психологический', 'Жанр, сосредоточенный на внутренних переживаниях персонажей, их мыслях и чувствах.', 1, '2023-01-25 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.genre WHERE name = 'Психологический');

INSERT INTO public.genre (name, description, status_id, create_date)
SELECT 'Антиутопия', 'Жанр, описывающий общество, в котором попытка построить идеальный мир привела к катастрофе.', 1, '2023-01-25 15:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.genre WHERE name = 'Антиутопия');

INSERT INTO public.genre (name, description, status_id, create_date)
SELECT 'Рассказ', 'Небольшое прозаическое произведение с простым сюжетом и малым количеством персонажей.', 1, '2023-01-25 16:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.genre WHERE name = 'Рассказ');

INSERT INTO public.genre (name, description, status_id, create_date)
SELECT 'Классическая литература', 'Произведения, признанные образцовыми в мировой литературе.', 1, '2023-01-25 17:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.genre WHERE name = 'Классическая литература');

INSERT INTO public.genre (name, description, status_id, create_date)
SELECT 'Философский', 'Произведения, затрагивающие фундаментальные вопросы бытия, познания, ценностей.', 1, '2023-01-25 18:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.genre WHERE name = 'Философский');

INSERT INTO public.genre (name, description, status_id, create_date)
SELECT 'Приключения', 'Жанр, повествующий о путешествиях, неожиданных событиях и опасностях.', 1, '2023-01-25 19:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.genre WHERE name = 'Приключения');

-- Заполнение таблицы book (20 книг)
INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-699-12014-7', 'Война и мир', 'Эпический роман Льва Толстого, описывающий русское общество в эпоху войн против Наполеона.', 2020, 1225, 'твердая', 1.5, '21x14x5', 'Русский', 1, 1200.00, 10.00, 25, 5, 1, '2023-02-01 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-699-12014-7');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-17-090436-9', 'Анна Каренина', 'Роман о трагической любви замужней женщины к блестящему офицеру.', 2019, 864, 'твердая', 1.2, '20x13x4', 'Русский', 2, 950.00, 5.00, 30, 5, 1, '2023-02-02 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-17-090436-9');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-04-103497-2', 'Преступление и наказание', 'Роман о бывшем студенте Родионе Раскольникове, совершившем убийство.', 2021, 672, 'твердая', 0.9, '18x12x3', 'Русский', 1, 850.00, 0.00, 40, 5, 1, '2023-02-03 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-04-103497-2');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-17-087888-2', 'Идиот', 'Роман о князе Мышкине, добром и простодушном человеке в жестоком обществе.', 2020, 640, 'мягкая', 0.8, '17x11x3', 'Русский', 2, 750.00, 15.00, 20, 5, 1, '2023-02-04 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-17-087888-2');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-17-090625-7', 'Братья Карамазовы', 'Последний роман Достоевского, философское произведение о вере и безверии.', 2022, 832, 'твердая', 1.1, '21x14x4', 'Русский', 2, 1100.00, 0.00, 35, 5, 1, '2023-02-05 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-17-090625-7');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-04-106048-3', 'Вишневый сад', 'Пьеса о гибели дворянского гнезда и продаже имения с вишневым садом.', 2021, 96, 'мягкая', 0.2, '16x10x1', 'Русский', 1, 300.00, 0.00, 50, 5, 1, '2023-02-06 15:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-04-106048-3');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-17-105533-5', 'Чайка', 'Пьеса о любви, искусстве и человеческих отношениях.', 2019, 80, 'мягкая', 0.18, '16x10x1', 'Русский', 2, 280.00, 10.00, 45, 5, 1, '2023-02-07 16:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-17-105533-5');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-699-98358-3', 'Дама с собачкой', 'Сборник рассказов Чехова о любви и человеческих отношениях.', 2020, 256, 'мягкая', 0.3, '17x11x2', 'Русский', 1, 450.00, 5.00, 60, 5, 1, '2023-02-08 17:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-699-98358-3');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-17-105217-4', '1984', 'Антиутопический роман о тоталитарном обществе под контролем Большого Брата.', 2021, 320, 'твердая', 0.5, '20x13x2', 'Русский', 2, 650.00, 0.00, 55, 5, 1, '2023-02-09 18:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-17-105217-4');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-04-103924-5', 'Скотный двор', 'Политическая сатира в форме сказки о животных на ферме.', 2022, 144, 'твердая', 0.3, '18x12x2', 'Русский', 1, 400.00, 20.00, 40, 5, 1, '2023-02-10 19:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-04-103924-5');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-389-08252-0', 'Воскресение', 'Последний роман Толстого о нравственном возрождении человека.', 2020, 576, 'твердая', 0.8, '20x13x3', 'Русский', 3, 700.00, 0.00, 25, 5, 1, '2023-02-11 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-389-08252-0');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-17-098151-2', 'Казаки', 'Повесть о жизни русского офицера на Кавказе.', 2019, 224, 'мягкая', 0.3, '17x11x2', 'Русский', 2, 380.00, 10.00, 30, 5, 1, '2023-02-12 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-17-098151-2');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-04-104019-7', 'Бесы', 'Роман о революционном движении в России XIX века.', 2021, 736, 'твердая', 1.0, '21x14x4', 'Русский', 1, 900.00, 0.00, 20, 5, 1, '2023-02-13 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-04-104019-7');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-17-090500-7', 'Униженные и оскорбленные', 'Роман о страдающих и обездоленных людях.', 2022, 384, 'мягкая', 0.5, '18x12x2', 'Русский', 2, 520.00, 15.00, 35, 5, 1, '2023-02-14 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-17-090500-7');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-04-108155-8', 'Три сестры', 'Пьеса о мечтах и разочарованиях трех сестер, живущих в провинции.', 2021, 112, 'мягкая', 0.2, '16x10x1', 'Русский', 1, 320.00, 0.00, 50, 5, 1, '2023-02-15 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-04-108155-8');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-17-104798-6', 'Дядя Ваня', 'Пьеса о разочаровании в жизни и несбывшихся надеждах.', 2020, 96, 'мягкая', 0.18, '16x10x1', 'Русский', 2, 290.00, 5.00, 45, 5, 1, '2023-02-16 15:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-17-104798-6');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-699-12015-4', 'Палата №6', 'Повесть о безумии и здравом смысле, о свободе и несвободе.', 2022, 160, 'мягкая', 0.25, '17x11x1', 'Русский', 1, 350.00, 10.00, 40, 5, 1, '2023-02-17 16:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-699-12015-4');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-17-108644-3', 'Дорога на Уиган-Пирс', 'Документальное произведение о жизни рабочих в Англии.', 2021, 256, 'твердая', 0.4, '20x13x2', 'Русский', 2, 580.00, 0.00, 30, 5, 1, '2023-02-18 17:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-17-108644-3');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-04-109683-5', 'Памяти Каталонии', 'Автобиографическая книга о Гражданской войне в Испании.', 2023, 288, 'твердая', 0.45, '20x13x2', 'Русский', 1, 620.00, 20.00, 25, 5, 1, '2023-02-19 18:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-04-109683-5');

INSERT INTO public.book (isbn, title, description, publication_year, pages, cover_type, weight, dimensions, language, publisher_id, price, discount, quantity_in_stock, min_quantity, status_id, create_date)
SELECT '978-5-17-112344-6', 'Во мгле', 'Сборник ранних рассказов Оруэлла.', 2022, 192, 'мягкая', 0.3, '18x12x2', 'Русский', 2, 420.00, 0.00, 35, 5, 1, '2023-02-20 19:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book WHERE isbn = '978-5-17-112344-6');

-- Связи книг и авторов (book_author)
INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 1, 1, true, '2023-02-01 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 1 AND author_id = 1);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 2, 1, true, '2023-02-02 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 2 AND author_id = 1);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 3, 2, true, '2023-02-03 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 3 AND author_id = 2);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 4, 2, true, '2023-02-04 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 4 AND author_id = 2);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 5, 2, true, '2023-02-05 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 5 AND author_id = 2);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 6, 3, true, '2023-02-06 15:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 6 AND author_id = 3);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 7, 3, true, '2023-02-07 16:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 7 AND author_id = 3);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 8, 3, true, '2023-02-08 17:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 8 AND author_id = 3);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 9, 4, true, '2023-02-09 18:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 9 AND author_id = 4);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 10, 4, true, '2023-02-10 19:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 10 AND author_id = 4);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 11, 1, true, '2023-02-11 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 11 AND author_id = 1);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 12, 1, true, '2023-02-12 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 12 AND author_id = 1);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 13, 2, true, '2023-02-13 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 13 AND author_id = 2);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 14, 2, true, '2023-02-14 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 14 AND author_id = 2);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 15, 3, true, '2023-02-15 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 15 AND author_id = 3);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 16, 3, true, '2023-02-16 15:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 16 AND author_id = 3);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 17, 3, true, '2023-02-17 16:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 17 AND author_id = 3);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 18, 4, true, '2023-02-18 17:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 18 AND author_id = 4);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 19, 4, true, '2023-02-19 18:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 19 AND author_id = 4);

INSERT INTO public.book_author (book_id, author_id, is_main_author, create_date)
SELECT 20, 4, true, '2023-02-20 19:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_author WHERE book_id = 20 AND author_id = 4);

-- Связи книг и жанров (book_genre)
-- Для Войны и мира
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 1, 1, '2023-02-01 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 1 AND genre_id = 1);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 1, 4, '2023-02-01 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 1 AND genre_id = 4);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 1, 8, '2023-02-01 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 1 AND genre_id = 8);

-- Для Анны Карениной
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 2, 1, '2023-02-02 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 2 AND genre_id = 1);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 2, 5, '2023-02-02 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 2 AND genre_id = 5);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 2, 8, '2023-02-02 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 2 AND genre_id = 8);

-- Для Преступления и наказания
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 3, 1, '2023-02-03 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 3 AND genre_id = 1);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 3, 3, '2023-02-03 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 3 AND genre_id = 3);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 3, 5, '2023-02-03 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 3 AND genre_id = 5);

-- Для Идиота
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 4, 1, '2023-02-04 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 4 AND genre_id = 1);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 4, 5, '2023-02-04 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 4 AND genre_id = 5);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 4, 9, '2023-02-04 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 4 AND genre_id = 9);

-- Для Братьев Карамазовых
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 5, 1, '2023-02-05 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 5 AND genre_id = 1);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 5, 5, '2023-02-05 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 5 AND genre_id = 5);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 5, 9, '2023-02-05 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 5 AND genre_id = 9);

-- Для Вишневого сада
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 6, 7, '2023-02-06 15:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 6 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 6, 8, '2023-02-06 15:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 6 AND genre_id = 8);

-- Для Чайки
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 7, 7, '2023-02-07 16:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 7 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 7, 8, '2023-02-07 16:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 7 AND genre_id = 8);

-- Для Дамы с собачкой
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 8, 7, '2023-02-08 17:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 8 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 8, 8, '2023-02-08 17:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 8 AND genre_id = 8);

-- Для 1984
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 9, 1, '2023-02-09 18:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 9 AND genre_id = 1);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 9, 2, '2023-02-09 18:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 9 AND genre_id = 2);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 9, 6, '2023-02-09 18:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 9 AND genre_id = 6);

-- Для Скотного двора
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 10, 7, '2023-02-10 19:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 10 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 10, 6, '2023-02-10 19:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 10 AND genre_id = 6);

-- Для Воскресения
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 11, 1, '2023-02-11 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 11 AND genre_id = 1);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 11, 5, '2023-02-11 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 11 AND genre_id = 5);

-- Для Казаков
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 12, 7, '2023-02-12 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 12 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 12, 10, '2023-02-12 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 12 AND genre_id = 10);

-- Для Бесов
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 13, 1, '2023-02-13 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 13 AND genre_id = 1);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 13, 5, '2023-02-13 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 13 AND genre_id = 5);

-- Для Униженных и оскорбленных
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 14, 1, '2023-02-14 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 14 AND genre_id = 1);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 14, 5, '2023-02-14 13:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 14 AND genre_id = 5);

-- Для Трех сестер
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 15, 7, '2023-02-15 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 15 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 15, 8, '2023-02-15 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 15 AND genre_id = 8);

-- Для Дяди Вани
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 16, 7, '2023-02-16 15:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 16 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 16, 8, '2023-02-16 15:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 16 AND genre_id = 8);

-- Для Палаты №6
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 17, 7, '2023-02-17 16:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 17 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 17, 5, '2023-02-17 16:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 17 AND genre_id = 5);

-- Для Дороги на Уиган-Пирс
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 18, 7, '2023-02-18 17:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 18 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 18, 4, '2023-02-18 17:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 18 AND genre_id = 4);

-- Для Памяти Каталонии
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 19, 7, '2023-02-19 18:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 19 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 19, 4, '2023-02-19 18:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 19 AND genre_id = 4);

-- Для Во мгле
INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 20, 7, '2023-02-20 19:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 20 AND genre_id = 7);

INSERT INTO public.book_genre (book_id, genre_id, create_date)
SELECT 20, 2, '2023-02-20 19:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.book_genre WHERE book_id = 20 AND genre_id = 2);

-- Заполнение таблицы cart (корзины)
INSERT INTO public.cart (user_id, book_id, quantity, create_date, update_date)
SELECT 3, 1, 1, '2024-03-01 14:30:00', '2024-03-01 14:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.cart WHERE user_id = 3 AND book_id = 1);

INSERT INTO public.cart (user_id, book_id, quantity, create_date, update_date)
SELECT 3, 3, 2, '2024-03-01 14:35:00', '2024-03-01 14:35:00'
WHERE NOT EXISTS (SELECT 1 FROM public.cart WHERE user_id = 3 AND book_id = 3);

INSERT INTO public.cart (user_id, book_id, quantity, create_date, update_date)
SELECT 4, 2, 1, '2024-03-02 10:15:00', '2024-03-02 10:15:00'
WHERE NOT EXISTS (SELECT 1 FROM public.cart WHERE user_id = 4 AND book_id = 2);

INSERT INTO public.cart (user_id, book_id, quantity, create_date, update_date)
SELECT 4, 9, 1, '2024-03-02 10:20:00', '2024-03-03 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.cart WHERE user_id = 4 AND book_id = 9);

INSERT INTO public.cart (user_id, book_id, quantity, create_date, update_date)
SELECT 4, 10, 3, '2024-03-02 10:25:00', '2024-03-02 10:25:00'
WHERE NOT EXISTS (SELECT 1 FROM public.cart WHERE user_id = 4 AND book_id = 10);

INSERT INTO public.cart (user_id, book_id, quantity, create_date, update_date)
SELECT 5, 5, 1, '2024-03-03 16:45:00', '2024-03-03 16:45:00'
WHERE NOT EXISTS (SELECT 1 FROM public.cart WHERE user_id = 5 AND book_id = 5);

INSERT INTO public.cart (user_id, book_id, quantity, create_date, update_date)
SELECT 5, 7, 2, '2024-03-03 16:50:00', '2024-03-04 09:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.cart WHERE user_id = 5 AND book_id = 7);

-- Заполнение таблицы wishlist (избранное)
INSERT INTO public.wishlist (user_id, book_id, create_date)
SELECT 3, 2, '2024-02-28 12:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.wishlist WHERE user_id = 3 AND book_id = 2);

INSERT INTO public.wishlist (user_id, book_id, create_date)
SELECT 3, 9, '2024-02-28 12:05:00'
WHERE NOT EXISTS (SELECT 1 FROM public.wishlist WHERE user_id = 3 AND book_id = 9);

INSERT INTO public.wishlist (user_id, book_id, create_date)
SELECT 4, 1, '2024-02-27 15:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.wishlist WHERE user_id = 4 AND book_id = 1);

INSERT INTO public.wishlist (user_id, book_id, create_date)
SELECT 4, 5, '2024-02-27 15:35:00'
WHERE NOT EXISTS (SELECT 1 FROM public.wishlist WHERE user_id = 4 AND book_id = 5);

INSERT INTO public.wishlist (user_id, book_id, create_date)
SELECT 4, 8, '2024-02-27 15:40:00'
WHERE NOT EXISTS (SELECT 1 FROM public.wishlist WHERE user_id = 4 AND book_id = 8);

INSERT INTO public.wishlist (user_id, book_id, create_date)
SELECT 6, 3, '2024-03-01 11:20:00'
WHERE NOT EXISTS (SELECT 1 FROM public.wishlist WHERE user_id = 6 AND book_id = 3);

INSERT INTO public.wishlist (user_id, book_id, create_date)
SELECT 6, 4, '2024-03-01 11:25:00'
WHERE NOT EXISTS (SELECT 1 FROM public.wishlist WHERE user_id = 6 AND book_id = 4);

INSERT INTO public.wishlist (user_id, book_id, create_date)
SELECT 7, 10, '2024-02-26 14:10:00'
WHERE NOT EXISTS (SELECT 1 FROM public.wishlist WHERE user_id = 7 AND book_id = 10);

INSERT INTO public.wishlist (user_id, book_id, create_date)
SELECT 7, 15, '2024-02-26 14:15:00'
WHERE NOT EXISTS (SELECT 1 FROM public.wishlist WHERE user_id = 7 AND book_id = 15);

INSERT INTO public.wishlist (user_id, book_id, create_date)
SELECT 8, 6, '2024-02-25 17:45:00'
WHERE NOT EXISTS (SELECT 1 FROM public.wishlist WHERE user_id = 8 AND book_id = 6);

-- Заполнение таблицы promo_code (промокоды)
INSERT INTO public.promo_code (code, description, discount_type, discount_value, min_order_amount, max_discount_amount, valid_from, valid_to, usage_limit, used_count, status_id, create_date)
SELECT 'WELCOME10', 'Скидка для новых клиентов', 'percent', 10.00, 1000.00, 500.00, '2024-01-01 00:00:00', '2024-12-31 23:59:59', 1000, 23, 1, '2024-01-01 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code WHERE code = 'WELCOME10');

INSERT INTO public.promo_code (code, description, discount_type, discount_value, min_order_amount, max_discount_amount, valid_from, valid_to, usage_limit, used_count, status_id, create_date)
SELECT 'SPRING200', 'Весенняя акция', 'fixed', 200.00, 1500.00, NULL, '2024-03-01 00:00:00', '2024-05-31 23:59:59', 500, 45, 1, '2024-02-15 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code WHERE code = 'SPRING200');

INSERT INTO public.promo_code (code, description, discount_type, discount_value, min_order_amount, max_discount_amount, valid_from, valid_to, usage_limit, used_count, status_id, create_date)
SELECT 'BOOKLOVER15', 'Для любителей книг', 'percent', 15.00, 2000.00, 700.00, '2024-01-01 00:00:00', '2024-12-31 23:59:59', NULL, 67, 1, '2024-01-10 14:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code WHERE code = 'BOOKLOVER15');

INSERT INTO public.promo_code (code, description, discount_type, discount_value, min_order_amount, max_discount_amount, valid_from, valid_to, usage_limit, used_count, status_id, create_date)
SELECT 'FLASH50', 'Флэш-скидка', 'fixed', 50.00, 500.00, NULL, '2024-03-10 00:00:00', '2024-03-17 23:59:59', 200, 189, 1, '2024-03-01 11:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code WHERE code = 'FLASH50');

INSERT INTO public.promo_code (code, description, discount_type, discount_value, min_order_amount, max_discount_amount, valid_from, valid_to, usage_limit, used_count, status_id, create_date)
SELECT 'CLASSICS20', 'На классическую литературу', 'percent', 20.00, 800.00, 400.00, '2024-02-01 00:00:00', '2024-04-30 23:59:59', 300, 112, 1, '2024-01-25 16:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code WHERE code = 'CLASSICS20');

INSERT INTO public.promo_code (code, description, discount_type, discount_value, min_order_amount, max_discount_amount, valid_from, valid_to, usage_limit, used_count, status_id, create_date)
SELECT 'EXPIRED5', 'Просроченный промокод', 'percent', 5.00, 300.00, 100.00, '2024-01-01 00:00:00', '2024-02-01 23:59:59', 100, 15, 2, '2024-01-01 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code WHERE code = 'EXPIRED5');

INSERT INTO public.promo_code (code, description, discount_type, discount_value, min_order_amount, max_discount_amount, valid_from, valid_to, usage_limit, used_count, status_id, create_date)
SELECT 'BIRTHDAY300', 'Именинная скидка', 'fixed', 300.00, 1000.00, NULL, '2024-01-01 00:00:00', '2024-12-31 23:59:59', NULL, 28, 1, '2024-01-01 10:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code WHERE code = 'BIRTHDAY300');

-- Создание нескольких заказов для пользователей
-- Заказ 1 для пользователя 3
INSERT INTO public."order" (order_number, user_id, total_amount, discount_amount, final_amount, delivery_address, contact_phone, note, status_id, create_date, update_date)
SELECT 'ORD-2024-00001', 3, 2050.00, 102.50, 1947.50, 'ул. Гагарина, д. 15, кв. 12', '+7 (900) 123-45-67', 'Позвонить за час до доставки', 1, '2024-02-15 14:30:00', '2024-02-15 16:45:00'
WHERE NOT EXISTS (SELECT 1 FROM public."order" WHERE order_number = 'ORD-2024-00001');

-- Заказ 2 для пользователя 4
INSERT INTO public."order" (order_number, user_id, total_amount, discount_amount, final_amount, delivery_address, contact_phone, note, status_id, create_date, update_date)
SELECT 'ORD-2024-00002', 4, 3200.00, 200.00, 3000.00, 'ул. Советская, д. 8', '+7 (900) 987-65-43', 'Оставить у соседей', 2, '2024-02-20 11:15:00', '2024-02-20 13:20:00'
WHERE NOT EXISTS (SELECT 1 FROM public."order" WHERE order_number = 'ORD-2024-00002');

-- Заказ 3 для пользователя 3
INSERT INTO public."order" (order_number, user_id, total_amount, discount_amount, final_amount, delivery_address, contact_phone, note, status_id, create_date, update_date)
SELECT 'ORD-2024-00003', 3, 850.00, 0.00, 850.00, 'ул. Гагарина, д. 15, кв. 12', '+7 (900) 123-45-67', NULL, 3, '2024-03-01 09:45:00', '2024-03-01 11:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public."order" WHERE order_number = 'ORD-2024-00003');

-- Заказ 4 для пользователя 5
INSERT INTO public."order" (order_number, user_id, total_amount, discount_amount, final_amount, delivery_address, contact_phone, note, status_id, create_date, update_date)
SELECT 'ORD-2024-00004', 5, 1800.00, 180.00, 1620.00, 'ул. Мира, д. 33, кв. 7', '+7 (900) 555-44-33', 'Доставить до 18:00', 1, '2024-03-02 16:20:00', '2024-03-02 17:10:00'
WHERE NOT EXISTS (SELECT 1 FROM public."order" WHERE order_number = 'ORD-2024-00004');

-- Заказ 5 для пользователя 6
INSERT INTO public."order" (order_number, user_id, total_amount, discount_amount, final_amount, delivery_address, contact_phone, note, status_id, create_date, update_date)
SELECT 'ORD-2024-00005', 6, 750.00, 37.50, 712.50, 'ул. Центральная, д. 1', '+7 (900) 222-11-00', NULL, 1, '2024-03-03 10:30:00', '2024-03-03 10:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public."order" WHERE order_number = 'ORD-2024-00005');

-- Заказ 6 для пользователя 4
INSERT INTO public."order" (order_number, user_id, total_amount, discount_amount, final_amount, delivery_address, contact_phone, note, status_id, create_date, update_date)
SELECT 'ORD-2024-00006', 4, 1100.00, 0.00, 1100.00, 'ул. Советская, д. 8', '+7 (900) 987-65-43', 'Заказ для подарка', 2, '2024-03-04 13:45:00', '2024-03-04 15:00:00'
WHERE NOT EXISTS (SELECT 1 FROM public."order" WHERE order_number = 'ORD-2024-00006');

-- Заполнение таблицы order_item (элементы заказов)
-- Элементы для заказа 1
INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 1, 1, 1, 1200.00, 10.00, 1080.00, '2024-02-15 14:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 1 AND book_id = 1);

INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 1, 3, 1, 850.00, 0.00, 850.00, '2024-02-15 14:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 1 AND book_id = 3);

INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 1, 8, 2, 450.00, 5.00, 855.00, '2024-02-15 14:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 1 AND book_id = 8);

-- Элементы для заказа 2
INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 2, 2, 2, 950.00, 5.00, 1805.00, '2024-02-20 11:15:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 2 AND book_id = 2);

INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 2, 9, 1, 650.00, 0.00, 650.00, '2024-02-20 11:15:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 2 AND book_id = 9);

INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 2, 12, 2, 380.00, 10.00, 684.00, '2024-02-20 11:15:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 2 AND book_id = 12);

-- Элементы для заказа 3
INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 3, 6, 1, 300.00, 0.00, 300.00, '2024-03-01 09:45:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 3 AND book_id = 6);

INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 3, 15, 1, 320.00, 0.00, 320.00, '2024-03-01 09:45:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 3 AND book_id = 15);

INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 3, 17, 1, 350.00, 10.00, 315.00, '2024-03-01 09:45:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 3 AND book_id = 17);

-- Элементы для заказа 4
INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 4, 5, 1, 1100.00, 0.00, 1100.00, '2024-03-02 16:20:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 4 AND book_id = 5);

INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 4, 11, 1, 700.00, 0.00, 700.00, '2024-03-02 16:20:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 4 AND book_id = 11);

-- Элементы для заказа 5
INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 5, 4, 1, 750.00, 15.00, 637.50, '2024-03-03 10:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 5 AND book_id = 4);

INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 5, 16, 1, 290.00, 5.00, 275.50, '2024-03-03 10:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 5 AND book_id = 16);

-- Элементы для заказа 6
INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 6, 7, 1, 280.00, 10.00, 252.00, '2024-03-04 13:45:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 6 AND book_id = 7);

INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 6, 10, 2, 400.00, 20.00, 640.00, '2024-03-04 13:45:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 6 AND book_id = 10);

INSERT INTO public.order_item (order_id, book_id, quantity, unit_price, discount, total_price, create_date)
SELECT 6, 20, 1, 420.00, 0.00, 420.00, '2024-03-04 13:45:00'
WHERE NOT EXISTS (SELECT 1 FROM public.order_item WHERE order_id = 6 AND book_id = 20);

-- Заполнение таблицы review (отзывы)
INSERT INTO public.review (user_id, book_id, rating, comment, status_id, create_date, update_date)
SELECT 3, 1, 5, 'Отличная книга! Читал с огромным удовольствием. Классика на все времена.', 1, '2024-02-20 18:30:00', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.review WHERE user_id = 3 AND book_id = 1);

INSERT INTO public.review (user_id, book_id, rating, comment, status_id, create_date, update_date)
SELECT 3, 3, 4, 'Сложное произведение, но очень глубокое. Заставляет задуматься о многих вещах.', 1, '2024-02-21 14:15:00', '2024-02-21 14:20:00'
WHERE NOT EXISTS (SELECT 1 FROM public.review WHERE user_id = 3 AND book_id = 3);

INSERT INTO public.review (user_id, book_id, rating, comment, status_id, create_date, update_date)
SELECT 4, 2, 5, 'Одна из моих любимых книг. Перечитываю каждый год.', 1, '2024-02-22 10:45:00', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.review WHERE user_id = 4 AND book_id = 2);

INSERT INTO public.review (user_id, book_id, rating, comment, status_id, create_date, update_date)
SELECT 4, 9, 5, 'Актуально как никогда! Рекомендую всем для прочтения.', 1, '2024-02-25 16:20:00', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.review WHERE user_id = 4 AND book_id = 9);

INSERT INTO public.review (user_id, book_id, rating, comment, status_id, create_date, update_date)
SELECT 5, 5, 5, 'Великое произведение! Философская глубина поражает.', 1, '2024-03-03 19:10:00', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.review WHERE user_id = 5 AND book_id = 5);

INSERT INTO public.review (user_id, book_id, rating, comment, status_id, create_date, update_date)
SELECT 6, 4, 3, 'Интересно, но слишком длинно. Некоторые главы можно было бы сократить.', 1, '2024-03-04 12:30:00', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.review WHERE user_id = 6 AND book_id = 4);

INSERT INTO public.review (user_id, book_id, rating, comment, status_id, create_date, update_date)
SELECT 3, 8, 4, 'Прекрасные рассказы. Чехов - мастер короткой формы.', 1, '2024-03-05 15:45:00', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.review WHERE user_id = 3 AND book_id = 8);

INSERT INTO public.review (user_id, book_id, rating, comment, status_id, create_date, update_date)
SELECT 7, 10, 5, 'Блестящая сатира! Очень понравилось.', 1, '2024-03-06 11:20:00', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.review WHERE user_id = 7 AND book_id = 10);

INSERT INTO public.review (user_id, book_id, rating, comment, status_id, create_date, update_date)
SELECT 8, 6, 4, 'Классика театра. Интересная постановка проблем.', 1, '2024-03-07 14:00:00', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.review WHERE user_id = 8 AND book_id = 6);

INSERT INTO public.review (user_id, book_id, rating, comment, status_id, create_date, update_date)
SELECT 9, 15, 5, 'Чехов как всегда великолепен!', 1, '2024-03-08 17:30:00', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.review WHERE user_id = 9 AND book_id = 15);

-- Заполнение таблицы promo_code_usage (использование промокодов)
INSERT INTO public.promo_code_usage (promo_code_id, user_id, order_id, discount_applied, create_date)
SELECT 1, 3, 1, 102.50, '2024-02-15 14:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code_usage WHERE order_id = 1);

INSERT INTO public.promo_code_usage (promo_code_id, user_id, order_id, discount_applied, create_date)
SELECT 2, 4, 2, 200.00, '2024-02-20 11:15:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code_usage WHERE order_id = 2);

INSERT INTO public.promo_code_usage (promo_code_id, user_id, order_id, discount_applied, create_date)
SELECT 3, 5, 4, 180.00, '2024-03-02 16:20:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code_usage WHERE order_id = 4);

INSERT INTO public.promo_code_usage (promo_code_id, user_id, order_id, discount_applied, create_date)
SELECT 5, 6, 5, 37.50, '2024-03-03 10:30:00'
WHERE NOT EXISTS (SELECT 1 FROM public.promo_code_usage WHERE order_id = 5);

-- Обновление счетчиков использованных промокодов
UPDATE public.promo_code SET used_count = used_count + 1 WHERE id = 1;
UPDATE public.promo_code SET used_count = used_count + 1 WHERE id = 2;
UPDATE public.promo_code SET used_count = used_count + 1 WHERE id = 3;
UPDATE public.promo_code SET used_count = used_count + 1 WHERE id = 5;

-- Уменьшение количества книг на складе после заказов (симуляция)
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 1;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 2;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 2 WHERE id = 2;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 3;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 4;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 5;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 6;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 7;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 2 WHERE id = 8;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 9;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 10;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 2 WHERE id = 10;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 11;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 2 WHERE id = 12;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 15;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 16;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 17;
UPDATE public.book SET quantity_in_stock = quantity_in_stock - 1 WHERE id = 20;