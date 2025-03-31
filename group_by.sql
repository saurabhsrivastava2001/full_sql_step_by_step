-- group by- 
--grouping the table by the unique values of a columns and then using aggregarte functions ,

-- lets say we want the all the modes and all the sum of the total amount

select mode , sum(amount)  as total from payment
group by mode order by total;


--having -- conditions in the having 

select mode , sum(amount),sum(amount) as total 
from payment 
group by mode 
having sum(amount)>100
order by sum(amount) desc ;


select distinct (payment_date) from payment;

select * from payment;

-- give me the modes and the sums fo the amunts regarding the which have count more than 3 times
select mode , count (mode) as count,sum(amount) as sum from payment 
group by mode 
having count (mode)>=3
order by sum desc ;

