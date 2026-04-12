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

