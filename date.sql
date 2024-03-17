-- Active: 1709621644738@@127.0.0.1@5432@ph

-- SHOW timezone;

SELECT now();

CREATE Table timeZ (
    ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone
);

INSERT into
    timez
VALUES (
        '2024-01-12 10:45:00', '2024-01-12 10:45:00'
    );

SELECT * from timez;

SELECT CURRENT_DATE;

SELECT now():: date;

SELECT now():: time;

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT to_char(now(), 'ddd');

SELECT CURRENT_DATE - INTERVAL '1 Year';

SELECT age(CURRENT_DATE, '2001-04-27');

SELECT *, age(CURRENT_DATE, dob) from students;

SELECT extract(year from '2024-01-25':: date);

SELECT 0:: BOOLEAN;