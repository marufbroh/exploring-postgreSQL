-- Active: 1709621644738@@127.0.0.1@5432@ph

CREATE TABLE my_users (
    user_name VARCHAR(50), email VARCHAR(100)
);

INSERT INTO
    my_users
VALUES ('maruf', 'maruf@gmail.com'),
    ('tamim', 'tamim@gmail.com');

SELECT * from my_users;

SELECT * from deleted_users_audit;

CREATE Table deleted_users_audit (
    deleted_user_name VARCHAR(50), deletedAt TIMESTAMP
);

-- trigger function
CREATE or REPLACE Function save_deleted_user() RETURNS 
TRIGGER 
LANGUAGE plpgsql AS 
$$
BEGIN
	INSERT INTO
	    deleted_users_audit
	VALUES (OLD.user_name, now());
	Raise notice 'Deleted user audit log created';
	RETURN OLD;
END
$$; 

CREATE
or REPLACE TRIGGER save_deleted_user_trigger BEFORE DELETE ON my_users FOR EACH Row
EXECUTE FUNCTION save_deleted_user ();

DELETE from my_users WHERE user_name = 'maruf';