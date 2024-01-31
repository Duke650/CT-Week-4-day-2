CREATE TABLE users (
userId SERIAL PRIMARY KEY,
fullName VARCHAR(255),
homeAddress VARCHAR(255),
emailAddress VARCHAR(255)
)

CREATE TABLE orders (
orderId SERIAL PRIMARY KEY,
userId INT REFERENCES users(userId),
orderDate DATE
)

CREATE TABLE items (
itemId SERIAL PRIMARY KEY,
itemName VARCHAR(255),
itemDescription VARCHAR(255)
)

CREATE TABLE orderItems (
orderId INT REFERENCES orders(orderId),
itemId INT REFERENCES items(itemId)
)

DROP TABLE orderItems;
DROP TABLE items;
DROP TABLE orders;
DROP TABLE users;





