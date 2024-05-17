--> CROSS APPLY(kartezyen �arp�m)
-->		E�er ki table lar aras�nda herhangi bir ba� yoksa cross apply kullan�l�r 


--> Time series tablosu; SQL ile beraber gelen tablolar
select C.CITY,D.DATE_,
ISNULL((
	SELECT SUM(TOTALPRICE) FROM ORDERS O 
	JOIN ADDRESS A ON A.ID = O.ADDRESSID
	WHERE A.CITYID=C.ID AND CONVERT(DATE,DATE_)=D.DATE_
),0)CIRO 
from CITIES C
CROSS APPLY (select * from DATES) D
where C.CITY = 'ARTV�N' 
--> Time series tablosu; SQL ile beraber gelen tablolar

--> ISNULL SAYESINDE EGER K� NULL DE�ER D�ND�RECEKSE ONUN YER�NE 0 DEGER�N� D�ND�R�R
