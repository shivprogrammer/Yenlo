--TODO Switch the primary key from the products table to the stock table

-- To establish the database
DROP DATABASE IF EXISTS yenlo;
CREATE DATABASE yenlo;
USE yenlo;

--------------------------------------------------------
-- Creation of the products table
DROP TABLE IF EXISTS products;
CREATE TABLE products (productID INTEGER PRIMARY KEY, name TEXT, price DECIMAL(5, 2));

-- The products
INSERT INTO products (productID, name, price)
VALUES (1, 'Calming Water Painting', 49.99);

INSERT INTO products (productID, name, price)
VALUES (2, 'Microphone to Sing like Bieber', 399.99);

INSERT INTO products (productID, name, price)
VALUES (3, 'Dave Chappelle Comedy Collection', 24.99);

INSERT INTO products (productID, name, price)
VALUES (4, 'Sweet Gaming Chair', 99.99);

INSERT INTO products (productID, name, price)
VALUES (5, 'Super Saiyan T-Shirt', 19.99);
--------------------------------------------------------
-- Each location will have a different amount of stock available for the product

DROP TABLE IF EXISTS stock;
CREATE TABLE stock (productID INTEGER, location TEXT, amount INTEGER, FOREIGN KEY (productID) REFERENCES products(productID));

-- The locations:
-- Seattle
-- Boston
-- Austin
-- Online

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

-- Online stock amount information
INSERT INTO stock (productID, location, amount)
VALUES (1, 'Online', 40);
INSERT INTO stock (productID, location, amount)
VALUES (2, 'Online', 40);
INSERT INTO stock (productID, location, amount)
VALUES (3, 'Online', 40);
INSERT INTO stock (productID, location, amount)
VALUES (4, 'Online', 40);
INSERT INTO stock (productID, location, amount)
VALUES (5, 'Online', 40);
--------------------------------------------------------
