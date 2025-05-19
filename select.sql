-- Active: 1747421302880@@127.0.0.1@5433@update_db5
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL UNIQUE,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);


INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
    ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
    ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
    ('Emman', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
    ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
    ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
    ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
    ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
    ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
    ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
    ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
    ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
    ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
    ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
    ('Mia', 'Hernandez', 20, 'C', 'History', 'mia.hernandez@example.com', '2004-05-18', 'AB-', 'Canada'),
    ('James', 'Young', 21, 'B', 'Biology', 'james.young@example.com', '2003-02-08', 'O-', 'UK'),
    ('Emma', 'Gonzalez', 24, 'A', 'Physics', NULL, '1999-09-30', 'B+', 'Australia'),
    ('Miam', 'Wright', 19, 'C', 'Math', 'liam.wright@example.com', '2002-06-14', 'A+', 'New Zealand');


SELECT * FROM students;

SELECT email FROM students;

SELECT age FROM students;

select email as "std_email", age from students;

SELECT * FROM students ORDER BY first_name ASC;

SELECT * FROM students ORDER BY first_name DESC;

SELECT * FROM students ORDER BY age ASC;

Select * from students order by country asc;

Select * from students order by country DESC;

Select * from students order by dob DESC;

Select * from students order by dob ASC;

select country from students order by country asc;

select DISTINCT country from students order by country asc;

select distinct blood_group from students order by blood_group asc;

select * from students where country = 'USA';

select * from students where age <= 20;

select * from students where grade = 'B';

select * from students where grade = 'B' and course = 'Chemistry';

select * from students where blood_group = 'A+';

SELECT *
from students
where
    country = 'Australia'
    OR country = 'New Zealand'
    AND age > 20;

SELECT *
from students
where (
        country = 'USA'
        OR country = 'Australia'
    )
    AND age = 20;

select *
from students
where (
        grade = 'A'
        OR grade = 'B'
    )
    AND (
        course = 'Math'
        OR course = 'Physics'
    );

select * from students where country !=  'USA';


SELECT upper (first_name) from students;
SELECT lower (first_name) as first_name_in_lower_case ,  * from students;

SELECT concat(first_name,' ',last_name) as full_name from students;


-- scaler function
SELECT length(first_name) as first_name_length, length(last_name) as last_name_length from students;

-- aggregate function
select avg(age) as avg_age , min(age) as min_age ,  max(age) as max_age , sum(age) as total_age from students;

SELECT count(*) as total_students from students;

select max(first_name) from students;
select max(length(first_name)) from students;
select min(first_name) from students;
select min(length(first_name)) from students;


select * from students where NOT country != 'Australia'

-- select NULL != 1
-- select NULL = 1
-- select NULL = NULL
-- select NULL != NULL

SELECT * from students where email = 'john.doe@example.com'; 
-- SELECT * from students where email = NULL; 
SELECT * from students where email IS NULL; 
SELECT * from students where email IS NOT NULL; 

select * students where email is null DEFAULT 'not provided';
SELECT COALESCE (NULL, 'not provided') as email from students;
SELECT * FROM students WHERE email IS NULL;
SELECT COALESCE (email,'email not provided')as "Email",blood_group FROM students;

-- SELECT * from students;

SELECT * FROM students WHERE country = 'USA' OR country='Australia';
SELECT * FROM students WHERE country IN ('USA','UK', 'Canada');

SELECT * FROM students WHERE country NOT IN ('USA','UK', 'Canada');

SELECT * FROM students WHERE age between 15 AND 25;
SELECT * FROM students WHERE dob between '2002-01-01' AND '2005-12-31' ORDER BY dob;
SELECT * FROM students WHERE dob between '2002-01-01' AND '2005-12-31' ORDER BY dob ASC;
SELECT * FROM students WHERE dob between '2002-01-01' AND '2005-12-31' ORDER BY dob DESC;


SELECT * FROM students WHERE first_name LIKE 'J%';
SELECT * FROM students WHERE first_name LIKE '%am';
SELECT * FROM students WHERE first_name LIKE '___a%';
SELECT * FROM students WHERE first_name LIKE '___a';
SELECT * FROM students WHERE first_name LIKE '___a_';

SELECT * FROM students WHERE first_name ILIKE 'M%';
SELECT * FROM students WHERE first_name ILIKE '%M';

-- Limit , OFFSET

SELECT * FROM students LIMIT 5;
SELECT * FROM students LIMIT 5 OFFSET 14;

SELECT * from students;

-- DELETE FROM students ;
-- DELETE FROM students WHERE student_id=17;
-- DELETE FROM students WHERE grade='C';
-- DELETE FROM students WHERE grade = 'B' AND country = 'New Zealand' AND age < 20;          


UPDATE students set email='default@gmail.com' where email is null;
UPDATE students set email='default@gmail.com', age=45 where student_id=47;