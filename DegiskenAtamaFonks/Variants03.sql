--YONTEM 1
declare @random as float,@NAME AS VARCHAR(199), @SURNAME AS VARCHAR(199), @AGE AS INT
SET @random = RAND()
SET @NAME = (SELECT TOP 1 NAME_ FROM LAB03 where ID = (1+floor(@random *9667)))
SET @SURNAME = (SELECT SURNAME FROM LAB03 where ID = (1+floor(@random *9667)))
SET @AGE  = (SELECT CONVERT(varchar,DATEDIFF(YEAR,BIRTHDATE,GETDATE())) FROM LAB03
				where ID = (1+floor(@random *9667)))

PRINT 'Sn '+ @NAME + ' '+ @SURNAME +', '+CONVERT(VARCHAR,@AGE)+'. '+ 'yasýnýzý kutlar ve iyi günler dilerim'


--YONTEM 2
DECLARE @MSG AS VARCHAR(1000) = 'Sn <NAME> , <AGE> yasýnýzý kutlar ve iyi günler dilerim'
SELECT TOP 1 @NAME=NAME_+ ' ' +SURNAME,
			 @AGE = DATEDIFF(YEAR,BIRTHDATE,GETDATE()) 
			 FROM LAB03
			 ORDER BY NEWID()--Rastgele ve benzersiz id üretir
			 --Bu sayede rastgele kiþi seçmek için kullandým
SET @MSG = REPLACE(@MSG,'<NAME>',@NAME) 
SET @MSG = REPLACE(@MSG,'<AGE>',@AGE)
PRINT @MSG




