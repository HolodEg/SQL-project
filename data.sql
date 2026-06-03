insert into role values
('administrator'),
('editor'),
('user');

update usr
set role_name='user';

update usr
set role_name='administrator'
where id=3 or id=6;

update usr
set role_name='editor'
where
id=7 or
id=21 or
id=19 or
id=100 or
id=80 or
id=104 or
id=11;

insert into permission(name) values
('create'),
('edit'),
('view'),
('delete');

insert into
role_permission(role_name, permission_id) values
('user', 3),
('editor', 2),
('editor', 3),
('administrator', 1),
('administrator', 2),
('administrator', 3),
('administrator', 4);

INSERT INTO usr(e_mail, first_name, last_name, middle_name, birth_date, phone, role_name, login, password)
VALUES
    ('oleg.zhdanov@mail.com', 'Олег', 'Жданов', 'Витальевич', '1983-09-05 10:15:00', '+7(978)123-45-67', 'user', 'ozhdanov', 'SecurePass123'),
    ('lidiya.voloshina@mail.com', 'Лидия', 'Волошина', 'Артемовна', '1991-04-18 14:30:00', '+7(978)234-56-78', 'user', 'lvoloshina', 'MySecret!2024'),
    ('boris.ignatov@mail.com', 'Борис', 'Игнатов', 'Святославович', '1975-11-23 08:45:00', '+7(978)345-67-89', 'user', 'bignatov', 'Bor1sPa$$'),
    ('tamara.shilova@mail.com', 'Тамара', 'Шилова', 'Даниловна', '1989-07-12 20:20:00', '+7(978)456-78-90', 'user', 'tshilova', 'Tamara7890'),
    ('roman.kolesnikov@mail.com', 'Роман', 'Колесников', 'Игнатьевич', '1994-02-08 06:10:00', '+7(978)567-89-01', 'user', 'rkolesnikov', 'Roman@K2024'),
    ('veronika.nesterova@mail.com', 'Вероника', 'Нестерова', 'Ефимовна', '1981-06-30 17:55:00', '+7(978)678-90-12', 'user', 'vnesterova', 'Nika_Summer'),
    ('valentin.savelyev@mail.com', 'Валентин', 'Савельев', 'Олегович', '1998-10-14 09:25:00', '+7(978)789-01-23', 'user', 'vsavelyev', 'Val!Save1'),
    ('anzhelika.klimova@mail.com', 'Анжелика', 'Климова', 'Руслановна', '1972-12-01 22:40:00', '+7(978)890-12-34', 'user', 'aklimova', 'Anzh3l1k@'),
    ('artur.efremov@mail.com', 'Артур', 'Ефремов', 'Валерьевич', '1986-03-27 12:05:00', '+7(978)901-23-45', 'user', 'aefremov', 'ArturEf86'),
    ('larisa.ermakova@mail.com', 'Лариса', 'Ермакова', 'Станиславовна', '1993-05-09 19:30:00', '+7(978)012-34-56', 'user', 'lermakova', 'Larisa_93');

insert into department(name) values
	('Физико-технический институт'),
	('Институт филологии'),
	('Медицинский институт'),
	('Экономический институт'),
	('Педагогический институт');

insert into position(name) values
	('администрация'),
	('преподаватель'),
	('студент');

insert into groups(name, course) values
	('информатика 25', 1),
	('экономика 24', 2),
	('русский 23', 3),
	('стоматология 24', 2),
	('прикладная информатика', 1);

INSERT INTO usr(e_mail, first_name, last_name, middle_name, birth_date, phone, role_name, login, password)
VALUES
    ('alexey.shubin@mail.com', 'Алексей', 'Шубин', 'Олегович', '1984-03-14 10:25:00', '+7(978)202-33-44', 'user', 'ashubin', 'AlexeySh84'),
    ('karina.melnikova@mail.com', 'Карина', 'Мельникова', 'Игоревна', '1992-11-28 18:40:00', '+7(978)303-44-55', 'user', 'kmelnikova', 'KarinaM92'),
    ('artem.panfilov@mail.com', 'Артём', 'Панфилов', 'Владиславович', '1979-06-05 05:15:00', '+7(978)404-55-66', 'user', 'apanfilov', 'ArtemPan79'),
    ('zhanna.vasnetsova@mail.com', 'Жанна', 'Васнецова', 'Алексеевна', '1987-09-19 22:30:00', '+7(978)505-66-77', 'user', 'zvasnetsova', 'ZhannaV87'),
    ('konstantin.dyachkov@mail.com', 'Константин', 'Дьячков', 'Романович', '1994-01-25 13:10:00', '+7(978)606-77-88', 'user', 'kdyachkov', 'Konstant94'),
    ('yulia.gurieva@mail.com', 'Юлия', 'Гурьева', 'Сергеевна', '1981-08-11 07:55:00', '+7(978)707-88-99', 'user', 'ygurieva', 'YuliaG81'),
    ('mikhail.shiryaev@mail.com', 'Михаил', 'Ширяев', 'Анатольевич', '1997-05-30 16:45:00', '+7(978)808-99-00', 'user', 'mshiryaev', 'MikhailSh97'),
    ('alina.bondareva@mail.com', 'Алина', 'Бондарева', 'Павловна', '1975-12-17 23:20:00', '+7(978)909-00-11', 'user', 'abondareva', 'AlinaB75'),
    ('vyacheslav.kopylov@mail.com', 'Вячеслав', 'Копылов', 'Григорьевич', '1989-04-07 09:00:00', '+7(978)010-11-22', 'user', 'vkopylov', 'SlavaK89'),
    ('margarita.kiseleva@mail.com', 'Маргарита', 'Киселева', 'Денисовна', '1993-10-22 14:35:00', '+7(978)111-00-33', 'user', 'mkiseleva', 'MargaritaK93');

INSERT INTO university_member(user_id, department_id, position_id)
VALUES
	(120, 1, 3),
	(121, 1, 3),
	(22, 1, 3),
	(23, 1, 3),
	(24, 1, 3),
	(25, 1, 3),
	(122, 1, 3),
	(26, 2, 3),
	(27, 2, 3),
	(28, 2, 3),
	(29, 2, 3),
	(30, 2, 3),
	(31, 2, 3),
	(32, 2, 3),
	(33, 3, 3),
	(34, 3, 3),
	(35, 3, 3),
	(36, 3, 3),
	(37, 3, 3),
	(38, 3, 3),
	(39, 3, 3),
	(40, 4, 3),
	(93, 4, 3),
	(94, 4, 3),
	(21, 4, 3),
	(19, 4, 3),
	(100, 4, 3),
	(80, 4, 3),
	(123, 4, 3),
	(124, 5, 3),
	(125, 5, 3),
	(126, 5, 3),
	(127, 5, 3),
	(128, 5, 3),
	(129, 5, 3),
	(130, 5, 3),
	(131, 1, 2),
	(132, 1, 2),
	(133, 2, 2),
	(134, 2, 2),
	(135, 3, 2),
	(136, 3, 2),
	(137, 4, 2),
	(138, 4, 2),
	(139, 5, 2),
	(140, 5, 1),
	(141, 1, 1),
	(142, 1, 1),
	(143, 2, 1),
	(145, 2, 1),
	(146, 3, 1),
	(147, 3, 1),
	(148, 4, 1),
	(149, 4, 1),
	(17, 5, 1),
	(15, 5, 1);

INSERT INTO group_member(university_member_id, group_id, group_leader)
VALUES
	(2167, 1, 'Y'),
	(2168, 1, 'N'),
	(2169, 1, 'N'),
	(2170, 1, 'N'),
	(2171, 1, 'N'),
	(2172, 1, 'N'),
	(2173, 1, 'N'),
	(2174, 2, 'Y'),
	(2175, 2, 'N'),
	(2176, 2, 'N'),
	(2177, 2, 'N'),
	(2178, 2, 'N'),
	(2179, 2, 'N'),
	(2180, 2, 'N'),
	(2181, 3, 'Y'),
	(2182, 3, 'N'),
	(2183, 3, 'N'),
	(2184, 3, 'N'),
	(2185, 3, 'N'),
	(2186, 3, 'N'),
	(2187, 3, 'N'),
	(2188, 4, 'Y'),
	(2189, 4, 'N'),
	(2190, 4, 'N'),
	(2191, 4, 'N'),
	(2192, 4, 'N'),
	(2193, 4, 'N'),
	(2194, 4, 'N'),
	(2195, 5, 'N'),
	(2196, 5, 'N'),
	(2197, 5, 'N'),
	(2198, 5, 'N'),
	(2199, 5, 'N'),
	(2200, 5, 'N'),
	(2201, 5, 'N');