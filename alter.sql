-- Active: 1709621644738@@127.0.0.1@5432@ph
SELECT * from person;

ALTER TABLE person
    ADD COLUMN profession VARCHAR(255) DEFAULT 'defProfession' NOT NULL;

