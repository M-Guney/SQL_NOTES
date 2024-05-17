--> CROSS APPLY(kartezyen çarpým)
-->		Eðer ki table lar arasýnda herhangi bir bað yoksa cross apply kullanýlýr 


--> Time series tablosu; SQL ile beraber gelen tablolar
select C.CITY,D.DATE_,
ISNULL((
	SELECT SUM(TOTALPRICE) FROM ORDERS O 
	JOIN ADDRESS A ON A.ID = O.ADDRESSID
	WHERE A.CITYID=C.ID AND CONVERT(DATE,DATE_)=D.DATE_
),0)CIRO 
from CITIES C
CROSS APPLY (select * from DATES) D
where C.CITY = 'ARTVÝN' 
--> Time series tablosu; SQL ile beraber gelen tablolar

--> ISNULL SAYESINDE EGER KÝ NULL DEÐER DÖNDÜRECEKSE ONUN YERÝNE 0 DEGERÝNÝ DÖNDÜRÜR
