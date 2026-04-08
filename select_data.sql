select * from usr where id>=7 order by id asc;

select first_name, last_name
from usr
where char_length(first_name)>7;

select *
from usr
order by last_name;
select *
from usr
order by first_name;

select *
from usr
where id>=7
order by id desc;
select *
from usr
where id>=7
order by first_name;

SELECT *
from usr
where id>10 and middle_name='Петрович';

SELECT *
from usr
where first_name='Иван' and middle_name='Петрович';

SELECT *
from usr
where middle_name='Иванович' or middle_name='Петрович';

SELECT *
from usr
where (middle_name='Иванович' or middle_name='Петрович') and id>5;

SELECT *
from usr
where 10<=id and id<=15;

SELECT first_name, last_name
from (
	select first_name, last_name
	from usr
	order by last_name
)
limit 5 offset 5;

select * from usr where birth_date > '2005-01-01'::timestamp;

select first_name, last_name, birth_date
from usr
order by birth_date desc;

select * from usr
where birth_date >= '2003-01-01'::timestamp and birth_date <= '2008-12-31'::timestamp;

select * from usr
where birth_date >= '2007-01-01'::timestamp and birth_date <= '2007-12-31'::timestamp
order by last_name;

select first_name, last_name, to_char(birth_date, 'DD.MM.YYYY') as birthday
from usr
where to_char(birth_date, 'YYYY') = '2007'
order by birth_date;

select * from usr
where birth_date::time between '12:00:00' and '12:59:59'
order by birth_date desc;

select * from usr
where age(birth_date) > interval '18y';

select * from usr
where extract(isodow from birth_date) between 6 and 7
order by birth_date desc

select first_name, last_name
from usr
where payment IS NULL
order by last_name, first_name;