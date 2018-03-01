CREATE TABLE yenlo (productID INTEGER PRIMARY KEY, name TEXT)

-- The products
INSERT INTO yenlo (productID, name)
VALUES (1, 'Basketball');
VALUES (2, 'Microphone');
VALUES (3, 'Piano');
VALUES (4, 'Book');
VALUES (5, 'Laptop');
--------------------------------------------------------
-- Each location will have a different amount of stock available for the product
CREATE TABLE stock (productID INTEGER FOREIGN KEY, location TEXT, amount INTEGER)

-- The locations:
-- Seattle
-- Boston
-- Austin

INSERT INTO stock (productID, location, amount)
VALUES (1, 'Seattle', 10);
VALUES (2, 'Seattle', 10);
VALUES (3, 'Seattle', 10);
VALUES (4, 'Seattle', 10);
VALUES (5, 'Seattle', 10);

VALUES (1, 'Boston', 20);
VALUES (2, 'Boston', 20);
VALUES (3, 'Boston', 20);
VALUES (4, 'Boston', 20);
VALUES (5, 'Boston', 20);

VALUES (1, 'Austin', 30);
VALUES (2, 'Austin', 30);
VALUES (3, 'Austin', 30);
VALUES (4, 'Austin', 30);
VALUES (5, 'Austin', 30);

--------------------------------------------------------

CREATE TABLE seattle (productID INTEGER FOREIGN KEY, basketball_amount INTEGER, microphone_amount INTEGER, piano_amount INTEGER, book_amount INTEGER, laptop_amount INTEGER);
INSERT INTO seattle (productID, basketball_amount, microphone_amount, piano_amount, book_amount, laptop_amount )

CREATE TABLE boston (productID INTEGER FOREIGN KEY, basketball_amount INTEGER, microphone_amount INTEGER, piano_amount INTEGER, book_amount INTEGER, laptop_amount INTEGER);
INSERT INTO boston (productID, basketball_amount, microphone_amount, piano_amount, book_amount, laptop_amount )

CREATE TABLE austin (productID INTEGER FOREIGN KEY, basketball_amount INTEGER, microphone_amount INTEGER, piano_amount INTEGER, book_amount INTEGER, laptop_amount INTEGER);
INSERT INTO austin (productID, basketball_amount, microphone_amount, piano_amount, book_amount, laptop_amount )
