-->Sart bloklarý

--if
--Select blogunun içinde kullanýlamaz
--Sadece T-SQL blogunda kullanýlýr
--Eger ki if in altýnda birden fazla satýr bulunacaksa BEGIN / END bloguna alýnmalý

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
