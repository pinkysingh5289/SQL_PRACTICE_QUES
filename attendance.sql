CREATE TABLE attendance (
    id INT PRIMARY KEY,
    employee_id INT,
    work_date DATE,
    arrival_time TIME,
    scheduled_start_time TIME
);

INSERT INTO attendance VALUES
(1, 2, '2026-09-20', '09:05:00', '09:00:00'),
(2, 2, '2026-09-21', '08:55:00', '09:00:00'),
(3, 3, '2026-09-20', '09:20:00', '09:00:00'),
(4, 4, '2026-09-20', '08:59:00', '09:00:00');