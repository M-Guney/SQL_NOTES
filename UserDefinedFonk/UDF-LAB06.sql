USE [GYSALES_RDMS_FULL]
GO
/****** Object:  UserDefinedFunction [dbo].[FNALLINFO]    Script Date: 31.05.2024 09:08:48 ******/
ALTER FUNCTION [dbo].[FNALLINFO]
(
	-- Add the parameters for the function here
@USERID AS INT

)
RETURNS 
@RESULT TABLE 
(
	-- Add the column definitions for the TABLE variable here
ID INT,
NAMESURNAME VARCHAR(100),
USERNAME_  VARCHAR(100),
ADDRESSCOUNT INT,
TOTALSALE FLOAT,
MOSTORDERED_CITY VARCHAR(100),
LASTORDERED_CITY VARCHAR(100),
LASTORDERDATE DATETIME,
LASTORDERED_ITEM VARCHAR(100)
	
)
 
BEGIN
	-- Fill the table variable with the rows for your result set
	DECLARE @ADDRESSCOUNT AS INT,
			@TOTALSALE AS FLOAT,
			@MOSTORDERED_CITY AS VARCHAR(100),
			@LASTORDERED_CITY AS VARCHAR(100),
			@LASTORDERED_DATE AS DATETIME,
			@LASTORDERED_ITEM AS VARCHAR(100)

	SELECT @ADDRESSCOUNT = COUNT(*) FROM ADDRESS WHERE USERID=@USERID
	SELECT @TOTALSALE = SUM(TOTALPRICE) FROM ORDERS WHERE USERID=@USERID

	SELECT TOP 1 @MOSTORDERED_CITY = C.CITY FROM ORDERS O
	JOIN ADDRESS A ON A.ID = O.ADDRESSID
	JOIN CITIES C ON C.ID = A.CITYID
	WHERE O.USERID = @USERID
	GROUP BY C.CITY
	ORDER BY SUM(O.TOTALPRICE) DESC --Most iportant part of Most Ordered City

	SELECT TOP 1 @LASTORDERED_CITY=C.CITY FROM ORDERS O 
	JOIN ADDRESS A ON A.ID = O.ADDRESSID
	JOIN CITIES C ON C.ID = A.CITYID
	WHERE O.USERID = @USERID AND O.DATE_ = (SELECT MAX(DATE_) FROM ORDERS WHERE USERID = @USERID)

	SELECT @LASTORDERED_DATE = DATE_ FROM ORDERS O 
	WHERE USERID = O.USERID AND DATE_ = (SELECT MAX(DATE_) FROM ORDERS WHERE USERID = @USERID)

	SELECT TOP 1 @LASTORDERED_ITEM =I.ITEMNAME FROM ORDERDETAILS OD 
	JOIN ORDERS O ON O.ID=OD.ORDERID
	JOIN ITEMS I ON I.ID=OD.ITEMID
	WHERE O.USERID = @USERID
	--O.DATE_ = (SELECT MAX(DATE_) FROM ORDERS WHERE USERID = @USERID)
	ORDER BY O.DATE_ DESC, OD.ID DESC



	INSERT INTO @RESULT(ID,NAMESURNAME,USERNAME_,ADDRESSCOUNT,TOTALSALE,MOSTORDERED_CITY,
						  LASTORDERED_CITY,LASTORDERDATE,LASTORDERED_ITEM)
	SELECT U.ID, U.NAMESURNAME,U.USERNAME_,@ADDRESSCOUNT ,@TOTALSALE,
	@MOSTORDERED_CITY,
	@LASTORDERED_CITY,
	@LASTORDERED_DATE,
	@LASTORDERED_ITEM
			FROM ORDERS O
			JOIN USERS U ON U.ID=O.USERID
			JOIN ADDRESS A ON A.USERID=U.ID
			JOIN CITIES C ON C.ID = A.CITYID
			JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
			JOIN ITEMS I ON OD.ITEMID=I.ID

			WHERE U.ID = @USERID AND A.USERID = @USERID
			GROUP BY U.ID, U.NAMESURNAME,U.USERNAME_

	RETURN 
END

SELECT * FROM USERS U
CROSS APPLY (SELECT * FROM dbo.FNALLINFO(U.ID)) AS T
--�stenilen ki�iye ait id ile en s�k sipari� etti�i sehir, en son sipari� tarihi neyi sipari� etti�i
SELECT * FROM dbo.FNALLINFO(1)