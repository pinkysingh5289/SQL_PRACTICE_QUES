CREATE TABLE salary_history (
    id INT PRIMARY KEY,
    employee_id INT,
    old_salary INT,
    new_salary INT,
    change_date DATE
);

INSERT INTO salary_history VALUES
(1, 2, 85000, 95000, '2025-01-10'),
(2, 3, 55000, 60000, '2024-06-01'),
(3, 4, 70000, 75000, '2025-11-20'),
(4, 7, 90000, 100000, '2026-01-15'),
(5, 9, 50000, 58000, '2023-09-01');