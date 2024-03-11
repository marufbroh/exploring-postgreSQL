-- Active: 1709621644738@@127.0.0.1@5432@ph
SELECT * from person;

ALTER TABLE person
ADD COLUMN profession VARCHAR(255) DEFAULT 'defProfession' NOT NULL;

INSERT INTO
    person
VALUES (
        10, 'Moye', 'Toye', 25, TRUE, 'hello 123'
    );

ALTER TABLE person DROP COLUMN email;

ALTER Table person RENAME COLUMN age to user_age;

ALTER TABLE person Alter COLUMN profession Type VARCHAR(250);

ALTER Table person Alter COLUMN user_age set NOT NULL;

ALTER Table person Alter COLUMN user_age DROP NOT NULL;

ALTER TABLE person
ADD constraint unique_person_user_age UNIQUE (user_age);

ALTER TABLE person
ADD constraint pk_person_person_id PRIMARY KEY (person_id);

ALTER TABLE person
DROP constraint unique_person_user_age;