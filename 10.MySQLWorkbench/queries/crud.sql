create DATABASE hotelsDB;
use hotelsDB;

CREATE TABLE cities (
cityID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
cityName varchar(20)
);

CREATE TABLE hotels (
hotelID  int PRIMARY KEY NOT NULL AUTO_INCREMENT,
hotelName varchar(20),
starsCounts int NOT NULL,
creationDate date,
cityID int,
FOREIGN KEY (cityID) REFERENCES cities (cityID)
);

CREATE TABLE rooms (
roomID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
comfortLevel varchar(20),
hotelID int,
FOREIGN KEY (hotelID) REFERENCES hotels (hotelID)
);

CREATE TABLE clients (
clientID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
clientName varchar(50),
clientNumber long
);

Create table orders (
orderID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
clientID int,
roomID int,
FOREIGN KEY (clientID) REFERENCES clients (clientID),
FOREIGN KEY (roomID) REFERENCES rooms (roomID)
);

INSERT INTO clients (clientName, clientNumber) VALUES 
("Roman", "380634445656"),
("Nelia", "380983335555"),
("Tetiana", "380979996666");

SELECT * FROM clients;

UPDATE clients SET clientNumber = "380660004444" WHERE clientID = 9;

ALTER TABLE clients
DROP COLUMN clientNumber;

ALTER TABLE clients
ADD COLUMN clientNumber long;

ALTER TABLE clients
ADD COLUMN age int,
ADD COLUMN salary decimal;

DELETE FROM clients WHERE clientID = 11;

DROP TABLE cities;

DROP DATABASE hotelsDB;