-->Sart bloklar�

--if
--Select blogunun i�inde kullan�lamaz
--Sadece T-SQL blogunda kullan�l�r
--Eger ki if in alt�nda birden fazla sat�r bulunacaksa BEGIN / END bloguna al�nmal�

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
