--> TRANSACT- SQL				T-SQL
/*ASCII
SELECT ASCII('A')
SELECT ASCII('Z')

*/
/*CHAR				opposite of ASCII
SELECT CHAR(65)   -->A
SELECT CHAR(90)   -->Z

*/
/*CONCAT			Birden fazla stringi birleþtirir
SELECT CONCAT('TURKCELL',' ','GELECEGÝ YAZANLAR')
SELECT 'TURKCELL '+ 'GELECEGÝ '+'YAZANLAR'

BAZEN + PROBLEM ÇIKARTABÝLÝR
*/
/*LEFT-RIGHT
SELECT LEFT('TURKCELL GELECEGÝ YAZANLAR',8) 
SELECT RIGHT('TURKCELL GELECEGÝ YAZANLAR',8)

*/
/* LTRIM,RTRIM, TRIM					TRIM = KIRPMAK
SQL Server 2022 Oncesi
SELECT TRIM(' TURKCELL GELECEGÝ YAZANLAR ') -->TURKCELL GELECEGÝ YAZANLAR: SAÐ/SOL tarftaki boþluklarý siler
SELECT LTRIM(' TURKCELL GELECEGÝ YAZANLAR ') -->TURKCELL GELECEGÝ YAZANLAR : SOL
SELECT RTRIM(' TURKCELL GELECEGÝ YAZANLAR ') --> TURKCELL GELECEGÝ YAZANLAR: SAÐ bosluk siler

SELECT LTRIM('TURKCELL GELECEGÝ YAZANLAR','TURKCELL') --> GELECEGÝ YAZANLAR:
SELECT RTRIM('TURKCELL GELECEGÝ YAZANLAR','YAZANLAR') -->TURKCELL GELECEGÝ :

SQL Server 2022 Sonrasý
SELECT TRIM (LEADING 'TURKCELL' FROM 'TURKCELL GELECEGÝ YAZANLAR, TURKCELL GELECEGÝ YAZANLAR') --> ILK Turkcell i siler
SELECT TRIM (TRAILING 'YAZANLAR' FROM 'TURKCELL GELECEGÝ YAZANLAR, TURKCELL GELECEGÝ YAZANLAR') --> SON Yazanlar ý siler
SELECT TRIM (BOTH '#' FROM '#TURKCELL GELECEGÝ YAZANLAR#') --> SAG/SOL # i siler
SELECT TRIM (BOTH '<B></B>' FROM '<B>TURKCELL GELECEGÝ YAZANLAR</B>') --> SAG/SOL <B></B> i siler

*/
/*Lower, Upper, Reverse, Replicate
SELECT LOWER('TURKCELL GELECEGÝ YAZANLAR') --> turkcell gelecegi yazanlar
SELECT UPPER('turkcell gelecegi yazanlar') --> TURKCELL GELECEGÝ YAZANLAR
SELECT REVERSE('Geleceði Yazanlar') --> ralnazaY iðeceleG
SELECT REPLICATE('SQL',5) --> SQLSQLSQLSQLSQL 

*/
/*Replace
SELECT REPLACE('M.Süleyman Güney','M.','Muhammed ') -->Muhammed Süleyman Güney

*/
/*Substring		String parçalama
SELECT SUBSTRING('SQL Server 2022 ile yeni gelen özelliklerden biri de iyileþtirilen TRIM fonksiyonudur' , 1, 15)
Output: SQL Server 2022

SELECT SUBSTRING('SQL Server 2022 ile yeni gelen özelliklerden biri de iyileþtirilen TRIM fonksiyonudur' , 17, 25)
Output: ile yeni gelen özellikler

*/
/*Charindex
SELECT CHARINDEX('SQL','SQL Server 2022 ile yeni gelen özelliklerden biri de iyileþtirilen TRIM fonksiyonudur') -->1
SELECT CHARINDEX('TRIM','SQL Server 2022 ile yeni gelen özelliklerden biri de iyileþtirilen TRIM fonksiyonudur') -->68

SELECT CHARINDEX('e','MERHABA ARKADAÞLAR',3)-- 0 
		-- 3 kýsmý baþlýyacaðý indisi belirtir

Aranan ifade birden fazla geçse bile ilk buldugu degeri döndürür
*/
/*String Split						Tablo türünde deger döndürür
SQL 2022 ONCESI
SELECT * FROM string_split('TURKCELL GELECEGI YAZANLAR',' ') -->TURKCELL,GELECEGI,YAZANLAR

SQL 2022 SONRASI
SELECT * FROM string_split('Istanbul,Ankara,Konya',',',1) -->Istanbul,1,	Ankara,2,   Konya,3
**ordinal diye satýr numaralarýný da döndürür
*/