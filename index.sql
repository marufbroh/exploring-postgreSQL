-- Active: 1709621644738@@127.0.0.1@5432@ph

SELECT * from employees;

EXPLAIN ANALYSE
SELECT * from employees WHERE employee_name = 'Olivia Rodriguez';


CREATE INDEX idx_employees_last_name
ON employees (last_name);


SHOW data_directory;