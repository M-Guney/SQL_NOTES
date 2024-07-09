-->Sart bloklarý

--if
--Select blogunun içinde kullanýlamaz
--Sadece T-SQL blogunda kullanýlýr
--Eger ki if in altýnda birden fazla satýr bulunacaksa BEGIN / END bloguna alýnmalý
--ELSE IF olarak da kullanýlýr
/**
		DECLARE @EXAMRESULT AS INT = 70,
				@STATUS AS VARCHAR(20)
		IF @EXAMRESULT >= 60
			SET @STATUS = 'BAÞARILI'
		ELSE
			BEGIN
			SET @STATUS = 'BAÞARISIZ'
			Select 'A'
			END

		SELECT @EXAMRESULT Sýnav,@STATUS Durum--BAÞARILI;
*/

--iif/IIF		IIF(Þart='E',TRUE,FALSE) 
--Select içinde kullanýlýr(Ýki þart için kullanýlýr)
/**
		USE GYSALES
		SELECT IIF (CUSTOMERGENDER='E','ERKEK','KADIN') CUSTOMERGENDER,COUNT(*) FROM SALES
		GROUP BY CUSTOMERGENDER
*/
--CASE/WHEN
--Sadece select blogunun içinde kullanýlýr

--Yontem 1 (Dinamik view ile)
/**
		USE NORTHWND
		SELECT AGEGROUP,COUNT(*) FROM(
		SELECT CASE
				WHEN YASS <35 THEN'GENÇ'
				WHEN YASS BETWEEN 36 AND 55 THEN 'ORTA YASLI'
				WHEN YASS >55 THEN 'YASLI' 
				END AS AGEGROUP,*
		FROM Customers
		WHERE YASS IS NOT NULL
		 )T
		 GROUP BY AGEGROUP
 */
 --Yontem 2 (Case i Group by'ýn içine al)
 /**
		USE NORTHWND
		SELECT 
		CASE
				WHEN YASS <35 THEN'GENÇ'
				WHEN YASS BETWEEN 36 AND 55 THEN 'ORTA YASLI'
				WHEN YASS >55 THEN 'YASLI' 
		END AS AGEGROUP,COUNT(*)
		FROM Customers
		WHERE YASS IS NOT NULL
		GROUP BY CASE
				WHEN YASS <35 THEN'GENÇ'
				WHEN YASS BETWEEN 36 AND 55 THEN 'ORTA YASLI'
				WHEN YASS >55 THEN 'YASLI' 
		END
*/