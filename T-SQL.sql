--> TRANSACT- SQL				T-SQL
/*ASCII
SELECT ASCII('A')
SELECT ASCII('Z')

*/
/*CHAR				opposite of ASCII
SELECT CHAR(65)   -->A
SELECT CHAR(90)   -->Z

*/
/*CONCAT			Birden fazla stringi birle�tirir
SELECT CONCAT('TURKCELL',' ','GELECEG� YAZANLAR')
SELECT 'TURKCELL '+ 'GELECEG� '+'YAZANLAR'

BAZEN + PROBLEM �IKARTAB�L�R
*/
/*LEFT-RIGHT
SELECT LEFT('TURKCELL GELECEG� YAZANLAR',8) 
SELECT RIGHT('TURKCELL GELECEG� YAZANLAR',8)

*/
/* LTRIM,RTRIM, TRIM					TRIM = KIRPMAK
SQL Server 2022 Oncesi
SELECT TRIM(' TURKCELL GELECEG� YAZANLAR ') -->TURKCELL GELECEG� YAZANLAR: SA�/SOL tarftaki bo�luklar� siler
SELECT LTRIM(' TURKCELL GELECEG� YAZANLAR ') -->TURKCELL GELECEG� YAZANLAR : SOL
SELECT RTRIM(' TURKCELL GELECEG� YAZANLAR ') --> TURKCELL GELECEG� YAZANLAR: SA� bosluk siler

SELECT LTRIM('TURKCELL GELECEG� YAZANLAR','TURKCELL') --> GELECEG� YAZANLAR:
SELECT RTRIM('TURKCELL GELECEG� YAZANLAR','YAZANLAR') -->TURKCELL GELECEG� :

SQL Server 2022 Sonras�
SELECT TRIM (LEADING 'TURKCELL' FROM 'TURKCELL GELECEG� YAZANLAR, TURKCELL GELECEG� YAZANLAR') --> ILK Turkcell i siler
SELECT TRIM (TRAILING 'YAZANLAR' FROM 'TURKCELL GELECEG� YAZANLAR, TURKCELL GELECEG� YAZANLAR') --> SON Yazanlar � siler
SELECT TRIM (BOTH '#' FROM '#TURKCELL GELECEG� YAZANLAR#') --> SAG/SOL # i siler
SELECT TRIM (BOTH '<B></B>' FROM '<B>TURKCELL GELECEG� YAZANLAR</B>') --> SAG/SOL <B></B> i siler

*/
/*Lower, Upper, Reverse, Replicate
SELECT LOWER('TURKCELL GELECEG� YAZANLAR') --> turkcell gelecegi yazanlar
SELECT UPPER('turkcell gelecegi yazanlar') --> TURKCELL GELECEG� YAZANLAR
SELECT REVERSE('Gelece�i Yazanlar') --> ralnazaY i�eceleG
SELECT REPLICATE('SQL',5) --> SQLSQLSQLSQLSQL 

*/
/*Replace
SELECT REPLACE('M.S�leyman G�ney','M.','Muhammed ') -->Muhammed S�leyman G�ney

*/
/*Substring		String par�alama
SELECT SUBSTRING('SQL Server 2022 ile yeni gelen �zelliklerden biri de iyile�tirilen TRIM fonksiyonudur' , 1, 15)
Output: SQL Server 2022

SELECT SUBSTRING('SQL Server 2022 ile yeni gelen �zelliklerden biri de iyile�tirilen TRIM fonksiyonudur' , 17, 25)
Output: ile yeni gelen �zellikler

*/
/*Charindex
SELECT CHARINDEX('SQL','SQL Server 2022 ile yeni gelen �zelliklerden biri de iyile�tirilen TRIM fonksiyonudur') -->1
SELECT CHARINDEX('TRIM','SQL Server 2022 ile yeni gelen �zelliklerden biri de iyile�tirilen TRIM fonksiyonudur') -->68

SELECT CHARINDEX('e','MERHABA ARKADA�LAR',3)-- 0 
		-- 3 k�sm� ba�l�yaca�� indisi belirtir

Aranan ifade birden fazla ge�se bile ilk buldugu degeri d�nd�r�r
*/
/*String Split						Tablo t�r�nde deger d�nd�r�r
SQL 2022 ONCESI
SELECT * FROM string_split('TURKCELL GELECEGI YAZANLAR',' ') -->TURKCELL,GELECEGI,YAZANLAR

SQL 2022 SONRASI
SELECT * FROM string_split('Istanbul,Ankara,Konya',',',1) -->Istanbul,1,	Ankara,2,   Konya,3
**ordinal diye sat�r numaralar�n� da d�nd�r�r
*/