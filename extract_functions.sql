--extract any part of the date or the time 
year
quarter
month
week
day
hour
minute

dow--day of week

doy--day of year
select * from payment
select extract (month from payment_date ) as payment_month , extract (dow from payment_date) as day ,
payment_date from payment 


