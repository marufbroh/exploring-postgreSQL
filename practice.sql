-- Active: 1709621644738@@127.0.0.1@5432@ph
DROP Table departments;

DROP Table employees;

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY, employee_name VARCHAR(50), department_id INT REFERENCES departments (department_id), salary DECIMAL(10, 2), hire_date DATE
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY, department_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY, customer_id INT, order_date DATE, total_amount DECIMAL(10, 2)
)

INSERT INTO
    departments (department_name)
VALUES ('Human Resources'),
    ('Finance'),
    ('Marketing'),
    ('Information Technology'),
    ('Research and Development'),
    ('Sales'),
    ('Customer Service'),
    ('Operations'),
    ('Legal'),
    ('Quality Assurance');

INSERT INTO
    employees (
        employee_name, department_id, salary, hire_date
    )
VALUES (
        'John Smith', 3, 60000.00, '2020-05-15'
    ),
    (
        'Alice Johnson', 5, 75000.00, '2019-09-28'
    ),
    (
        'Michael Davis', 4, 80000.00, '2018-12-10'
    ),
    (
        'Emily Brown', 2, 55000.00, '2021-02-20'
    ),
    (
        'David Lee', 1, 65000.00, '2017-07-03'
    ),
    (
        'Sophia Garcia', 6, 70000.00, '2016-11-08'
    ),
    (
        'Daniel Martinez', 8, 72000.00, '2020-04-25'
    ),
    (
        'Olivia Rodriguez', 7, 68000.00, '2019-09-12'
    ),
    (
        'William Hernandez', 9, 67000.00, '2018-03-30'
    ),
    (
        'Emma Lopez', 10, 60000.00, '2021-01-07'
    );

INSERT INTO
    employees (
        employee_name, department_id, salary, hire_date
    )
VALUES (
        'Liam Wilson', 3, 62000.00, '2019-08-25'
    ),
    (
        'Ella Thompson', 5, 73000.00, '2017-11-14'
    ),
    (
        'Noah Martinez', 4, 78000.00, '2020-03-08'
    ),
    (
        'Ava Robinson', 2, 56000.00, '2018-06-20'
    ),
    (
        'James Harris', 1, 67000.00, '2016-09-03'
    ),
    (
        'Isabella Clark', 6, 71000.00, '2019-12-18'
    ),
    (
        'Liam Walker', 8, 74000.00, '2017-05-22'
    ),
    (
        'Mia Perez', 7, 69000.00, '2018-10-09'
    ),
    (
        'Benjamin Turner', 9, 68000.00, '2020-01-30'
    ),
    (
        'Charlotte Baker', 10, 61000.00, '2017-04-12'
    ),
    (
        'Alexander Hall', 3, 63000.00, '2018-02-05'
    ),
    (
        'Amelia Young', 5, 76000.00, '2020-07-17'
    ),
    (
        'Oliver White', 4, 79000.00, '2019-10-28'
    ),
    (
        'Sophia Martin', 2, 57000.00, '2017-12-01'
    ),
    (
        'William Scott', 1, 68000.00, '2018-04-16'
    ),
    (
        'Ava Diaz', 6, 72000.00, '2021-02-22'
    ),
    (
        'Elijah Rodriguez', 8, 75000.00, '2019-06-09'
    ),
    (
        'Emma Evans', 7, 70000.00, '2016-08-13'
    ),
    (
        'Michael Green', 9, 69000.00, '2018-11-05'
    ),
    (
        'Olivia Adams', 10, 62000.00, '2020-09-24'
    );

SELECT * from departments;

SELECT * from employees;

SELECT *
from employees
    JOIN departments on employees.department_id = departments.department_id;

SELECT * from employees JOIN departments USING (department_id);

SELECT
    department_name,
    round(avg(salary)) as average_salary
from employees
    JOIN departments USING (department_id)
GROUP BY
    department_name;

SELECT department_name, count(*)
from employees
    JOIN departments USING (department_id)
GROUP BY
    department_name;

SELECT
    department_name,
    avg(salary) as average_salary
from employees
    JOIN departments USING (department_id)
GROUP BY
    department_name
ORDER BY average_salary DESC
LIMIT 1;

SELECT extract(
        year
        from hire_date
    ) as "year", count(*)
from employees
GROUP BY
    "year";

INSERT INTO
    orders (
        customer_id, order_date, total_amount
    )
VALUES (101, '2023-05-15', 150.00),
    (102, '2023-09-28', 280.50),
    (103, '2023-12-10', 75.25),
    (102, '2023-02-20', 430.80),
    (105, '2023-07-03', 90.00),
    (106, '2023-11-08', 210.75),
    (101, '2023-04-25', 320.60),
    (108, '2023-09-12', 185.20),
    (109, '2023-03-30', 500.00),
    (115, '2023-01-07', 80.45);

-- DROP TABLE orders;
SELECT * from orders;

SELECT
    customer_id,
    count(order_id) as order_count,
    sum(total_amount) as total_spent
from orders
GROUP BY
    customer_id
HAVING
    count(order_id) >= 2;

SELECT extract(
        month
        from order_date
    ) as "month", count(order_id), sum(total_amount)
from orders
WHERE
    extract(
        year
        from order_date
    ) = 2023
GROUP BY
    "month";