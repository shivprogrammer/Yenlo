-- POSSIBLE TODO: May need to seperate out each city into its own table, for security purposes.
-- POSSIBLE TODO: May have to add another product that is not used initially, but can be saved for use for the insert (POST) statements of the API

-- To establish the database
DROP DATABASE IF EXISTS yenlo;
CREATE DATABASE yenlo;
USE yenlo;

--------------------------------------------------------
-- Creation of the yenloProducts table
DROP TABLE IF EXISTS yenloProducts;
CREATE TABLE yenloProducts (productID INTEGER PRIMARY KEY, name TEXT, price DECIMAL(5, 2));

-- The products
INSERT INTO yenloProducts (productID, name, price)
VALUES (1, 'Calming Water Painting', 49.99);

INSERT INTO yenloProducts (productID, name, price)
VALUES (2, 'Microphone to Sing like Bieber', 399.99);

INSERT INTO yenloProducts (productID, name, price)
VALUES (3, 'Dave Chappelle Comedy Collection', 24.99);

INSERT INTO yenloProducts (productID, name, price)
VALUES (4, 'Sweet Gaming Chair', 99.99);

INSERT INTO yenloProducts (productID, name, price)
VALUES (5, 'Super Saiyan T-Shirt', 19.99);

--------------------------------------------------------
-- Creating and establishing the amount of stock for various yenlo store locations
DROP TABLE IF EXISTS yenloStock;

-- itemID is an unique ID that is combination of productID and an arbitrary numerical representation of location
CREATE TABLE yenloStock (itemID DECIMAL(2, 1) PRIMARY KEY, productID INTEGER, location TEXT, amount INTEGER, FOREIGN KEY (productID) REFERENCES yenloProducts(productID));

-- The locations:
-- Online
-- Seattle
-- Boston
-- Austin

-- Online stock amount information
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (0.1, 1, 'Online', 40);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (0.2, 2, 'Online', 40);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (0.3, 3, 'Online', 40);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (0.4, 4, 'Online', 40);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (0.5, 5, 'Online', 40);

-- Seattle stock information
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (1.1, 1, 'Seattle', 10);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (1.2, 2, 'Seattle', 10);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (1.3, 3, 'Seattle', 10);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (1.4, 4, 'Seattle', 10);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (1.5, 5, 'Seattle', 10);

-- Boston stock information
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (2.1, 1, 'Boston', 20);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (2.2, 2, 'Boston', 20);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (2.3, 3, 'Boston', 20);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (2.4, 4, 'Boston', 20);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (2.5, 5, 'Boston', 20);

-- Austin stock information
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (3.1, 1, 'Austin', 30);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (3.2, 2, 'Austin', 30);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (3.3, 3, 'Austin', 30);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (3.4, 4, 'Austin', 30);
INSERT INTO yenloStock (itemID, productID, location, amount)
VALUES (3.5, 5, 'Austin', 30);
--------------------------------------------------------
