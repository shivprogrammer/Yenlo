CREATE TABLE yenlo (productID INTEGER PRIMARY KEY, name TEXT)

-- Each location will have a different amount of stock available for the product
CREATE TABLE stock (location TEXT, amount INTEGER)

-- The products
INSERT INTO yenlo (productID, name)
VALUES (1, 'Basketball');
VALUES (2, 'Microphone');
VALUES (3, 'Piano');
VALUES (4, 'Book');
VALUES (5, 'Laptop');

-- The locations
