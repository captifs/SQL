/* query ce selecteaza al doilea cuvand din numele produsului*/
SELECT ProductName , 

CASE WHEN CHARINDEX(' ', ProductName) > 0 THEN
	LTRIM(SUBSTRING(ProductName,CHARINDEX(' ',ProductName), CHARINDEX(' ',ltrim(SUBSTRING(ProductName,
	 CHARINDEX(' ',ProductName),LEN(ProductName)-CHARINDEX(' ',ProductName)))) ))
 Else 'n-are'
END
FROM Product
