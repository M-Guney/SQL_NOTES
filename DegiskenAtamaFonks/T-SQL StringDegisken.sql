
--String Deðiþkenler
		Declare @ISIM as VARCHAR(100),@SOYAD as VARCHAR(100)
		set @ISIM= 'Süleyman'
		set @SOYAD = 'GUNEY'

		Select @ISIM+ ' ' +@SOYAD as AD_SOYAD --Süleyman GUNEY;(Results kýsmýna yazar)
		PRINT @ISIM + ' ' +@SOYAD --Süleyman GUNEY (Messages kýsmýna yazar)
