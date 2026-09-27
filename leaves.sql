CREATE TABLE leaves (
    leave_id INT PRIMARY KEY,
    employee_id INT,
    leave_date DATE
);

INSERT INTO leaves VALUES
(1, 3, '2026-08-15'),
(2, 4, '2026-07-01');
-- Employees 5,6,7,8,9,10 have NO leave rows (for "never taken leave" queries)