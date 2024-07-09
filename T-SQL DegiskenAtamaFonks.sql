--> Degisken Tan�mlama (Declare Variable)
		--De�i�kenin ba��nda @ olmal� 
		--T�r� belirlenmeli (varchar,int...)
		--De�er atanmal� (set @SOYAD = 'GUNEY')


--String De�i�kenler
		Declare @ISIM as VARCHAR(100),@SOYAD as VARCHAR(100)
		set @ISIM= 'S�leyman'
		set @SOYAD = 'GUNEY'

		Select @ISIM+ ' ' +@SOYAD as AD_SOYAD --S�leyman GUNEY;(Results k�sm�na yazar)
		PRINT @ISIM + ' ' +@SOYAD --S�leyman GUNEY (Messages k�sm�na yazar)

--Numeric degiskenler
		Declare @sayi1 as int
		Declare @sayi2 as int
		Declare @sonuc as int

		set @sayi1 = 10
		set @sayi2 = 20
		set @sonuc = @sayi1 + @sayi2 --Kendi i�inde Convert i�lemi yapar

		Select @sayi1 sayi1,@sayi2 sayi2,@sonuc sonuc


--Datetime de�i�kenleri
		Declare @Tarih as datetime
		set @Tarih = '2002-03-08 14:54:34'--

		--select @Tarih--2002-03-08 14:54:34.000
		Select DATEDIFF(year,@Tarih,GETDATE())-- 22
		Select DATEADD(YEAR,50,@Tarih)--2052-03-08 14:54:34.000
		SELECT DATEPART(MONTH,@Tarih), DATENAME(MONTH,@Tarih) -- 3, March


--SQL Sorgusundan Gelen De�eri De�i�kene Atama
		Declare @TOTALPRICE AS FLOAT
		Declare @ROWCOUNT AS INT
		Declare @TOTALAMOUNT AS INT
		Declare @CUSTOMERCOUNT AS INT

		USE GYSALES
		Select @TOTALPRICE=SUM(TOTALPRICE),@ROWCOUNT=count(*),
		@TOTALAMOUNT=sum(AMOUNT),@CUSTOMERCOUNT=COUNT(CUSTOMERID) from SALES

		SELECT @TOTALAMOUNT TOTALAMOUNT,@ROWCOUNT ROWCOUNT_,@TOTALPRICE TOTALPRICE,@CUSTOMERCOUNT CUSTOMER


--SQL Sorgusuna De�i�ken G�nderme
		USE GYSALES
		Declare @CITY AS VARCHAR(100),@BEGDATE AS DATE,@ENDDATE AS DATE
		SET @CITY = 'BURSA'
		SET @BEGDATE = '20220401'
		SET @ENDDATE = '20220501'


		SELECT * FROM SALES
			WHERE CITY = @CITY AND
				  DATE_ BETWEEN @BEGDATE AND @ENDDATE-- Output: 1516 row

--De�i�kene Varsay�lan De�er Atama(DECLARE DEFAULT VARIABLE)
		USE GYSALES
		Declare @CITY2 AS VARCHAR(100) = '�zmir',
				@BEGDATE2 AS DATE = '20220401',
				@ENDDATE2 AS DATE = '20220501'
		SET @CITY2 = 'BURSA'
		SET @CITY2 = 'ANKARA'

		SELECT * FROM SALES
			WHERE CITY = @CITY2 AND
					DATE_ BETWEEN @BEGDATE2 AND @ENDDATE2
					-- Output: 1516 row @CITY2 = 'ANKARA'
					-- �ZM�R<BURSA<ANKRA yetki s�ras�

			
--