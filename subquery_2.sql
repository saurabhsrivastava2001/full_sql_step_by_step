CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);

INSERT INTO employee (emp_id, name, dept, salary) VALUES
(1, 'Alice', 'Sales', 50000),
(2, 'Bob', 'IT', 60000),
(3, 'Charlie', 'Sales', 45000),
(4, 'Diana', 'HR', 55000),
(5, 'Eve', 'IT', 62000),
(6, 'Frank', 'Finance', 70000),
(7, 'Grace', 'HR', 48000),
(8, 'Hank', 'IT', 58000),
(9, 'Ivy', 'Marketing', 53000),
(10, 'Jack', 'Finance', 75000);


--multiple row subquery

q- find the employees who ean highest in each dept

thought process--
1-
--get the maximum salaries of all the depts

select dept , max(salary) from employee
group by dept;

--now we compare this detail with emp table to get the final result
--use this quer to filter the data from emp table 

--filter using mltiple columns

select * from employee 
where (dept,salary) in (select dept , max(salary) from employee
						group by dept
						) order by salary desc;
--single coumns , multiple rows

--q- dept dont have emp

select * from departmemnt 
where dept not in  (select distinct dept from employee)

--correlated subquery







