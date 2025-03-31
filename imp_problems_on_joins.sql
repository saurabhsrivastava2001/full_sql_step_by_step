--1- find the manager

create table emp 
(
	emp_id int primary key,
	emp_name varchar(30),
	manager_id int 
);
insert into emp
values (1 ,'agni',3),
		(2,'akash',4),
		(3,'dharti',2),
		(4,'vayu',3);

select * from emp;


question--
find the name of the reespecrtive managers for each of the employee


select *
from emp as t1
join emp as t2
on t1.manager_id = t2.emp_id;  --name the persons of t2 whose emp id is the manager id of the t1
-- take the 