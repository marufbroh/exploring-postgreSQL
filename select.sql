CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT check (age>=18),
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

SELECT * FROM students;

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('John', 'Doe', 20, 'A+', 'Mathematics', 'john.doe@example.com', '2004-05-15', 'A+', 'USA'),
    ('Alice', 'Smith', 19, 'B', 'Physics', 'alice.smith@example.com', '2003-09-28', 'B-', 'Canada'),
    ('Michael', 'Johnson', 21, 'A', 'Computer Science', 'michael.johnson@example.com', '2001-12-10', 'O+', 'UK'),
    ('Emily', 'Brown', 18, 'C', 'Biology', 'emily.brown@example.com', '2005-02-20', 'AB-', 'Australia'),
    ('David', 'Lee', 22, 'B+', 'Chemistry', 'david.lee@example.com', '2000-07-03', 'B+', 'New Zealand'),
    ('Sophia', 'Garcia', 20, 'A-', 'History', 'sophia.garcia@example.com', '2003-11-08', 'A-', 'Spain'),
    ('Daniel', 'Martinez', 19, 'C+', 'Geography', 'daniel.martinez@example.com', '2003-04-25', 'AB+', 'Germany'),
    ('Olivia', 'Rodriguez', 20, 'A', 'Literature', 'olivia.rodriguez@example.com', '2004-09-12', 'O-', 'France'),
    ('William', 'Hernandez', 21, 'B-', 'Economics', 'william.hernandez@example.com', '2001-03-30', 'A+', 'Italy'),
    ('Emma', 'Lopez', 18, 'A', 'Psychology', 'emma.lopez@example.com', '2005-01-07', 'B-', 'Japan');


