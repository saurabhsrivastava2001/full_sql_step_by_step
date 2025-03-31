--find the customer whose amount is more than the avg amount

select customer_id , amount from payment
where amount> (select avg(amount) from payment);

--types of a subquery

--1 - scalar subquery - return 1 value

 select customer_id , amount from payment
where amount> (select avg(amount) from payment);

--(select avg(amount) from payment); this returns 1 row and 1 column 

select p.* from payment p
join (select round(avg(amount)) avg_amount from payment) avg_amount
on p.amount > avg_amount.avg_amount; --this is the condition we can use 

--multiple_row subquery

--subquery which returns multiple coulms , multiple rows 
-- 1 col multiple rows

-q-
find the customer who get most amount in each modes
---1st step
-- get the max amount in each modes -- you know to use group by

select mode , max(amount)
from  payment
group by mode 

--now we need to get the employee (customer ) detail in this case id 
select * from payment 
where (mode, amount) in (select mode , max(amount)
            				from  payment
							group by mode 
						 )
--now we can join  the custmer data from customer table to show the details 
select * from customer;
select * from payment;


select c.first_name,p.mode, p.amount from payment p

join (select round(avg(amount)) avg_amount from payment) avrg
on p.amount > avrg.avg_amount
join customer c
on p.customer_id = c.customer_id;






