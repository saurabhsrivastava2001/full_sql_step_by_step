--string functions

select upper(first_name),length(first_name) from customer;

select lower(first_name) from customer;


--substring 

select substring (first_name ,1,3) , first_name from customer;

--concat

select concat(first_name , ' ', last_name ) from customer;

--replace
select replace (first_name ,'a','i') , first_name from customer

select * from customer;

-- aggregate functions

--count , sum, avg, max, min,round   - specify the digits in a decimal funtion
--COUNT--TOTAL NUMBER OF ROWS

SELECT COUNT(*) FROM PAYMENT

SELECT SUM(AMOUNT) FROM PAYMENT

SELECT MIN(AMOUNT)  FROM PAYMENT 

SELECT ROUND(AVG(AMOUNT) ,2) FROM PAYMENT