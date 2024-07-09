/* Soru: 10000 Id ye sahip bir veriden 100 adet verilen Id lerden eþleþenleri getiren Query yi yaz */


----SELECT * FROM OPENROWSET(BULK 'C:\yazýlým\sezersQ.txt', SINGLE_CLOB) AS FileContent;
--> SADECE TEK BÝR SATIRDA VERÝ GÖSTERÝYOR
-- ONUN YERÝNE GEÇÝCÝ BÝR TABLE OLUÞTURUP ONUN ÝÇÝNE VERÝ AKTARIMINI YAPTIM
-- SATIRLARI BÝRBÝRÝNDEN AYIRMAK ÝÇÝN ÝSE ROWTERMINATOR in DEGERÝNÝ '\n' YAPTIM KÝ SATIRLARDAN AYRILSIN

CREATE TABLE ATempTable (Id NVARCHAR(MAX));

BULK INSERT ATempTable
FROM 'C:\yazýlým\SQL\Sql_Questions\sezersQ.txt'
WITH (
	ROWTERMINATOR = '\n'
	 );

select * from ATempTable

--DROP TABLE ATempTable


--> COZUM 1
SELECT * FROM dbo.Product P INNER JOIN ATempTable T ON P.Id = T.Id

--> COZUM 2
SELECT * FROM dbo.Product where Id IN (32290,31229,39,30161,44,32283,30183,31239,1064,30187)