use GYSALES_RDMS_FULL
ALTER FUNCTION dbo.FNITEMINFO_MULTI
(
	-- Add the parameters for the function here
@ITEMID AS INT

)
RETURNS 
@RESULT TABLE 
(
	-- Add the column definitions for the TABLE variable here
ITEMCODE VARCHAR(100),
ITEMNAME  VARCHAR(100),
TOTALSALE FLOAT,
TOTALAMOUNT INT,
MINPRICE  FLOAT,
MAXPRICE  FLOAT,
AVGPRICE  FLOAT,
TOTALSALEUSD FLOAT
)
 
BEGIN
	-- Fill the table variable with the rows for your result set
	INSERT INTO @RESULT(ITEMCODE,ITEMNAME,TOTALSALE,TOTALAMOUNT,MINPRICE,MAXPRICE,AVGPRICE)
	SELECT I.ITEMCODE, I.ITEMNAME, SUM(OD.LINETOTAL) TOTALSALE, SUM(OD.AMOUNT) TOTALAMOUNT,
			MIN(OD.UNITPRICE) MINPRICE, MAX(OD.UNITPRICE) MAXPRICE,ROUND(AVG(OD.UNITPRICE),2) AVGPRICE
			FROM ITEMS I
			JOIN ORDERDETAILS OD ON OD.ITEMID = I.ID
			WHERE I.ID = @ITEMID
			GROUP BY I.ITEMCODE, I.ITEMNAME

	UPDATE @RESULT SET TOTALSALEUSD = TOTALSALE/32.20
	RETURN 
END

GO

SELECT * FROM dbo.FNITEMINFO_MULTI(2) --000002	MISIR�Z� YA�I 1LT.PET ���E	42298,2	958	26,6	74	44,05
--After [ UPDATE @RESULT SET TOTALSALEUSD = TOTALSALE/32.20 ] part
SELECT * FROM dbo.FNITEMINFO_MULTI(2) --000002	MISIR�Z� YA�I 1LT.PET ���E	42298,2	958	26,6	74	44,05	1313,60869565217;