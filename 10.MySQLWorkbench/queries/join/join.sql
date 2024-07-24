-- INNER JOIN -- 
SELECT * FROM cities INNER JOIN hotels ON cities.cityID = hotels.cityID;


-- LEFT JOIN -- 
SELECT * FROM cities LEFT JOIN hotels ON cities.cityID = hotels.cityID;


-- RIGHT JOIN -- 
SELECT * FROM cities RIGHT JOIN hotels ON cities.cityID = hotels.cityID;


-- FULL OUTER JOIN -- 
SELECT * FROM cities LEFT JOIN hotels ON cities.cityID = hotels.cityID
UNION ALL
SELECT * FROM cities RIGHT JOIN hotels ON cities.cityID = hotels.cityID;

SELECT * FROM hotels LEFT JOIN cities ON cities.cityID = hotels.cityID
UNION ALL
SELECT * FROM hotels RIGHT JOIN cities ON cities.cityID = hotels.cityID;


-- Union of three tables -- 
SELECT * FROM orders
JOIN clients ON orders.clientID = clients.clientID
JOIN rooms ON orders.roomID = rooms.roomID;

-- CROSS JOIN -- 
SELECT * FROM cities CROSS JOIN hotels;