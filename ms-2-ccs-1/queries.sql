-- Active: 1747421302880@@127.0.0.1@5433@b5_ms_2_postgresql_ccs_1@public

ALTER TABLE books ADD genre VARCHAR(50);

SELECT * FROM books ;

ALTER TABLE books DROP COLUMN genre;
SELECT * FROM books ;


ALTER TABLE books Alter COLUMN in_stock SET DEFAULT 0;
ALTER TABLE books Alter COLUMN in_stock Type BOOLEAN;

ALTER Table books DROP COLUMN in_stock;

ALTER TABLE books ADD COLUMN in_stock BOOLEAN;
ALTER TABLE books ADD COLUMN in_stock BOOLEAN DEFAULT true;

SELECT * FROM books;
SELECT title,price FROM books;
SELECT title,price FROM books WHERE in_stock = false;

SELECT * FROM books where author_name = 'George Orwell'

SELECT title,length (title) from books;


SELECT count(*) FROM books;

SELECT * FROM books;
SELECT avg(price) FROM books;

SELECT max(price),min(price) FROM books;

-- agrregate

SELECT * FROM books where price BETWEEN 250 AND 300;

SELECT * from books WHERE title LIKE 'The%';
SELECT * from books WHERE title LIKE 'the%';


SELECT * from books WHERE title ILIKE 'the%'; 

SELECT * FROM books WHERE title ILIKE '%t%';
SELECT * FROM books WHERE title ILIKE '%t';

SELECT * FROM books WHERE author_name IN ('George Orwell','J.K. Rowling');

SELECT * FROM books LIMIT 5 OFFSET 2

select * FROM books;
select * FROM publishers;


UPDATE books SET price=price*1.10

SELECT author_name , count(*) FROM books GROUP BY author_name;


SELECT author_name , count (*) from books GROUP BY author_name HAVING count(*) > 1;


ALTER TABLE books DROP Constraint books_publisher_id_fkey;
ALTER Table books ADD CONSTRAINT books_publisher_id_fkey 
FOREIGN KEY (publisher_id) REFERENCES publishers (id) ON DELETE CASCADE;

DELETE FROM publishers WHERE id = 3;

SELECT * FROM books;
SELECT * FROM publishers;


drop Table books;
DROP table publishers;
SELECT * FROM books;
SELECT * FROM publishers;



