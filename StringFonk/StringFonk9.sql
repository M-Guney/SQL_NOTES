
select ID,NAME_,SURNAME,NAMESURNAME from LAB09
WHERE NAME_ LIKE '% %'

(SELECT TOP 1 value FROM string_split((SELECT NAME_ FROM LAB09),' ',1))T

UPDATE LAB09 SET NAMESURNAME = CONCAT(NAME_,' ',SURNAME)

UPDATE LAB09 SET NAME_ = CONCAT(
    (SELECT TOP 1 value FROM string_split(NAME_,' ',1) ORDER BY ordinal),' ',
    (SELECT TOP 1 LEFT(value,1)+LOWER(SUBSTRING(value,2,LEN(value))) FROM string_split(NAME_,' ',1) WHERE ordinal = 2)
)
WHERE NAME_ LIKE '% %'

-->  Sadece ordinal = 2 ye eriþemediði koþullarda hata verir ama yine de ilk harfi büyütür

