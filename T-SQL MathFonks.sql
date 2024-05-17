-->Math Fonksitonlarý
--https://learn.microsoft.com/en-us/sql/t-sql/functions/mathematical-functions-transact-sql?view=sql-server-ver16

--Round, Floor, Ceiling (Yuvarlama iþlemi yapar)
		Select ROUND(232.3421,1)--232.3000
		Select ROUND(232.3521,1)--232.4000

		Select FLOOR(232.3521)--232 Alttaki tam sayýya yuvarlar
		Select CEILING(232.3521)--233 Ustteki tam sayýya yuvarlar

--Rand (Rastsal olarak 0-1 arasýnda sayý üretir)
		Select RAND()--0,689845285554659
		Select Floor(1+RAND()*24)-- 1-25 arasýnda tam sayý üretir

--Sign(iþaret deðeri (-1,+1)), Abs(Absolute)(mutlak deðer)
		Select SIGN(10),SIGN(-38.5) -- 1, -1.0
		Select ABS(26.9), ABS(-26.9) -- 26.9, 26.9


--Round, Floor, Ceiling Example
USE TSQL_LAB_MATH_FUNCTIONS
SELECT ID,INVOICENO,SUM(TOTALPRICE) ORIGINAL_TOTALPRICE,
ROUND(SUM(TOTALPRICE),1)ROUND_,
CEILING(SUM(TOTALPRICE))CEILING_,
FLOOR(SUM(TOTALPRICE))FLOOR_ FROM LAB01
GROUP BY ID,INVOICENO