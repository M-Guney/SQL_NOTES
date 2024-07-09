--SELECT * FROM USERS--9670
--SELECT * FROM ITEMS--1367
SELECT * FROM SALES--6 

-- Alttaki kodu bir ka� defa �al��t�rarak �u anki listeye ula�m�� oldum
DECLARE @RAND AS INT=RAND()*365*24*60*60,
		@DATE AS DATETIME,
		@AMOUNT AS INT=1+RAND()*19,
		@CUSTOMERID AS VARCHAR(100),
		@ITEMCODE AS INT,
		@UNITPRICE AS INT

SET @DATE = DATEADD(SECOND,@RAND,'2022-01-01 00:01:00')
SET @RAND = RAND()*9670
SELECT @CUSTOMERID=ID FROM USERS WHERE ID=@RAND
SET @RAND = RAND()*1367
SELECT @ITEMCODE=ITEMCODE, @UNITPRICE=UNITPRICE FROM ITEMS WHERE ID=@RAND


INSERT INTO SALES(CUSTOMERID,ITEMID,DATE_,AMOUNT,UNITPRICE,LINETOTAL) 
	SELECT @CUSTOMERID,@ITEMCODE,@DATE,@AMOUNT,@UNITPRICE,@AMOUNT*@UNITPRICE LINETOTAL