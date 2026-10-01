CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    manager_id INT,
    salary INT,
    job_title VARCHAR(50),
    gender CHAR(1),
    hire_date DATE,
    birth_date DATE
);

INSERT INTO employees VALUES
(1, 'Ravi',   1, NULL, 120000, 'Director',  'M', '2018-01-05', '1978-04-12'),
(2, 'Anita',  1, 1,     95000, 'Manager',   'F', '2019-06-15', '1985-09-23'),
(3, 'Suresh', 2, 1,     60000, 'Manager',   'M', '2020-08-01', '1990-02-17'),
(4, 'Priya',  2, 3,     75000, 'Analyst',   'F', '2021-11-20', '1993-07-30'),
(5, 'Vikram', 3, 3,     55000, 'Analyst',   'M', '2026-09-05', '1995-12-01'),
(6, 'Neha',   3, 2,     70000, 'Executive', 'F', '2022-01-12', '1992-03-14'),
(7, 'Aman',   4, 2,    100000, 'Manager',   'M', '2026-07-25', '1988-05-19'),
(8, 'Kiran',  4, 7,     65000, 'Analyst',   'F', '2023-04-18', '1996-08-08'),
(9, 'Rohit',  2, 3,     58000, 'Developer', 'M', '2024-02-01', '1994-10-25'),
(10,'Sneha',  1, 2,     62000, 'Executive', 'F', '2026-03-10', '1997-01-15');

-- Write a query to perform a conditional aggregation (count males and
-- females in each department).

select count(case when gender = 'M' then 1  end) as male_count,
count(case when gender = 'F' then 1 end) as female_count from employees group by department_id;

-- Employees earning above company average salary
select name,salary from employees where salary > (select  avg(salary) from employees); 

-- Write a query to find the number of employees in each job title.
select count(*),job_title from employees group by job_title;

-- Employees with no department assigned
SELECT *
FROM employees
WHERE department_id IS NULL;

-- Department with lowest average salary
select department_id,avg(salary) as avgsal
from employees
group by department_id
order by avgsal
limit 1 ;

-- Names starting and ending with same letter (string logic)
select * from employees where left(name,1) = right(name,1)

-- List all departments and their employee counts, including departments with zero employees.

select d.department_name,d.department_id,count(e.id) from departments d
left join employees e on
d.department_id = e.department_id
group by department_id ;

-- Retrieve the Nth highest salary from the employees table
-- SELECT DISTINCT salary
-- FROM employees
-- ORDER BY salary DESC
-- LIMIT 1 OFFSET N-1;
-- (Replace N with the desired rank, e.g., N=3 for third highest)

-- Show the department with the highest number of employees and the count.
SELECT department_id, COUNT(*) AS
employee_count
FROM employees
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;

-- List employees with their manager names (LEFT JOIN)
SELECT e.name AS employee, m.name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;

-- Employees with no manager assigned
select * from employees where manager_id is null;

-- Second highest salary (company-wide)
select max(salary) as second_highest_salary from employees where salary <
(select max(salary ) from employees);

-- Write a query to rank employees based on salary
select name,salary ,rank() over(order by salary desc) as salary_rank
from employees;

-- Write a query to calculate the difference between current row and previous row's salary (lag function)
select name,salary,salary - lag(salary) over(order by salary desc) as diff  
from employees ;