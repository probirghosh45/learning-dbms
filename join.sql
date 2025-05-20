-- Active: 1747421302880@@127.0.0.1@5433@update_db5

-- Active: 1699467625194@@127.0.0.1@5432@ph@public

CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)



INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


-- DROP Table post;
-- DROP Table "user";

SELECT * from "user";
SELECT * from post;
select id from post;
SELECT title,username from post;
SELECT * from post JOIN "user" on post.user_id = "user".id;
SELECT title,username from post JOIN "user" on post.user_id = "user".id;

SELECT id from post;
SELECT post.id from post;
SELECT "user".id from post;
SELECT id from post JOIN "user" on post.user_id = "user".id;
SELECT post.id from post JOIN "user" on post.user_id = "user".id;
SELECT "user".id from post JOIN "user" on post.user_id = "user".id;

-- as u alias
-- p alias

SELECT p.id from post as p JOIN "user" as u on p.user_id = u.id;
SELECT u.id from post as p JOIN "user" as u on p.user_id = u.id;



SELECT * from post JOIN "user" on post.user_id = "user".id;

ALTER TABLE post ALTER COLUMN user_id DROP NOT NULL;

INSERT INTO post (id,title,user_id) VALUES (9,'Hi DBMS', NULL);

SELECT * FROM post;


SELECT * from post JOIN "user" on post.user_id = "user".id; 

-- Left Join 
SELECT * from post LEFT JOIN "user" on post.user_id = "user".id;

-- Right Join
SELECT * from post RIGHT JOIN "user" on post.user_id = "user".id;