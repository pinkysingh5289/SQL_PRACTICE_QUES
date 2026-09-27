-- "sales" is used interchangeably with "orders" in the question set.
-- If your DB doesn't support CREATE TABLE AS SELECT, this file
-- creates it manually with the same data as orders.sql.

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    sale_date DATE,
    amount DECIMAL(10,2),
    quantity INT
);

INSERT INTO sales VALUES
(1001, 201, 101, '2026-01-10', 799.00,  1),
(1002, 201, 103, '2026-02-14', 998.00,  2),
(1003, 202, 105, '2026-03-05', 2499.00, 1),
(1004, 203, 102, '2026-03-20', 1999.00, 1),
(1005, 203, 102, '2026-04-15', 1999.00, 1),
(1006, 204, 106, '2026-05-01', 349.00,  1),
(1007, 205, 104, '2026-06-10', 1299.00, 1),
(1008, 201, 105, '2026-07-01', 2499.00, 1),
(1009, 202, 101, '2026-08-01', 799.00,  1),
(1010, 203, 103, '2026-09-05', 499.00,  1);