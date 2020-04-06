/*primul cuvant din nume*/
SELECT ProductName, 

	CASE WHEN CHARINDEX(' ', ProductName) > 0 THEN

		Substring(ProductName,1,CHARINDEX(' ', ProductName)-1)

	ELSE

		ProductName

	END

	FROM Product