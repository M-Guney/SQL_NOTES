--> Degisken Tanýmlama (Declare Variable)
		--Deðiþkenin baþýnda @ olmalý 
		--Türü belirlenmeli (varchar,int...)
		--Deðer atanmalý (set @SOYAD = 'GUNEY')


--String Deðiþkenler
		Declare @ISIM as VARCHAR(100),@SOYAD as VARCHAR(100)
		set @ISIM= 'Süleyman'
		set @SOYAD = 'GUNEY'

		Select @ISIM+ ' ' +@SOYAD as AD_SOYAD --Süleyman GUNEY;(Results kýsmýna yazar)
		PRINT @ISIM + ' ' +@SOYAD --Süleyman GUNEY (Messages kýsmýna yazar)

--Numeric degiskenler
		Declare @sayi1 as int
		Declare @sayi2 as int
		Declare @sonuc as int

		set @sayi1 = 10
		set @sayi2 = 20
		set @sonuc = @sayi1 + @sayi2 --Kendi içinde Convert iþlemi yapar

		Select @sayi1 sayi1,@sayi2 sayi2,@sonuc sonuc


--Datetime deðiþkenleri
		Declare @Tarih as datetime
		set @Tarih = '2002-03-08 14:54:34'--

		--select @Tarih--2002-03-08 14:54:34.000
		Select DATEDIFF(year,@Tarih,GETDATE())-- 22
		Select DATEADD(YEAR,50,@Tarih)--2052-03-08 14:54:34.000
		SELECT DATEPART(MONTH,@Tarih), DATENAME(MONTH,@Tarih) -- 3, March


--SQL Sorgusundan Gelen Deðeri Deðiþkene Atama
		Declare @TOTALPRICE AS FLOAT
		Declare @ROWCOUNT AS INT
		Declare @TOTALAMOUNT AS INT
		Declare @CUSTOMERCOUNT AS INT

		USE GYSALES
		Select @TOTALPRICE=SUM(TOTALPRICE),@ROWCOUNT=count(*),
		@TOTALAMOUNT=sum(AMOUNT),@CUSTOMERCOUNT=COUNT(CUSTOMERID) from SALES

		SELECT @TOTALAMOUNT TOTALAMOUNT,@ROWCOUNT ROWCOUNT_,@TOTALPRICE TOTALPRICE,@CUSTOMERCOUNT CUSTOMER


--SQL Sorgusuna Deðiþken Gönderme
		USE GYSALES
		Declare @CITY AS VARCHAR(100),@BEGDATE AS DATE,@ENDDATE AS DATE
		SET @CITY = 'BURSA'
		SET @BEGDATE = '20220401'
		SET @ENDDATE = '20220501'


		SELECT * FROM SALES
			WHERE CITY = @CITY AND
				  DATE_ BETWEEN @BEGDATE AND @ENDDATE-- Output: 1516 row

--Deðiþkene Varsayýlan Deðer Atama(DECLARE DEFAULT VARIABLE)
		USE GYSALES
		Declare @CITY2 AS VARCHAR(100) = 'Ýzmir',
				@BEGDATE2 AS DATE = '20220401',
				@ENDDATE2 AS DATE = '20220501'
		SET @CITY2 = 'BURSA'
		SET @CITY2 = 'ANKARA'

		SELECT * FROM SALES
			WHERE CITY = @CITY2 AND
					DATE_ BETWEEN @BEGDATE2 AND @ENDDATE2
					-- Output: 1516 row @CITY2 = 'ANKARA'
					-- ÝZMÝR<BURSA<ANKRA yetki sýrasý

			
--