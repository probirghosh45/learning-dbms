-- Active: 1747421302880@@127.0.0.1@5433@b5_ms_2_postgresql_ccs_1@public
CREATE DATABASE b5_ms_2_postgresql_ccs_1;
CREATE TABLE publishers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
)

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author_name VARCHAR(100) NOT NULL, 
    published_year BIGINT NOT NULL, 
    price NUMERIC(10, 2) NOT NULL, 
    in_stock BOOLEAN NOT NULL, 
    publisher_id INT,
    Foreign Key (publisher_id) REFERENCES publishers (id)
)



