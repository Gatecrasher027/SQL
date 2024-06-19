USE AdventureWorks2019
GO
--Problem 1
SELECT ProductID, Name, Color, ListPrice FROM Production.Product;
--Problem 2
SELECT ProductID, Name, Color, ListPrice FROM Production.Product WHERE ListPrice <> 0;
--Problem 3
SELECT ProductID, Name, Color, ListPrice FROM Production.Product WHERE Color IS NULL;
--Problem 4
SELECT ProductID, Name, Color, ListPrice FROM Production.Product WHERE Color IS NOT NULL;
--Problem 5
SELECT ProductID, Name, Color, ListPrice FROM Production.Product WHERE Color IS NOT NULL AND ListPrice > 0;
--Problem 6
SELECT Name + ' ' + Color AS NameColor FROM Production.Product WHERE Color IS NOT NULL;
--Problem 7
SELECT 'NAME: ' + Name + ' -- COLOR: ' + Color AS NameColor FROM Production.Product WHERE Color IN ('Black', 'Silver');
--Problem 8
SELECT ProductID, Name FROM Production.Product WHERE ProductID BETWEEN 400 AND 500;
--Problem 9
SELECT ProductID, Name, Color FROM Production.Product WHERE Color IN ('Black', 'Blue');
--Problem 10
SELECT ProductID, Name, Color, ListPrice FROM Production.Product WHERE Name LIKE 'S%';
--Problem 11
SELECT Name, ListPrice FROM Production.Product WHERE Name LIKE 'S%' ORDER BY Name;
--Problem 12
SELECT Name, ListPrice FROM Production.Product WHERE Name LIKE 'A%' OR Name LIKE 'S%' ORDER BY Name;
--Problem 13
SELECT Name, ListPrice FROM Production.Product WHERE Name LIKE 'SPO' OR Name LIKE 'SPO%' AND Name NOT LIKE 'SPOK%' ORDER BY Name;
--Problem 14
SELECT DISTINCT Color FROM Production.Product ORDER BY Color DESC;
--Problem 15
SELECT DISTINCT ProductSubcategoryID, Color FROM Production.Product WHERE ProductSubcategoryID IS NOT NULL AND Color IS NOT NULL ORDER BY ProductSubcategoryID, Color;
