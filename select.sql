-- Active: 1709621644738@@127.0.0.1@5432@ph
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, age INT check (age >= 18), grade CHAR(2), course VARCHAR(50), email VARCHAR(100), dob DATE, blood_group VARCHAR(5), country VARCHAR(50)
);

INSERT INTO
    students (
        first_name, last_name, age, grade, course, email, dob, blood_group, country
    )
VALUES (
        'John', 'Doe', 20, 'A+', 'Mathematics', 'john.doe@example.com', '2004-05-15', 'A+', 'USA'
    ),
    (
        'Alice', 'Smith', 19, 'B', 'Physics', 'alice.smith@example.com', '2003-09-28', 'B-', 'Canada'
    ),
    (
        'Michael', 'Johnson', 21, 'A', 'Computer Science', 'michael.johnson@example.com', '2001-12-10', 'O+', 'UK'
    ),
    (
        'Emily', 'Brown', 18, 'C', 'Biology', 'emily.brown@example.com', '2005-02-20', 'AB-', 'Australia'
    ),
    (
        'David', 'Lee', 22, 'B+', 'Chemistry', 'david.lee@example.com', '2000-07-03', 'B+', 'New Zealand'
    ),
    (
        'Sophia', 'Garcia', 20, 'A-', 'History', 'sophia.garcia@example.com', '2003-11-08', 'A-', 'Spain'
    ),
    (
        'Daniel', 'Martinez', 19, 'C+', 'Geography', 'daniel.martinez@example.com', '2003-04-25', 'AB+', 'Germany'
    ),
    (
        'Olivia', 'Rodriguez', 20, 'A', 'Literature', 'olivia.rodriguez@example.com', '2004-09-12', 'O-', 'France'
    ),
    (
        'William', 'Hernandez', 21, 'B-', 'Economics', 'william.hernandez@example.com', '2001-03-30', 'A+', 'Italy'
    ),
    (
        'Emma', 'Lopez', 18, 'A', 'Psychology', 'emma.lopez@example.com', '2005-01-07', 'B-', 'Japan'
    );

SELECT * FROM students;

SELECT email, age, blood_group from students;

SELECT email as "Student Email" from students;

SELECT * FROM students ORDER BY first_name ASC;

SELECT country from students ORDER BY country ASC;

SELECT DISTINCT country from students;

SELECT DISTINCT blood_group from students;

SELECT * from students WHERE country = 'USA';

SELECT * from students WHERE course = 'Physics' AND grade = 'A+';

SELECT * from students WHERE country = 'USA' OR country = 'Canada';

SELECT * from students WHERE grade = 'A+' AND country = 'USA';

SELECT *
from students
WHERE (
        country = 'USA'
        OR country = 'Canada'
    )
    AND age = 20;

SELECT * from students WHERE age >= 20 AND course = 'Chemistry';

SELECT * from students WHERE age != 20;

SELECT * from students WHERE age <> 20;

SELECT upper(first_name) as first_name_in_upper_case, *
from students;

SELECT concat(first_name, ' ', last_name) as "Full Name", *
from students;

SELECT length(first_name) from students;

SELECT avg(age) from students;

SELECT max(age) from students;

SELECT sum(age) from students;

SELECT count(*) from students;

SELECT max(length(first_name)) from students;

SELECT * from students WHERE NOT country = 'USA';

-- SELECT NULL = 1;

SELECT * from students WHERE email IS NULL;

SELECT * from students WHERE email IS NOT NULL;

SELECT COALESCE(email, 'Email Not Available') as "Email", first_name
from students;

-- Multiple or using in
SELECT * from students WHERE country IN ('USA', 'UK', 'Canada');

SELECT * from students WHERE country NOT IN ('USA', 'UK', 'Canada');

SELECT * from students WHERE age BETWEEN 20 AND 22;

SELECT *
from students
WHERE
    dob BETWEEN '2000-01-01' AND '2005-01-01'
ORDER BY dob;

SELECT * from students WHERE first_name LIKE '%a';

SELECT * from students WHERE first_name LIKE 'A%';

SELECT * from students WHERE first_name LIKE '_a%';

SELECT * from students WHERE first_name ILIKE 'a%';