-- Active: 1747421302880@@127.0.0.1@5433@b5_ms_2_postgresql_ccs_1@public

-- Active: 1744058703059@@127.0.0.1@5432@b5_psql_cs
INSERT INTO publishers (name)
 VALUES 
('Penguin Books'),
('HarperCollins'),
('Bloomsbury'),
('Oxford University Press');

SELECT * FROM publishers;

INSERT INTO books (title, author_name, published_year, price, in_stock, publisher_id)
 VALUES
('The Hobbit', 'J.R.R. Tolkien', 1937, 250.00, true, 1),
('Harry Potter and the Philosophers Stone', 'J.K. Rowling', 1997, 300.00, true, 3),
('To Kill a Mockingbird', 'Harper Lee', 1960, 180.00, false, 2),
('1984', 'George Orwell', 1949, 220.00, true, 1),
('Animal Farm', 'George Orwell', 1945, 150.00, true, 4),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 200.00, false, 1),
('Brave New World', 'Aldous Huxley', 1932, 230.00, true, NULL); -- No publisher


SELECT * FROM books;