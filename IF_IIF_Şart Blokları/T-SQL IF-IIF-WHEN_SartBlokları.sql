-->Sart bloklar�

--if
--Select blogunun i�inde kullan�lamaz
--Sadece T-SQL blogunda kullan�l�r
--Eger ki if in alt�nda birden fazla sat�r bulunacaksa BEGIN / END bloguna al�nmal�
--ELSE IF olarak da kullan�l�r
/**
		DECLARE @EXAMRESULT AS INT = 70,
				@STATUS AS VARCHAR(20)
		IF @EXAMRESULT >= 60
			SET @STATUS = 'BA�ARILI'
		ELSE
			BEGIN
			SET @STATUS = 'BA�ARISIZ'
			Select 'A'
			END

		SELECT @EXAMRESULT S�nav,@STATUS Durum--BA�ARILI;
*/

--iif/IIF		IIF(�art='E',TRUE,FALSE) 
--Select i�inde kullan�l�r(�ki �art i�in kullan�l�r)
/**
		USE GYSALES
		SELECT IIF (CUSTOMERGENDER='E','ERKEK','KADIN') CUSTOMERGENDER,COUNT(*) FROM SALES
		GROUP BY CUSTOMERGENDER
*/
--CASE/WHEN
--Sadece select blogunun i�inde kullan�l�r

--Yontem 1 (Dinamik view ile)
/**
		USE NORTHWND
		SELECT AGEGROUP,COUNT(*) FROM(
		SELECT CASE
				WHEN YASS <35 THEN'GEN�'
				WHEN YASS BETWEEN 36 AND 55 THEN 'ORTA YASLI'
				WHEN YASS >55 THEN 'YASLI' 
				END AS AGEGROUP,*
		FROM Customers
		WHERE YASS IS NOT NULL
		 )T
		 GROUP BY AGEGROUP
 */
 --Yontem 2 (Case i Group by'�n i�ine al)
 /**
		USE NORTHWND
		SELECT 
		CASE
				WHEN YASS <35 THEN'GEN�'
				WHEN YASS BETWEEN 36 AND 55 THEN 'ORTA YASLI'
				WHEN YASS >55 THEN 'YASLI' 
		END AS AGEGROUP,COUNT(*)
		FROM Customers
		WHERE YASS IS NOT NULL
		GROUP BY CASE
				WHEN YASS <35 THEN'GEN�'
				WHEN YASS BETWEEN 36 AND 55 THEN 'ORTA YASLI'
				WHEN YASS >55 THEN 'YASLI' 
		END
*/