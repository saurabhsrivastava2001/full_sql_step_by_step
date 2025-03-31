--update the date of the database
--insert delete update
select * from address;

--instert
insert into address (pin_code, country, states, dist)
values (221206 , 'India', 'UP','VNS');

update	address 
set		country='USA',states='CALF'
where 	pin_code=232;

--delete 

delete from address where pin_code =221206;













