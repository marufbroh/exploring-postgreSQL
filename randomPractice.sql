-- CREATE  TABLE person (
-- person_id SERIAL,
-- first_name VARCHAR(50),
-- last_name VARCHAR(50),
-- age INTEGER,
-- is_active BOOLEAN,
-- dob DATE
-- )
--
-- ALTER  TABLE person RENAME to "user";

-- DROP  TABLE "user";

-- CREATE  TABLE person (
-- person_id SERIAL PRIMARY KEY,
-- first_name VARCHAR(50) not NULL,
-- last_name VARCHAR(50) not NULL,
-- age INTEGER CHECK (age>= 0),
-- is_active BOOLEAN DEFAULT TRUE,
-- email VARCHAR(255) UNIQUE
-- )

-- CREATE  TABLE person2 (
-- id SERIAL,
-- username VARCHAR(20) NOT NULL UNIQUE,
-- first_name VARCHAR(50) not NULL,
-- last_name VARCHAR(50) not NULL,
-- age INTEGER CHECK (age>= 0),
-- is_active BOOLEAN DEFAULT TRUE,
-- email VARCHAR(255) UNIQUE
-- PRIMARY KEY (id)
-- )

-- CREATE  TABLE person3 (
-- id SERIAL,
-- user_name VARCHAR(20) NOT NULL UNIQUE,
-- first_name VARCHAR(50) not NULL,
-- last_name VARCHAR(50) not NULL,
-- age INTEGER CHECK (age>= 18),
-- is_active BOOLEAN DEFAULT TRUE,
-- email VARCHAR(255) UNIQUE,
-- PRIMARY KEY (id, user_name),
-- UNIQUE(user_name, age)
-- );

-- INSERT  INTO person (person_id, first_name, last_name, age, is_active) VALUES(2,'Tamim', 'Iqbal', 24,true);

-- INSERT  INTO person (person_id, first_name, last_name, age, is_active) VALUES(5,'Tamim', 'Moye', 24,true), (6,'Tamim', 'Toye', 24,true);

-- INSERT  INTO person VALUES(7,'Tamim', 'Moye', 24,true), (8,'Tamim', 'Toye', 24,true);