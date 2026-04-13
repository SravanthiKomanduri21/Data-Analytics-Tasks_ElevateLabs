SELECT * FROM ecommercesales;

SELECT CustomerID, Price
FROM ecommercesales
WHERE Price > 1000; 

SELECT Product, Price
FROM ecommercesales
ORDER BY Price DESC; 

SELECT Category, SUM(Price) AS total_sales
FROM ecommercesales
GROUP BY Category;  
 
 SELECT SUM(Price) AS total_revenue
FROM ecommercesales; 
SELECT AVG(Price) AS avg_sales
FROM ecommercesales; 
SELECT Category,
       SUM(Price) AS total_sales,
       AVG(Price) AS avg_sales
FROM ecommercesales
GROUP BY Category; 

SELECT 	Product, Price
FROM ecommercesales
WHERE Price > (
    SELECT AVG(Price) FROM ecommercesales
); 

SELECT CustomerID
FROM ecommercesales
WHERE CustomerID IN (
    SELECT CustomerID FROM 	ecommercesales  WHERE Price > 5000
);