USE TSQL_LAB_UDF
SELECT *,dbo.YAS(BIRTHDATE,ID) YAS,
dbo.YASGRUP(dbo.YAS(BIRTHDATE,ID))
FROM PLAYER

ALTER FUNCTION dbo.YASGRUP(@YAS AS INT)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @RESULT AS VARCHAR(100)
	IF @YAS BETWEEN 10 AND 19 SET @RESULT ='10-19 ARASI'
	IF @YAS BETWEEN 20 AND 29 SET @RESULT= '20-29 ARASI'
	IF @YAS BETWEEN 30 AND 39 SET @RESULT= '30-39 ARASI'
	IF @YAS >=40 SET @RESULT= '40 TAN B�Y�K'

RETURN @RESULT
END

/** 
CASE
	WHEN dbo.YAS(BIRTHDATE,ID)BETWEEN 10 AND 19 THEN '10-19 ARASI'
	WHEN dbo.YAS(BIRTHDATE,ID)BETWEEN 20 AND 29 THEN '20-29 ARASI'
	WHEN dbo.YAS(BIRTHDATE,ID)BETWEEN 30 AND 39 THEN '30-39 ARASI'
	WHEN dbo.YAS(BIRTHDATE,ID)>=40 THEN '40 TAN B�Y�K'
END */