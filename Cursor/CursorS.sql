--CURSOR
--QUERY den gelen output i�inde d�ng� ile d�nmeye yarayan yap�d�r

--SELECT ID,CITY FROM CITIES WHERE REGION = 'MARMARA'
DECLARE @ID AS INT
DECLARE @CITY AS VARCHAR(50) 

DECLARE CRS	CURSOR FOR SELECT ID,CITY  FROM CITIES WHERE REGION ='MARMARA'
OPEN CRS
-- B�R SONRAKI SATIRA KONUMLANMAK
FETCH NEXT FROM CRS INTO  @ID,@CITY

WHILE @@FETCH_STATUS = 0 --E�er d�ng�n�n sonuna gelinmediyse
BEGIN
	SELECT @ID,@CITY

FETCH NEXT FROM CRS INTO  @ID,@CITY
END
CLOSE CRS
DEALLOCATE CRS --D�NG�Y� HAFIZADAN TEMIZLER