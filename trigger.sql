-- Active: 1747421302880@@127.0.0.1@5433@update_db5@public

- Active: 1699467625194@@127.0.0.1@5432@ph@public

/*
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. 
*/

-- Table-Level Events:
-- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events
-- Database Startup, Database Shutdown, Connection start and end etc

-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW]
-- EXECUTE FUNCTION function_name();

CREATE TRIGGER tr
BEFORE DELETE
on user 
FOR EACH ROW
EXECUTE FUNCTION delete_user();

CREATE Table my_users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO
    my_users (name, email)
VALUES (
        'John Doe',
        'johndoe@gmail.com'
    ),
    (
        'Jane Smith',
        'janesmith@gmail.com'
    ),
    (
        'Alice Johnson',
        'alicejohnson@gmail.com'
    );

SELECT * FROM my_users;

CREATE TABLE delete_user_log_audit (
    id SERIAL PRIMARY KEY,
    user_id INT,
    deleted_user_name VARCHAR(50),
    deleted_user_email VARCHAR(50),
    deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM delete_user_log_audit;    


CREATE OR REPLACE FUNCTION log_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
  INSERT INTO delete_user_log_audit (user_id, deleted_user_name, deleted_user_email)
  VALUES (OLD.id, OLD.name, OLD.email);

  RAISE NOTICE 'User % with email % has been deleted', OLD.name, OLD.email;

  RETURN OLD;
END
$$;





CREATE OR REPLACE TRIGGER log_deleted_user_trigger
AFTER DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION log_deleted_user();



DELETE FROM my_users WHERE name = 'Alice Johnson';

SELECT * FROM delete_user_log_audit;

SELECT tgname
FROM pg_trigger
WHERE tgrelid = 'my_users'::regclass
AND NOT tgisinternal;

DROP TRIGGER IF EXISTS log_deleted_user_trigger ON my_users;


CREATE TRIGGER log_deleted_user_trigger
AFTER DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION log_deleted_user();

DELETE FROM my_users WHERE name = 'John Doe';
SELECT * FROM delete_user_log_audit;
SELECT * FROM my_users;        