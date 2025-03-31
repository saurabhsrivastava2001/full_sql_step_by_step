select * from customer;
select * from payment;

--inner join commont caolumn- customer id 

select c.first_name , p.mode from customer as c
inner join payment as p
on p.customer_id = c.customer_id 
; 



-- creating dummy dataset
-- create table healthy
-- (
-- 	customer_id int primary key,
-- 	age int ,
-- 	heart_rate int,
-- 	height int 
	
-- );

-- insert into healthy 
-- values  (1,22,99,142),
-- 		(2,32,90,232),
-- 		(4,12,70,132),
-- 		(6,34,96,162),
-- 		(7,52,94,132),
-- 		(8,32,80,211);

--left join
select * from customer as c
left join healthy as h
on c.customer_id = h.customer_id;

--right join
select * from customer as c
right join healthy as h
on c.customer_id = h.customer_id;

-- full join / full outer join
-- all record in either connection


select * from customer as c
full outer join healthy as h
on c.customer_id = h.customer_id;
