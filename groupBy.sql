-- Active: 1709621644738@@127.0.0.1@5432@ph

SELECT * from students;

SELECT age, count(*) from students GROUP BY age;

SELECT age, count(*) from students GROUP BY age HAVING avg(age) > 20;

SELECT extract(
        year
        from dob
    ) as birth_year, count(*)
from students
GROUP BY
    birth_year