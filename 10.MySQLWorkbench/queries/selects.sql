SELECT * FROM clients;

SELECT clientID, clientName, clientNumber FROM clients;
SELECT clientName, clientNumber FROM clients;

SELECT clientName, clientNumber FROM clients WHERE clientName = "Maria";
SELECT clientName, clientNumber FROM clients WHERE clientName = "Yuliia" AND clientNumber = "380666666666";

SELECT clientName, clientNumber FROM clients WHERE clientName LIKE "M%";
SELECT clientName, clientNumber FROM clients WHERE clientName LIKE "%a";
SELECT clientName, clientNumber FROM clients WHERE clientName LIKE "%ii%";
SELECT clientName, clientNumber FROM clients WHERE clientName LIKE "%e%";
SELECT clientName, clientNumber FROM clients WHERE clientName LIKE "y%a";

SELECT clientName, clientNumber FROM clients WHERE clientName IN ("Yuliia", "Maria", "Natalia");
SELECT clientName, clientNumber FROM clients WHERE clientName NOT IN ("Maksym", "Maria");

SELECT clientName, clientNumber FROM clients WHERE clientNumber LIKE "%050%";
SELECT clientName, clientNumber FROM clients WHERE clientNumber NOT LIKE "%050%";

SELECT clientName, clientNumber FROM clients WHERE clientNumber > 1;
SELECT clientName, clientNumber FROM clients WHERE clientNumber > 381000000000;
SELECT clientName, clientNumber FROM clients WHERE clientNumber < 381000000000;
SELECT clientName, clientNumber FROM clients WHERE clientNumber < 380950000000 AND clientNumber > 1;
SELECT clientName, clientNumber FROM clients WHERE clientNumber < 380950000000 AND clientNumber > 380550000000;
SELECT clientName, clientNumber FROM clients WHERE clientNumber = 380666666666 OR clientNumber = 380959559959;
SELECT clientName, clientNumber FROM clients WHERE clientNumber <> 380666666666; 

SELECT clientID, clientName, clientNumber FROM clients WHERE clientID != 2;

SELECT clientID, clientName, clientNumber FROM clients WHERE clientID BETWEEN 2 AND 5;
SELECT clientID, clientName, clientNumber FROM clients WHERE clientID NOT BETWEEN 4 AND 6;
 
SELECT clientID, clientName, clientNumber FROM clients WHERE clientID IN (1, 5, 8);
SELECT clientID, clientName, clientNumber FROM clients WHERE clientID NOT IN (2, 3, 4);