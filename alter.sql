-- Active: 1747421302880@@127.0.0.1@5433@test_db3


-- CREATE TABLE partner (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     age INT CHECK (age >= 18),
--     email VARCHAR(100) NOT NULL,
--     UNIQUE (id,name, email),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
--     -- updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- )

SELECT * FROM partner;
ALTER TABLE partner
ADD COLUMN address VARCHAR(50) NOT NULL DEFAULT 'Unknown';

-- INSERT into partner values(1,'Tisha',20,'tishadey2025@gmail.com'),(2,'Probir',34,'probirghoshdev@gmail.com');
-- DROP COLUMN created_at;

ALTER TABLE partner 
-- RENAME COLUMN age to user_age;
RENAME COLUMN user_age TO age;

ALTER TABLE partner
   ALTER COLUMN name TYPE VARCHAR(100); 


ALTER TABLE partner
   ALTER COLUMN age SET NOT NULL;


ALTER TABLE partner
   alter COLUMN  age DROP NOT NULL; 

 ALTER TABLE partner
   ADD constraint unique_partner_age UNIQUE (age);  

Alter table partner
    ADD constraint pk_partner_name PRIMARY KEY(id);   

alter table partner
  drop constraint unique_partner_age;


-- SELECT * FROM person3;
-- TRUNCATE TABLE person3;

