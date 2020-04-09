
Scalar functions
=================
1. O funcție care să primească ca parametru un CustomerID și să returneze suma tuturor comenzilor.
2. O funcție care să primească ca parametru un Produs și să returneze numele clientului care l-a cumpărat cel mai des.
3.  faceți un SELECT care să returneze toți clienții și suma tuturor vânzărilor lor.
4. O funcție care să primească ca parametru un an și să returneze diferența între vânzările din anul respectiv și anul anterior.
5. Folosind funcția de la punctul 1 creați o altă funcție care să returneze toți clienții care au făcut comenzi în valoare mai mare decât un anume CustomerID.

  1)
  ALTER FUNCTION myfun (@id char(10))
RETURNS decimal(8, 2)
AS
    BEGIN
        DECLARE @o decimal(8, 2)
        SET @o =
            (
                SELECT
                    SUM(OrderTotalDue)
                FROM
                    Sales
                WHERE
                    CustomerAccount = @id
            )
        RETURN @o
    END

  SELECT dbo.myfun('AW00029566')


_____________________________________________________________________________________

 2) 
CREATE FUNCTION funmax (@id nvarchar(35))
RETURNS nvarchar(25)
AS
    BEGIN
        DECLARE @n nvarchar(25)
        SET @n =
            (
                SELECT TOP 1
                    Customers.CustomerFirstName
                FROM
                    Sales
                    JOIN
                        OrdersDetails
                            ON Sales.SalesOrderId = OrdersDetails.SalesOrderId
                    JOIN
                        Customers
                            ON Sales.CustomerAccount = Customers.CustomerAccount
                WHERE
                    OrdersDetails.ProductName = @id
                GROUP BY
                    Customers.CustomerFirstName,
                    OrdersDetails.ProductName
                ORDER BY
                    COUNT(Customers.CustomerFirstName) DESC
            )
        RETURN @n
    END

  SELECT dbo.funmax('Road-450 Red, 52')
_______________________________________________________________________________


3)
SELECT
    CONCAT(Customers.CustomerFirstName, ' ', Customers.CustomerLastName),
    SUM(OrderTotalDue) as Vanzari
FROM
    Customers
    LEFT JOIN
        Sales
            ON Customers.CustomerAccount = Sales.CustomerAccount
GROUP BY
    CONCAT(Customers.CustomerFirstName, ' ', Customers.CustomerLastName)
_______________________________________________________________________________________________________________
