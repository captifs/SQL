


SELECT id FROM things 
   WHERE MONTH(happened_at) = 1 AND YEAR(happened_at) = 2009


SELECT * FROM Product
WHERE ProductStandardCost > 1000

SELECT * FROM [Order]
WHERE YEAR(OrderDate) = 2013

SELECT * FROM [Order]
WHERE YEAR(OrderDate) = 2012 OR YEAR(OrderDate) = 2014

SELECT * From SalesPerson
WHERE SalesPersonID % 2 != 0

SELECT * From Product 
WHERE ProductColor = 'Black' AND (ProductSize = 'M' OR ProductSize = 'S')

SELECT OrderDate,ShipDate
FROM [Order] 
WHERE  (DATEDIFF(DAY,OrderDate,ShipDate)  > 7)