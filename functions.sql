3. O functie care sa primeasca un parametru de tip datetime si sa returneze c�te saptam�ni au trecut de la �nceputul anului respectiv.

ALTER FUNCTION ABFG(@id DATETIME)
RETURNS TABLE
RETURN
SELECT DATEPART(WEEK, @id)  -
    DATEPART(WEEK, DATEADD(YY, DATEDIFF(YY,0,@id), 0)) + 1 AS WEEK_OF_YEAR
SELECT * FROM ABFG('2020-08-21')

CREATE FUNCTION Noname(@fn FirstName, @ln @LastName)
RETURNS TABLE
RETURN 


1. O functie care sa primeasca ca parametru un SalesOrderID si sa returneze toate produsele din comanda respectiva, cantitatea si pretul de v�nzare.
  CREATE FUNCTION ABFirst (@id int)
  RETURNS TABLE
  RETURN
  SELECT SalesOrderId,ProductName,ProductUnitPrice FROM OrdersDetails 
  WHERE SalesOrderId = @id

  SELECT * FROM ABFirst(43660)
