SELECT * FROM clients;

-- GROUP BY -- 
SELECT COUNT(salary), salary FROM clients GROUP BY salary;
SELECT COUNT(age), age FROM clients GROUP BY age;
SELECT COUNT(age), age FROM clients GROUP BY age HAVING age >= 30;

SELECT COUNT(age), age, clientName FROM clients GROUP BY age, clientName HAVING clientName LIKE "%a%";
SELECT COUNT(age), age, clientName FROM clients WHERE clientName LIKE "%a%" GROUP BY age, clientName;

-- ORDER BY -- 
SELECT * FROM clients ORDER BY clientName;
SELECT * FROM clients ORDER BY clientName ASC;
SELECT * FROM clients ORDER BY salary ASC;

SELECT * FROM clients ORDER BY clientName DESC;
SELECT * FROM clients ORDER BY salary DESC;

SELECT * FROM clients ORDER BY salary LIMIT 5;
SELECT * FROM clients ORDER BY salary ASC LIMIT 6;
SELECT * FROM clients ORDER BY salary DESC LIMIT 3;

SELECT * FROM clients ORDER BY salary ASC LIMIT 6 OFFSET 2;
SELECT * FROM clients ORDER BY salary DESC LIMIT 3 OFFSET 3;