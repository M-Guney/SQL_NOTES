SELECT TOP 10
C.CITY, I.ITEMCODE,I.ITEMNAME,
I.BRAND,I.CATEGORY1,I.CATEGORY2,I.CATEGORY3,
SUM(OD.AMOUNT) TOPLAMADET, SUM(OD.LINETOTAL) TOPLAMTUTAR
FROM ORDERS O

JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ITEMS I ON I.ID=OD.ITEMID

WHERE A.CITYID=34 AND O.DATE_ BETWEEN '20220101'AND'2022-03-31 23:59:59'
GROUP BY C.CITY, I.ITEMCODE,I.ITEMNAME,
I.BRAND,I.CATEGORY1,I.CATEGORY2,I.CATEGORY3
ORDER BY SUM(OD.LINETOTAL)DESC


