USE GYSALES_RDMS_FULL
SELECT U.NAMESURNAME KULLANICI, DATEDIFF(YEAR,U.BIRTHDATE,'2022-03-31 23:59:59') YAS,
C.CITY SEHIR,O.DATE_ TARIH,O.ID SIPARISNO,O.TOTALPRICE TOPLAMTUTAR
FROM USERS U
JOIN ORDERS O ON O.USERID=U.ID
--JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ADDRESS A ON A.ID=O.ADDRESSID
JOIN CITIES C ON C.ID=A.CITYID
WHERE DATEDIFF(YEAR,U.BIRTHDATE,GETDATE()) BETWEEN 20 AND 30 
AND
DATE_ BETWEEN '20220301' AND '2022-03-31 23:59:59'
ORDER BY O.DATE_ 


--SELECT DATEDIFF(YEAR,BIRTHDATE,GETDATE()) FROM USERS -- Yas hesaplama
