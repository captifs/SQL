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

TBC 
2. Folosind functia de la punctul 1 creati o alta funcsie care sa primeasca ca parametru un SalesOrderID si sa returneze valoarea totala a comenzii(deci nu aveti voie sa folositi tabelele Sales si OrderDetails)
4. O functie care sa primeasca doi parametri FirstName si LastName si sa returneze toate persoanele din baza noastra de date cu numele si prenumele respective si sa spuna daca este SalesPerson sau Customer.
