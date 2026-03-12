alter table usr rename email to e_mail;

alter table usr add constraint e_mail_uniqe unique(e_mail);

alter table usr add column birth_date timestamp;

update usr set birth_date='1980-01-01 00:00:00'::timestamp + ('2010-12-31 23:59:59'::timestamp 
- '1980-01-01 00:00:00'::timestamp) * random();

alter table usr alter column birth_date set not null;

update usr
set birth_date=birth_date + '01:00:00'::interval
where birth_date::time >= '13:00:00'

