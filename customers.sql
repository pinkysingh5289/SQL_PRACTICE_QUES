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
(206, 'Lena Fischer', 'Germany','North', '2025-01-01'); 

-- Find customers who have not made any purchase
select  name,  order_id
from customers left join orders
on customers.customer_id = orders.customer_id
where order_id is null;

-- Write a query to get the first and last purchase date for each customer.
select customer_id,min(registration_date) as first_purchase,
max(registration_date) as last_purchase 
from customers group by customer_id;

-- Customers with no sales records
select c.customer_id,c.name,s.sale_id from customers c
left join sales  s on 
c.customer_id = s.customer_id
where s.sale_id is null ;

-- Rank customers by total revenue
