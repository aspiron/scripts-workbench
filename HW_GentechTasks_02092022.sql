-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all

-- Task 1

SELECT
	t1.CustomerID,
	t1.CustomerName,
	t1.City,
	t1.Country,
	t2.OrderID,
	t3.ProductID,
	t4.ProductName
FROM Customers AS t1
INNER JOIN Orders AS t2
ON t1.customerID = t2.CustomerID
INNER JOIN OrderDetails AS t3
ON t2.OrderID = t3.OrderID
INNER JOIN Products AS t4
ON t3.ProductID = t4.ProductID
WHERE t1.City = 'London' OR t1.Country = 'France';

-- Task 2

SELECT 
t1.LastName,
t1.FirstName,
t3.ProductID,
t3.Quantity,
t4.ProductName
FROM Employees AS t1
INNER JOIN Orders AS t2
ON t1.EmployeeID = t2.EmployeeID
INNER JOIN OrderDetails AS t3
ON t2.OrderID = t3.OrderID
INNER JOIN Products AS t4
ON t3.ProductID = t4.ProductID
WHERE t1.LastName = 'King' AND t1.FirstName = 'Robert';

