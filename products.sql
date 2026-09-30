CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category_id INT,
    price DECIMAL(10,2),
    launch_date DATE,
    discontinued BOOLEAN
);

INSERT INTO products VALUES
(101, 'Wireless Mouse',   1,  799.00, '2024-01-10', FALSE),
(102, 'Bluetooth Speaker',1, 1999.00, '2024-03-05', FALSE),
(103, 'T-Shirt',          2,  499.00, '2024-02-15', FALSE),
(104, 'Jeans',            2, 1299.00, '2024-05-01', FALSE),
(105, 'Mixer Grinder',    3, 2499.00, '2023-11-20', FALSE),
(106, 'Novel - Fiction',  4,  349.00, '2024-06-10', FALSE),
(107, 'Old Keyboard',     1,  599.00, '2020-01-01', TRUE),  -- discontinued
(108, 'Unsold Gadget',    1,  999.00, '2025-01-01', FALSE); -- never ordered

-- Find products that have never been sold.
select p.product_id,p.product_name, s.customer_id from products p
left join sales s on 
p.product_id = s.product_id
where s.customer_id is null;
