-- COUNT(*), COUNT(column)	A common function used to counts the number of rows in the group if no column name is specified. Otherwise, count the number of rows in the group with non-NULL values in the specified column.
-- MIN(column)	Finds the smallest numerical value in the specified column for all rows in the group.
-- MAX(column)	Finds the largest numerical value in the specified column for all rows in the group.
-- AVG(column)	Finds the average numerical value in the specified column for all rows in the group.
-- SUM(column)	Finds the sum of all numerical values in the specified column for the rows in the group.

SELECT COUNT(*) FROM clients;
SELECT COUNT(clientName) FROM clients WHERE clientName LIKE "%a";
SELECT hotelID, COUNT(hotelID) FROM rooms WHERE hotelID = 6;

SELECT MIN(starsCounts) FROM hotels;
SELECT MIN(starsCounts) AS minStarsCounts FROM hotels;
SELECT * FROM hotels WHERE starsCounts = (SELECT MIN(starsCounts) FROM hotels);
SELECT MIN(hotelName) FROM hotels;
SELECT MIN(creationDate) FROM hotels;
SELECT MIN(salary) FROM clients;

SELECT MAX(salary) FROM clients;
SELECT MAX(starsCounts) FROM hotels;

SELECT AVG(salary) FROM clients;

SELECT SUM(salary) FROM clients;