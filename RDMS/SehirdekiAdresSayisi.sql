
SELECT U.ID KULLANICIID, U.NAMESURNAME ADSOYAD,
C.CITY SEHIR,COUNT(A.ID)
FROM USERS U
JOIN ADDRESS A ON A.USERID = U.ID
JOIN CITIES C ON C.ID=A.CITYID
GROUP BY C.CITY,U.NAMESURNAME,U.ID
ORDER BY NAMESURNAME