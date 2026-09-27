create database employee;
use employee ;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    creation_date DATE,
    budget INT,
    manager_id INT
);

INSERT INTO departments VALUES
(1, 'Sales', '2018-01-01', 500000, NULL),
(2, 'IT', '2019-03-15', 800000, NULL),
(3, 'HR', '2017-06-01', 200000, NULL),
(4, 'Marketing', '2020-02-10', 300000, NULL),
(5, 'Finance', '2026-01-01', 400000, NULL); -- no employees yet