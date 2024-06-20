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

--Problem 15
