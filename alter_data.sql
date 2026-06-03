alter table usr rename email to e_mail;

alter table usr add constraint e_mail_uniqe unique(e_mail);

alter table usr add column birth_date timestamp;

update usr set birth_date='1980-01-01 00:00:00'::timestamp + ('2010-12-31 23:59:59'::timestamp 
- '1980-01-01 00:00:00'::timestamp) * random();

alter table usr alter column birth_date set not null;

update usr
set birth_date=birth_date + '01:00:00'::interval
where birth_date::time >= '13:00:00'

alter table usr
drop column payment;

create table role (
name varchar(20) not null,
primary key (name)
);

alter table usr
add column role_name varchar(20);

alter table usr
alter column role_name set not NULL;

alter table usr
add column login varchar(64);

alter table usr
add column password varchar(64);

create table permission(
id smallserial not null,
name varchar(30) not null,
primary key(id)
);

create table role_permission(
role_name varchar(20) not null,
permission_id smallserial not null
);

ALTER TABLE usr
    ADD PRIMARY KEY (id);

alter table usr add constraint FK_USR_ROLE foreign key (role_name) references
role;

alter table role_permission
add constraint FK_ROLE_PERMISSION_ROLE 
foreign key (role_name)
references role;

alter table role_permission
add constraint FK_ROLE_PERMISSION_PERMISSION
foreign key (permission_id)
references permission;

create table department(
id smallserial primary key,
name varchar(30) not null
);

create table position(
id smallserial primary key,
name varchar(30) not null
);

create table university_member(
id smallserial primary key,
user_id bigint references usr,
department_id smallint references department,
position_id smallint references position
);

create table groups(
id smallserial primary key,
name varchar(30) not null,
course smallint not null
);

create table group_member(
id smallserial primary key,
university_member_id smallint references university_member,
group_id smallint references groups,
group_leader char(1)
);