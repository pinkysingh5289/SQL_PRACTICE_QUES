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
