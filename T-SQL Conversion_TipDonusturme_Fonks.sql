-->Tip d�n��t�rme Fonksiyonlar�

--Cast, Convert
		Select CAST('2024-02-23' AS DATE)AS DATE_ --Convert Varchar to DATE

		Select Cast('2023-02-23 12:21:54' AS date)as DATE_--2023-01-24
		Select Cast('2023-02-23 12:21:54' AS time)AS TIME_--12:21:54.0000000
		Select Cast('2023-02-23 12:21:54' AS datetime)AS DATETIME_--2023-01-24 12:21:54.000

		SELECT CAST('20' as int) + CAST('15' as int)--35


		Select CONVERT(DATE,'2023-02-23 12:21:54')AS DATE_--2024-02-23
		Select CONVERT(time,'2023-02-23 12:21:54')AS TIME_--12:21:54.0000000
		Select CONVERT(datetime,'2023-02-23 12:21:54')AS DATETIME_--2023-02-23 12:21:54.000

		Select CONVERT(int,'15') + CONVERT(int,'20')--35
		--Select CONVERT(int,'20.9')--failed when converting the varchar value '20.9' to data type int.
		Select CONVERT(int,20.9)--20
		Select CONCAT('Bug�n�n tarihi: ',CONVERT(varchar(30),GETDATE(),104),' Saat: ',CONVERT(varchar(30),GETDATE(),108))--Bug�n�n tarihi: 17.05.2024;
		--Bug�n�n tarihi: 17.05.2024 Saat: 11:14:32

		--Ayn� tip d�n��t�rme
		Select Convert(varchar,'qwertyasdzxcvb145262131123456789')
		Select Convert(varchar(30),'qwertyasdzxcvb145262131123456789')--Ayn�s�
		-- Output: qwertyasdzxcvb1452621311234567 --30 char
		select len('qwertyasdzxcvb145262131123456789')--32 char
		--E�erki girilen varchar degeri string den k���kse sadece alabildi�i k�sm� al�r. 



--TryCast, TryConvert
		 --�eviremedi�i yerde NULL deger d�nd�r�r

		 --Select CONVERT(date,'2023-13-51')-- Conversion failed when converting date and/or time from character string.
		 Select TRY_CONVERT(date,'2023-13-51')-- NULL

		 Select CAST('2023-13-12' as DATE)-- Conversion failed when converting date and/or time from character string.
		 Select TRY_CAST('2023-13-12' as DATE)-- NULL