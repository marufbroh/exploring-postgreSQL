-- Active: 1709621644738@@127.0.0.1@5432@ph

CREATE TABLE employees (
    emp_id INT, emp_name VARCHAR(50), dept_id INT
);

CREATE TABLE departments ( dept_id INT, dept_name VARCHAR(50) );

INSERT INTO employees VALUES (1, 'John Doe', 101);

INSERT INTO employees VALUES (2, 'Jane Smith', 102);

SELECT * from employees;

INSERT INTO departments VALUES (101, 'Human Recourses');

INSERT INTO departments VALUES (102, 'Marketing');

SELECT * from departments;

-- cross join
SELECT * from employees CROSS JOIN departments;

--  natural join
SELECT * from employees NATURAL JOIN departments;