CREATE TABLE yenlo (productID INTEGER PRIMARY KEY, name TEXT)

-- Each location will have a different amount of stock available for the product
CREATE TABLE stock (productID INTEGER FOREIGN KEY, location TEXT, amount INTEGER)

-- The products
INSERT INTO yenlo (productID, name)
VALUES (1, 'Basketball');
VALUES (2, 'Microphone');
VALUES (3, 'Piano');
VALUES (4, 'Book');
VALUES (5, 'Laptop');

-- The locations
-- Seattle
-- Boston
-- Austin

CREATE TABLE seattle (productID INTEGER FOREIGN KEY, basketball_amount INTEGER, microphone_amount INTEGER, piano_amount INTEGER, book_amount INTEGER, laptop_amount INTEGER);
INSERT INTO seattle (productID, basketball_amount, microphone_amount, piano_amount, book_amount, laptop_amount )

CREATE TABLE boston (productID INTEGER FOREIGN KEY, basketball_amount INTEGER, microphone_amount INTEGER, piano_amount INTEGER, book_amount INTEGER, laptop_amount INTEGER);
INSERT INTO boston (productID, basketball_amount, microphone_amount, piano_amount, book_amount, laptop_amount )

CREATE TABLE austin (productID INTEGER FOREIGN KEY, basketball_amount INTEGER, microphone_amount INTEGER, piano_amount INTEGER, book_amount INTEGER, laptop_amount INTEGER);
INSERT INTO austin (productID, basketball_amount, microphone_amount, piano_amount, book_amount, laptop_amount )
