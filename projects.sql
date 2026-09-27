CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    department_id INT,
    manager_id INT,
    budget INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(20)
);

INSERT INTO projects VALUES
(1, 'Website Revamp', 2, 3, 1200000, '2025-01-01', '2025-06-30', 'Completed'),
(2, 'CRM Upgrade',    1, 1,  900000, '2025-03-01', '2025-12-31', 'Completed'),
(3, 'Mobile App',     2, 3, 1500000, '2026-01-01', '2026-12-31', 'In Progress'),
(4, 'Ad Campaign',    4, 7,  300000, '2026-02-01', '2026-05-31', 'Completed'),
(5, 'Data Warehouse', 2, 3,  700000, '2026-04-01', '2026-10-31', 'In Progress');