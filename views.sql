-- Active: 1747421302880@@127.0.0.1@5433@update_db5@public

SELECT * FROM employees;
CREATE View dept_avg_salary AS SELECT department_name,avg(salary) FROM employees GROUP BY department_name;

SELECT * FROM dept_avg_salary;

CREATE View test_view as 
SELECT employee_name, salary, department_name 
FROM employees 
WHERE department_name in 
(SELECT department_name FROM employees WHERE department_name LIKE '%R%');

SELECT * FROM test_view;

-- Simplifying complex queries
-- Improved security
-- Enhanced data abstraction

=>

