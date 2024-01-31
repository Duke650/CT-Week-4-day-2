SELECT * FROM customers

INSERT INTO customers (customerName, customerEmail)
VALUES ('Mike', 'Mike@email.com')

SELECT * FROM movies

INSERT INTO movies (movieName, movieDate)
VALUES ('Inception', '2012-03-23')

SELECT * FROM concessions

INSERT INTO concessions (itemName, itemPrice)
VALUES ('Popcorn', 9)

SELECT * FROM tickets

INSERT INTO tickets (customerId, movieId)
VALUES (1, 1)

UPDATE movies
SET movieName = 'Batman'
WHERE movieName ='Inception'
I