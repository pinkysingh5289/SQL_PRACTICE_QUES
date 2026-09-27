CREATE TABLE dependents (
    dependent_id INT PRIMARY KEY,
    employee_id INT,
    name VARCHAR(50)
);

INSERT INTO dependents VALUES
(1, 2, 'Child A'),
(2, 2, 'Child B'),
(3, 7, 'Spouse'),
(4, 4, 'Child A');