-- SQL commands are not case-sensitive
-- USE to select the folder
USE sql_store;

-- SELECT, FROM, WHERE, ORDER BY
-- These causes above should always be in order, otherwise a syntax error
-- SQL statements are separated by semicolons
SELECT * -- SELECT to select columns
FROM customers
WHERE customer_id = 1
ORDER BY first_name;

-- You can use arithmatic operations on queries
-- AS to give an alias
SELECT last_name, first_name AS 'fisrt name', (points + 10) * 100 AS discount_factor
FROM customers;

SELECT state
FROM customers;

SELECT name, unit_price, unit_price * 1.1 AS 'new price'
FROM products;


--- Create and drop database and tables
--- Varchar is like string in SQL
CREATE DATABASE test;
DROP DATABASE test;

CREATE DATABASE record_company;
USE record_company;
CREATE TABLE test(
	test_column INT
);
ALTER TABLE test
ADD another_column VARCHAR(255);
DROP TABLE test;


--- Example: a record company

CREATE DATABASE record_company;
USE record_company;

--- NOT NULL means it always have a name defined when you insert a band
--- use an id to identify that one row even if it shares the same name as the other
--- id to identify individual records
CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT, 
	name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

--- FOREIGN KEY to reference another table
CREATE TABLE albums (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id)
);
