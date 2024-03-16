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