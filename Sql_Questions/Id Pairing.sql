/* Soru: 10000 Id ye sahip bir veriden 100 adet verilen Id lerden e�le�enleri getiren Query yi yaz */


----SELECT * FROM OPENROWSET(BULK 'C:\yaz�l�m\sezersQ.txt', SINGLE_CLOB) AS FileContent;
--> SADECE TEK B�R SATIRDA VER� G�STER�YOR
-- ONUN YER�NE GE��C� B�R TABLE OLU�TURUP ONUN ���NE VER� AKTARIMINI YAPTIM
-- SATIRLARI B�RB�R�NDEN AYIRMAK ���N �SE ROWTERMINATOR in DEGER�N� '\n' YAPTIM K� SATIRLARDAN AYRILSIN

CREATE TABLE ATempTable (Id NVARCHAR(MAX));

BULK INSERT ATempTable
FROM 'C:\yaz�l�m\SQL\Sql_Questions\sezersQ.txt'
WITH (
	ROWTERMINATOR = '\n'
	 );

select * from ATempTable

--DROP TABLE ATempTable


--> COZUM 1
SELECT * FROM dbo.Product P INNER JOIN ATempTable T ON P.Id = T.Id

--> COZUM 2
SELECT * FROM dbo.Product where Id IN (32290,31229,39,30161,44,32283,30183,31239,1064,30187)