CREATE TABLE promotions (
    promotion_id INT PRIMARY KEY,
    employee_id INT,
    promotion_date DATE,
    salary_before INT,
    salary_after INT
);

INSERT INTO promotions VALUES
(1, 2, '2025-01-10', 85000, 95000),
(2, 3, '2024-06-01', 55000, 60000),
(3, 7, '2026-01-15', 90000, 100000),
(4, 2, '2023-05-01', 75000, 85000); -- Anita promoted twice