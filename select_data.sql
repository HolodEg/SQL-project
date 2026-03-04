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