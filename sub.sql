-- Active: 1709621644738@@127.0.0.1@5432@ph
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY, employee_name VARCHAR(50) NOT NULL, department_name VARCHAR(50) NOT NULL, salary DECIMAL(10, 2), hire_date DATE
);

INSERT INTO
    employees (
        employee_name, department_name, salary, hire_date
    )
VALUES (
        'John Smith', 'Human Resources', 60000.00, '2019-05-15'
    ),
    (
        'Alice Johnson', 'Finance', 70000.00, '2018-09-28'
    ),
    (
        'Michael Davis', 'Marketing', 80000.00, '2017-12-10'
    ),
    (
        'Emily Brown', 'Information Technology', 55000.00, '2020-02-20'
    ),
    (
        'David Lee', 'Research and Development', 65000.00, '2016-07-03'
    ),
    (
        'Sophia Garcia', 'Sales', 75000.00, '2015-11-08'
    ),
    (
        'Daniel Martinez', 'Customer Service', 72000.00, '2019-04-25'
    ),
    (
        'Olivia Rodriguez', 'Operations', 68000.00, '2018-09-12'
    ),
    (
        'William Hernandez', 'Legal', 67000.00, '2017-03-30'
    ),
    (
        'Emma Lopez', 'Quality Assurance', 60000.00, '2020-01-07'
    ),
    (
        'Liam Wilson', 'Human Resources', 62000.00, '2018-08-25'
    ),
    (
        'Ella Thompson', 'Finance', 73000.00, '2017-11-14'
    ),
    (
        'Noah Martinez', 'Marketing', 78000.00, '2020-03-08'
    ),
    (
        'Ava Robinson', 'Information Technology', 56000.00, '2018-06-20'
    ),
    (
        'James Harris', 'Research and Development', 67000.00, '2016-09-03'
    ),
    (
        'Isabella Clark', 'Sales', 71000.00, '2019-12-18'
    ),
    (
        'Liam Walker', 'Customer Service', 74000.00, '2017-05-22'
    ),
    (
        'Mia Perez', 'Operations', 69000.00, '2018-10-09'
    ),
    (
        'Benjamin Turner', 'Legal', 68000.00, '2020-01-30'
    ),
    (
        'Charlotte Baker', 'Quality Assurance', 61000.00, '2017-04-12'
    ),
    (
        'Alexander Hall', 'Human Resources', 63000.00, '2018-02-05'
    ),
    (
        'Amelia Young', 'Finance', 76000.00, '2020-07-17'
    ),
    (
        'Oliver White', 'Marketing', 79000.00, '2019-10-28'
    ),
    (
        'Sophia Martin', 'Information Technology', 57000.00, '2017-12-01'
    ),
    (
        'William Scott', 'Research and Development', 68000.00, '2018-04-16'
    ),
    (
        'Ava Diaz', 'Sales', 72000.00, '2021-02-22'
    ),
    (
        'Elijah Rodriguez', 'Customer Service', 75000.00, '2019-06-09'
    ),
    (
        'Emma Evans', 'Operations', 70000.00, '2016-08-13'
    ),
    (
        'Michael Green', 'Legal', 69000.00, '2018-11-05'
    ),
    (
        'Olivia Adams', 'Quality Assurance', 62000.00, '2020-09-24'
    );

SELECT * from employees;

-- DROP TABLE employees;

SELECT max(salary)
from employees
WHERE
    department_name = 'Human Resources';

SELECT *
from employees
WHERE
    salary > (
        SELECT max(salary)
        from employees
        WHERE
            department_name = 'Human Resources'
    );

SELECT *, (
        SELECT sum(salary) as salary_sum
        from employees
    )
from employees;

SELECT *
from (
        SELECT department_name, sum(salary)
        from employees
        GROUP BY
            department_name
    ) as sum_dept_salary

SELECT department_name, sum(salary)
from employees
GROUP BY
    department_name;

SELECT
    employee_name,
    salary,
    department_name
FROM employees
WHERE
    department_name IN (
        SELECT department_name
        from employees
        WHERE
            department_name LIKE '%R%'
    );

