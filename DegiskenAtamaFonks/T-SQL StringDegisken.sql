
--String De�i�kenler
		Declare @ISIM as VARCHAR(100),@SOYAD as VARCHAR(100)
		set @ISIM= 'S�leyman'
		set @SOYAD = 'GUNEY'

		Select @ISIM+ ' ' +@SOYAD as AD_SOYAD --S�leyman GUNEY;(Results k�sm�na yazar)
		PRINT @ISIM + ' ' +@SOYAD --S�leyman GUNEY (Messages k�sm�na yazar)
