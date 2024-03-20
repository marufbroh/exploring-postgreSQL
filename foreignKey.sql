-- Active: 1709621644738@@127.0.0.1@5432@ph

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY, username VARCHAR(25) not NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY, title TEXT NOT NULL, user_id INTEGER REFERENCES "user" (id)
    -- on delete set NULL
    --    ON Delete CASCADE
    --  ON DELETE SET DEFAULT DEFAULT 2
);

ALTER table post alter COLUMN user_id set NOT NULL;

DROP Table post;

DROP Table "user";

INSERT INTO
    "user" (username)
VALUES ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi');

SELECT * from "user";

INSERT INTO
    post (title, user_id)
VALUES (
        'Exploring the World of Machine Learning', 1
    ),
    (
        'The Art of Cooking: A Culinary Journey', 3
    ),
    (
        'Discovering the Wonders of Astrophysics', 2
    ),
    (
        'A Guide to Productivity: Tips and Tricks', 4
    ),
    (
        'Travel Diaries: Adventures in South America', 2
    ),
    (
        'Unraveling the Mysteries of Quantum Physics', 1
    ),
    (
        'Healthy Living: Fitness and Nutrition', 3
    ),
    (
        'A Writer''s Reflection: Finding Inspiration', 2
    ),
    (
        'The Power of Meditation: A Path to Inner Peace', 4
    ),
    (
        'Capturing Moments: Photography as a Passion', 3
    );

SELECT * from post;

-- delete
DELETE from "user" WHERE id = 5;

-- see another table data using REFERENCES
select *  from post  full OUTER join "user"  on post.user_id = "user".id

SELECT title, username FROM post
JOIN "user" on post.user_id = "user".id;