alter table usr add column payment integer;

update usr set payment=-200000 + (200000 - (-200000)) * random()
where id%2 = 0;

update usr set payment=payment*1.1
where payment < 50000;

update usr
set payment=0
where payment is null;

update usr
set payment = payment*1.05
where id IN (
	select id
	from usr
	where payment > 0
	order by payment
	limit 3
);

delete from usr
where payment < 0;

delete from usr
where age(birth_date) > interval '100y';

delete from usr
where
	last_name like 'А%' and
	first_name like 'А%'
;

delete from usr
where
	first_name = 'Иван' and
	payment > 150000
;