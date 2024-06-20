USE AdventureWorks2019
GO
--Problem 1
SELECT COUNT(*) AS TotalProducts FROM Production.Product;
--Problem 2
SELECT COUNT(*) AS ProductSubcategory FROM Production.Product WHERE ProductSubcategoryID IS NOT NULL;
--Problem 3
SELECT ProductSubcategoryID, COUNT(*) AS CountedProducts FROM Production.Product GROUP BY ProductSubcategoryID;
--Problem 4
SELECT COUNT(*) AS ProdWithoutSubcategory FROM Production.Product WHERE ProductSubcategoryID IS NULL;
--Problem 5
SELECT SUM(Quantity) AS TotalQuantity FROM Production.ProductInventory;
--Problem 6
SELECT ProductID, SUM(Quantity) AS TheSum FROM Production.ProductInventory WHERE LocationID = 40 GROUP BY ProductID HAVING SUM(Quantity) < 100;
--Problem 7
SELECT Shelf, ProductID, SUM(Quantity) AS TheSum FROM Production.ProductInventory WHERE LocationID = 40 GROUP BY Shelf, ProductID HAVING SUM(Quantity) < 100;
--Problem 8
SELECT AVG(Quantity) AS AvgQ FROM Production.ProductInventory WHERE LocationID = 10;
--Problem 9
SELECT Shelf, ProductID, AVG(Quantity) AS AvgQ FROM Production.ProductInventory GROUP BY Shelf, ProductID;
--Problem 10
SELECT Shelf, ProductID, AVG(Quantity) AS AvgQ FROM Production.ProductInventory WHERE Shelf != 'N/A' GROUP BY Shelf, ProductID;
--Problem 11
SELECT Color, Class, COUNT(*) AS TheCount, AVG(ListPrice) AS AvgPrice FROM Production.Product WHERE Color IS NOT NULL AND Class IS NOT NULL GROUP BY Color, Class;
--Problem 12
SELECT cr.Name AS Country, sp.Name AS Province FROM person.CountryRegion cr JOIN person.StateProvince sp ON cr.CountryRegionCode = sp.CountryRegionCode;
--Problem 13
SELECT cr.Name AS Country, sp.Name AS Province FROM person.CountryRegion cr JOIN person.StateProvince sp ON cr.CountryRegionCode = sp.CountryRegionCode WHERE cr.Name IN ('Germany', 'Canada');
--Problem 14
USE Northwind
Go
SELECT DISTINCT p.ProductID, p.ProductName FROM Products p JOIN [Order Details] od ON p.ProductID = od.ProductID JOIN Orders o ON od.OrderID = o.OrderID WHERE o.OrderDate >= '1997-06-20';
--Problem 15
SELECT TOP 5 c.PostalCode, COUNT(od.ProductID) AS ProductsSold
FROM Orders o
JOIN [Order Details] od ON o.OrderID = od.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.PostalCode
ORDER BY ProductsSold DESC;
--Problem 16
SELECT TOP 5 c.PostalCode, COUNT(od.ProductID) AS ProductsSold
FROM Orders o
JOIN [Order Details] od ON o.OrderID = od.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate >= '1997-06-20'
GROUP BY c.PostalCode
ORDER BY ProductsSold DESC;
--Problem 17
SELECT c.City, COUNT(c.CustomerID) AS NumberOfCustomers FROM Customers c GROUP BY c.City;
--Problem 18
SELECT c.City, COUNT(c.CustomerID) AS NumberOfCustomers FROM Customers c GROUP BY c.City
HAVING COUNT(c.CustomerID) > 2;
--Problem 19
SELECT c.ContactName, o.OrderDate FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderDate > '1998-01-01';
--Problem 20
SELECT c.ContactName, MAX(o.OrderDate) AS MostRecentOrderDate FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.ContactName;
--Problem 21
