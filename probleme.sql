/* top 3 lucratori cu salariul cel mai mare */

SELECT TOP 3 SalesPersonID,SUM(HourlyRate) as Suma
FROM SalesPerson
GROUP BY SalesPersonID
ORDER  BY SUM(HourlyRate) DESC


/*Cel mai mare pret , Data cu cel mai mare decalaj order/shipping, cea mai recenta data  */
SELECT MAX(OrderTotalDue), MAX(DATEDIFF(day,OrderDate,ShipDate)),MAX(OrderDate)
FROM [Order]


/* Sales pe fiecare luna din fiecare an , sales total din an , sales total */

	SELECT YEAR(a.OrderDate) AS SalesYear,
         MONTH(a.OrderDate) AS SalesMonth,
         SUM(a.OrderTotalDue) AS TotalSales
    FROM [Order] a
	GROUP BY YEAR(OrderDate),MONTH(OrderDate)
	UNION 
SELECT YEAR(b.OrderDate) AS SalesYear,NULL,SUM(b.OrderTotalDue)
	FROM [Order] b
	GROUP BY YEAR(OrderDate)
	UNION 
SELECT NULL,NULL,SUM(OrderTotalDue) as Total FROM [Order]
ORDER BY YEAR(OrderDate), MONTH(OrderDate)