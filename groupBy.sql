-- Active: 1747421302880@@127.0.0.1@5433@update_db5
SELECT * from students;

-- SELECT * from students GROUP BY country;
SELECT country from students GROUP BY country;

SELECT country, count(*) from students GROUP BY country;

SELECT country, avg(age) from students GROUP BY country;

SELECT country, avg(age) from students GROUP BY country HAVING avg(age) >= 22;

SELECT extract(year FROM dob) as year_of_birth, count(*) FROM students GROUP BY year_of_birth;