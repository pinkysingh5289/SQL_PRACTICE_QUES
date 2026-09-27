CREATE TABLE project_assignments (
    id INT PRIMARY KEY,
    employee_id INT,
    project_id INT,
    start_date DATE,
    end_date DATE,
    hours_worked INT
);

INSERT INTO project_assignments VALUES
(1, 4, 1, '2025-01-01', '2025-06-30', 800),
(2, 9, 1, '2025-01-01', '2025-06-30', 750),
(3, 2, 2, '2025-03-01', '2025-12-31', 900),
(4, 4, 3, '2026-01-01', NULL, 300),
(5, 9, 3, '2026-01-01', NULL, 280),
(6, 8, 4, '2026-02-01', '2026-05-31', 400),
(7, 4, 5, '2026-04-01', NULL, 150);
-- Employees 5, 6, 10 have never been assigned a project