CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50),
    region VARCHAR(50),
    registration_date DATE
);

INSERT INTO customers VALUES
(201, 'Rahul Mehta',  'India', 'West',  '2024-01-15'),
(202, 'Sara Khan',    'India', 'North', '2024-03-10'),
(203, 'John Smith',   'USA',   'East',  '2024-02-20'),
(204, 'Emma Watson',  'UK',    'South', '2024-05-05'),
(205, 'Arjun Nair',   'India', 'South', '2024-06-01'),
(206, 'Lena Fischer', 'Germany','North', '2025-01-01'); -- never ordered