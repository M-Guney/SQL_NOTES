/**Select DATEPART(MONTH,DATE_)MONTH_,CITY,SUM(TOTALPRICE)TOTALSALE from SALES
where CITY = 'Bilecik'
group by DATEPART(MONTH,DATE_),CITY
order by 1
*/


--Yontem 1
Declare @CITY as varchar(100),@BEGDATE as date,@ENDDATE as date

set @CITY = 'Bursa'
set @BEGDATE = '20220101'
set @ENDDATE = '20230101'

--Eger ki bütün veriler(City, Begdate, Enddate) girilmiþse çalýþýr
---- Belirtilen þehirin belirtilen tarihteki satýþ miktarlarýný getirir
		If @CITY is not null and @BEGDATE is not null and @ENDDATE is not null
		BEGIN
			Select DATEPART(MONTH,DATE_)MONTH_,CITY,SUM(TOTALPRICE)TOTALSALE from SALES
			where CITY = @CITY
			AND
			DATE_ BETWEEN @BEGDATE and @ENDDATE

			group by DATEPART(MONTH,DATE_),CITY
			order by 1
		END


---- Bütün þehirlerin belirtilen tarihteki satýþ miktarlarýný getirir
set @CITY = null
set @BEGDATE = '20220101'
set @ENDDATE = '20230101'
		If @CITY is null and @BEGDATE is not null and @ENDDATE is not null
		BEGIN
			Select DATEPART(MONTH,DATE_)MONTH_,CITY,SUM(TOTALPRICE)TOTALSALE from SALES
			where DATE_ BETWEEN @BEGDATE and @ENDDATE

			group by DATEPART(MONTH,DATE_),CITY
			order by 1
		END


---- Bütün þehirlerin bütün tarihlerdeki satýþ miktarlarýný getirir
set @CITY = null
set @BEGDATE = null
set @ENDDATE = null
		If @CITY is null and @BEGDATE is null and @ENDDATE is null
		BEGIN
			Select DATEPART(MONTH,DATE_)MONTH_,CITY,SUM(TOTALPRICE)TOTALSALE from SALES

			group by DATEPART(MONTH,DATE_),CITY
			order by 1
		END


--Yontem 2

--DECLARE @CITY AS VARCHAR(100) 
DECLARE @MONTH AS INT=3
--DECLARE @BEGDATE AS DATE 
--DECLARE @ENDDATE AS DATE 

IF @CITY IS NULL 
	SET @CITY='%'

IF (@BEGDATE IS NULL AND @ENDDATE IS NULL)
BEGIN
	SET @BEGDATE =DATEFROMPARTS(2022,@MONTH,1)
	SET @ENDDATE=DATEADD(MONTH,1,@BEGDATE)
END
 
SELECT 
DATEPART(MONTH,DATE_) MONTH_,
CITY,SUM(TOTALPRICE) TOTALPRICE
FROM SALES 
WHERE CITY LIKE @CITY 
AND DATE_ BETWEEN @BEGDATE AND @ENDDATE

GROUP BY DATEPART(MONTH,DATE_),CITY

