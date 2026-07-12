 -- SQL Customer Analysis Project
-- By: Mohammad Saif
-- Tools: SQL Server / W3Schools Database

-- Question 1: Total number of customers
SELECT COUNT(*) AS TotalCustomers
FROM Customers;

-- Question 2: Country with most customers
SELECT Country, COUNT(*) AS Total
FROM Customers
GROUP BY Country
ORDER BY Total DESC;

-- Question 3: German customers sorted A to Z
SELECT *
FROM Customers
WHERE Country = 'Germany'
ORDER BY CustomerName ASC;

-- Question 4: Customers per city biggest first
SELECT City, COUNT(*) AS Total
FROM Customers
GROUP BY City
ORDER BY Total DESC;

-- Question 5: Countries with more than 3 customers
SELECT Country, COUNT(*) AS Total
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 3
ORDER BY Total DESC;

-- Question 6: Top 5 countries with most customers
SELECT TOP 5 Country, COUNT(*) AS Total
FROM Customers
GROUP BY Country
ORDER BY Total DESC;

-- Question 7: Countries starting with G
SELECT Country, COUNT(*) AS Total
FROM Customers
WHERE Country LIKE 'G%'
GROUP BY Country
ORDER BY Total DESC;

-- Question 8: Countries with between 3 and 7 customers
SELECT Country, COUNT(*) AS Total
FROM Customers
GROUP BY Country
HAVING COUNT(*) BETWEEN 3 AND 7
ORDER BY Total DESC;