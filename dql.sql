--select 
--from one or the many tables 

select * from staff;
--not equal to -- <> or !=

select * from staff 
where first_name <>'saurabh';

--order by --show the all detaails by sorting a column
select * from staff 
order by first_name;


--order by desc--
select * from staff 
order by first_name desc;

--between 

select * from table where salary is between 4000 and 10000;

--in not in
select * from table where name in ('saurabh', 'prince')
select * from staff where first_name NOT in ('saurabh', 'prince');

--like 
-- 1 - starts
select * from staff where first_name like 's%';
--2- ends
select * from staff where first_name like '%h';


select * from staff;
select first_name,age from staff where age>23 and first_name like '%h';

--arithmetic 
select (5+1) as total;
--in mysql or oracle we will do -- as total from dual

--unique values of a column 
select distinct age from staff order by age;

--limit only see the first few record we cc
select * from staff  order by age limit 2;


--case statement 
select * 
,  case when first_name ='saurabh' then ' hero'
		when first_name='prince'	then 'coder'
		
	end as names
from staff











