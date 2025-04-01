--exist , not exist

select * from employee;

--
select * from employee 
where exists (select * from employee 
				where name ='Alice')