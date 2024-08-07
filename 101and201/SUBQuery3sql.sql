SELECT DISTINCT U.ID, U.NAMESURNAME, 
(
SELECT TOP 1 MAX(DATE_) FROM ORDERS O
WHERE O.USERID = U.ID
GROUP BY O.USERID
)SON_ALISVERIS_TARIHI,
(
SELECT TOP 1 C.CITY FROM ORDERS O
JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
WHERE O.USERID = U.ID
GROUP BY O.USERID,C.CITY,DATE_
ORDER BY DATE_ DESC
)SON_ALISVERIS_SEHRI,
(
SELECT TOP 1 A.ADDRESSTEXT FROM ORDERS O
JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
WHERE O.USERID = U.ID
GROUP BY O.USERID,A.ADDRESSTEXT,DATE_
ORDER BY DATE_ DESC
)SON_ALISVERIS_YERI
FROM USERS U
ORDER BY 1   


