	SELECT CustomerFirstName as FirstName, CustomerLastName as LastName, Sales.CustomerAccount,
		COUNT(Sales.CustomerAccount) as OrderCount,MAX(Sales.OrderDate) as LastOrderDate
	FROM Customers INNER JOIN Sales
	ON Customers.CustomerAccount = Sales.CustomerAccount
	GROUP BY Sales.CustomerAccount,Customers.CustomerFirstName,Customers.CustomerLastName





SELECT  CustomerAddress,Sales.SalesOrderId
FROM OrderAddress
INNER JOIN Sales ON OrderAddress.OrderAddressId = Sales.OrderAddressID
WHERE SalesOrderId = '57122' OR  SalesOrderId = '57066' OR SalesOrderId = '45273'



SELECT 
    RTRIM(LTRIM(
        CONCAT(
            COALESCE(SalesPersonFirstName + ' ', '')
			,COALESCE(SalesPersonLastname, '')
        )
    )) AS Name, SalesPersonID
FROM SalesPersons


