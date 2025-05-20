SELECT * FROM students;

CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE
)


CREATE TABLE "post"(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);


INSERT INTO "user" (username) VALUES
('Akash'),
('John'),
('Doe');

SELECT * FROM "user";

ALTER TABLE "post" 
  ALTER COLUMN user_id SET NOT NULL;


INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 3),
('Exploring adventures with Sagor.🌟', NULL),
('Nodi''s wisdom always leaves me inspired. 📚', 3);


SELECT * FROM post; 

SELECT * FROM "user";

-- SELECT title , username from post;
-- JOIN "user" on post.user_id = "user".id;