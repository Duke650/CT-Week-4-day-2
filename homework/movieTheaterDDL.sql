CREATE TABLE customers (
    customerId SERIAL PRIMARY KEY,
    customerName VARCHAR(255) NOT NULL,
    customerEmail VARCHAR(255) NOT NULL
)

CREATE TABLE movies (
    movieId SERIAL PRIMARY KEY,
    movieName VARCHAR(255) UNIQUE NOT NULL,
    movieDate DATE NOT NULL
)

CREATE TABLE tickets (
    ticketId SERIAL PRIMARY KEY,
    customerId INT REFERENCES customers(customerId),
    movieName REFERENCES movies(movieName)
)

CREATE TABLE concessions (
    concessionId SERIAL PRIMARY KEY,
    itemName VARCHAR(255) UNIQUE NOT NULL,
    itemPrice INT NOT NULL
)


DROP TABLE tickets
DROP TABLE concessions
DROP TABLE movies
DROP TABLE customers