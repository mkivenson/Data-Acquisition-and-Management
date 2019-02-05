--LAB 2.1: SQL SELECT BASICS
--1. Write a SELECT statement that returns all of the rows and columns in the planes table
SELECT * 
FROM planes;

-- 2. Using the weather table, concatenate the year, month, and day columns to display a date in the form "3/17/2013". 
SELECT CONCAT(month, '/', day, '/', year)
FROM weather;

-- 3. Order by planes table by number of seats, in descending order.
SELECT * 
FROM planes
ORDER BY seats DESC;

-- 4. List only those planes that have an engine that is 'Reciprocating'
SELECT * 
FROM planes
WHERE engine = 'Reciprocating';

-- 5. List only the first 5 rows in the flights table
SELECT * 
FROM flights
LIMIT 5;

-- 6. What was the longest (non-blank) air time?
SELECT MAX(air_time)
FROM flights
WHERE air_time != 0;

--7. What was the shortest (non-blank) air time for Delta?
SELECT MIN(air_time)
FROM flights
WHERE air_time != 0 AND carrier = 'DL';

--8. Show all of the Alaska Airlines flights between June 1st, 2013 and June 3rd, 2013. Is the way the data is stored in the database helpful to you in making your query?
SELECT * 
  FROM flights 
 WHERE carrier = 'AS' 
   AND year = 2013 AND month = 6 AND day BETWEEN 1 AND 3;

-- 9.  Show all of the airlines whose names contain 'America'
SELECT *
FROM airlines
WHERE name LIKE '%America%';

 -- 10. How many flights went to Miami?
 SELECT COUNT(dest)
 FROM flights
 WHERE dest = 'MIA';
 
 -- 11. Were there more flights to Miami in January 2013 or July 2013? (Multiple queries are OK) January 2013
 SELECT COUNT(dest)
 FROM flights
 WHERE dest = 'MIA' AND month='1' AND year='2013';
 
 SELECT COUNT(dest)
 FROM flights
 WHERE dest = 'MIA' AND month='7' AND year='2013';
 
 -- 12. What is the average altitude of airports?
 SELECT ROUND(AVG(alt),0)
 FROM airports;