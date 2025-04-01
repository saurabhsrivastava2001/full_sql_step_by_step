CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);

INSERT INTO employees (id, name, dept, salary) VALUES
(1, 'Alice', 'Sales', 50000),
(2, 'Bob', 'IT', 60000),
(3, 'Charlie', 'Sales', 45000),
(4, 'Diana', 'HR', 55000),
(5, 'Eve', 'IT', 62000);

select * from employees;
--
/* q-1 Example 1: Basic Subquery in WHERE Clause
Question: Find employees who earn more than Bob’s salary.

Inner query: Get Bob’s salary.
Outer query: Compare other employees’ salaries against it. */

select * from employees 
where salary>(select salary from employees where name='Bob');

--2  Find employees in the same department as Alice.
select name, dept from employees 
where dept =(select dept from employees where name='Alice')



--3 Show each employee’s name and how much more (or less) they earn compared to the average salary.

SELECT name, salary, round ((salary - (SELECT AVG(salary) FROM employees))) AS salary_diff
FROM employees;

--4 Example 4: Subquery with EXISTS 
-- Question: Find employees in departments that have at least one person earning over 60000.
 select dept from employees 
group by dept 
having salary














