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