
--Numeric degiskenler
		Declare @sayi1 as int
		Declare @sayi2 as int
		Declare @sonuc as int

		set @sayi1 = 10
		set @sayi2 = 20
		set @sonuc = @sayi1 + @sayi2 --Kendi i�inde Convert i�lemi yapar

		Select @sayi1 sayi1,@sayi2 sayi2,@sonuc sonuc
