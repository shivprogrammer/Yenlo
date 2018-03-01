-- To establish the database
DROP DATABASE IF EXISTS yenlo;
CREATE DATABASE yenlo;
USE yenlo;

--------------------------------------------------------
-- Creation of the products table
DROP TABLE IF EXISTS products;
CREATE TABLE products (productID INTEGER PRIMARY KEY, name TEXT);

-- The products
INSERT INTO products (productID, name)
VALUES (1, 'Basketball');

INSERT INTO products (productID, name)
VALUES (2, 'Microphone');

INSERT INTO products (productID, name)
VALUES (3, 'Piano');

INSERT INTO products (productID, name)
VALUES (4, 'Book');

INSERT INTO products (productID, name)
VALUES (5, 'Laptop');
--------------------------------------------------------
-- Each location will have a different amount of stock available for the product

DROP TABLE IF EXISTS stock;
CREATE TABLE stock (productID INTEGER FOREIGN KEY, location TEXT, amount INTEGER)

-- The locations:
-- Seattle
-- Boston
-- Austin

-- Seattle stock information
INSERT INTO stock (productID, location, amount)
VALUES (1, 'Seattle', 10);
INSERT INTO stock (productID, location, amount)
VALUES (2, 'Seattle', 10);
INSERT INTO stock (productID, location, amount)
VALUES (3, 'Seattle', 10);
INSERT INTO stock (productID, location, amount)
VALUES (4, 'Seattle', 10);
INSERT INTO stock (productID, location, amount)
VALUES (5, 'Seattle', 10);

-- Boston stock information
INSERT INTO stock (productID, location, amount)
VALUES (1, 'Boston', 20);
INSERT INTO stock (productID, location, amount)
VALUES (2, 'Boston', 20);
INSERT INTO stock (productID, location, amount)
VALUES (3, 'Boston', 20);
INSERT INTO stock (productID, location, amount)
VALUES (4, 'Boston', 20);
INSERT INTO stock (productID, location, amount)
VALUES (5, 'Boston', 20);

-- Austin stock information
INSERT INTO stock (productID, location, amount)
VALUES (1, 'Austin', 30);
INSERT INTO stock (productID, location, amount)
VALUES (2, 'Austin', 30);
INSERT INTO stock (productID, location, amount)
VALUES (3, 'Austin', 30);
INSERT INTO stock (productID, location, amount)
VALUES (4, 'Austin', 30);
INSERT INTO stock (productID, location, amount)
VALUES (5, 'Austin', 30);

--------------------------------------------------------
