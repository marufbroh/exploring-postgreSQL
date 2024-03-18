-- Active: 1709621644738@@127.0.0.1@5432@ph

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) not NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)