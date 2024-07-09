
--Datetime deðiþkenleri
		Declare @Tarih as datetime
		set @Tarih = '2002-03-08 14:54:34'--

		--select @Tarih--2002-03-08 14:54:34.000
		Select DATEDIFF(year,@Tarih,GETDATE())-- 22
		Select DATEADD(YEAR,50,@Tarih)--2052-03-08 14:54:34.000
		SELECT DATEPART(MONTH,@Tarih), DATENAME(MONTH,@Tarih) -- 3, March
