DECLARE @SAYI1 AS INT=5

DECLARE @SAYI2 AS INT=28.9

DECLARE @TOPLAM AS INT

SET @TOPLAM =@SAYI1+@SAYI2
select @TOPLAM


SELECT * FROM string_split('Ankara,�stanbul,�zmir',',')

SELECT ASCII('B')

SELECT DATEPART(DAY,GETDATE())
SELECT DATEPART(DW,GETDATE())

SET STATISTICS IO ON
SELECT * FROM ITEMS