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