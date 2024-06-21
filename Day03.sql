--Problem 1
SELECT DISTINCT e.City FROM Employees e JOIN Customers c ON e.City = c.City;
--Problem 2(a)
SELECT DISTINCT c.City FROM Customers c WHERE c.City NOT IN (SELECT City FROM Employees);
--Problem 2(b)
SELECT DISTINCT c.City FROM Customers c LEFT JOIN Employees e ON c.City = e.City WHERE e.City IS NULL;
--Problem 3
SELECT p.ProductName, SUM(od.Quantity) AS TotOrderQty FROM Products p JOIN [Order Details] od ON p.ProductID = od.ProductID GROUP BY p.ProductName;
--Problem 4
SELECT c.City, SUM(od.Quantity) AS TotProductsOrdered FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID JOIN [Order Details] od ON o.OrderID = od.OrderID GROUP BY c.City;
--Problem 5(a)
SELECT City FROM Customers GROUP BY City HAVING COUNT(CustomerID) >= 2;
--Problem 5(b)
SELECT City FROM (SELECT City, COUNT(CustomerID) AS CustomerCount FROM Customers GROUP BY City) AS CustomerCounts WHERE CustomerCounts.CustomerCount >= 2;
--Problem 6
SELECT c.City FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID JOIN [Order Details] od ON o.OrderID = od.OrderID GROUP BY c.City
HAVING COUNT(DISTINCT od.ProductID) >= 2;
--Problem 7

