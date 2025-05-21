-- Active: 1747421302880@@127.0.0.1@5433@update_db5@public

SELECT * FROM employees;
EXPLAIN ANALYSE
SELECT * FROM employees WHERE employee_name = 'Smith';

CREATE INDEX idx_employee_name ON employees (employee_name);

SHOW data_directory;