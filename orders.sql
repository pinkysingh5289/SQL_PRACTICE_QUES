CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    quantity INT,
    discount_amount DECIMAL(10,2),
    payment_method VARCHAR(20),
    order_channel VARCHAR(20)
);

INSERT INTO orders VALUES
(1001, 201, 101, '2026-01-10', 799.00,  1,   0.00, 'Credit Card', 'Online'),
(1002, 201, 103, '2026-02-14', 998.00,  2,  50.00, 'Credit Card', 'Online'),
(1003, 202, 105, '2026-03-05', 2499.00, 1,   0.00, 'UPI',         'In-Store'),
(1004, 203, 102, '2026-03-20', 1999.00, 1,   0.00, 'Credit Card', 'Online'),
(1005, 203, 102, '2026-04-15', 1999.00, 1, 100.00, 'Debit Card',  'Online'),
(1006, 204, 106, '2026-05-01', 349.00,  1,   0.00, 'UPI',         'In-Store'),
(1007, 205, 104, '2026-06-10', 1299.00, 1,   0.00, 'Credit Card', 'Online'),
(1008, 201, 105, '2026-07-01', 2499.00, 1,   0.00, 'UPI',         'Online'),
(1009, 202, 101, '2026-08-01', 799.00,  1,   0.00, 'Credit Card', 'In-Store'),
(1010, 203, 103, '2026-09-05', 499.00,  1,   0.00, 'UPI',         'Online');