SELECT ID,NAME_,SURNAME,NAME1,
UPPER(LEFT(NAME2,1))+
SUBSTRING(NAME2,2,LEN(NAME2)) FROM
(
	SELECT ID,NAME_,SURNAME,NAMESURNAME,
	(SELECT VALUE FROM string_split(NAME_,' ',1) WHERE ordinal=1) NAME1,
	(SELECT VALUE FROM string_split(NAME_,' ',1) WHERE ordinal=2) NAME2 
FROM LAB09
WHERE NAME_ LIKE '% %'
) T

UPDATE LAB09 SET NAME_ =(SELECT VALUE FROM string_split(NAME_,' ',1) WHERE ordinal=1)+' '
+UPPER(LEFT(
(SELECT VALUE FROM string_split(NAME_,' ',1) WHERE ordinal=2) 
,1))+
+(SUBSTRING(
(SELECT VALUE FROM string_split(NAME_,' ',1) WHERE ordinal=2) 
,2,100))

WHERE NAME_ LIKE '% %'

SELECT * FROM LAB09
WHERE NAME_ LIKE '% %'



