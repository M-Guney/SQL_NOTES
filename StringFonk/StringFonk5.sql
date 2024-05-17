--String Fonksiyonlarý Alýþtýrma-5
--SELECT * FROM LAB05 ORDER BY Id


SELECT ID,CreationDate,Text,
(SELECT COUNT(*) FROM string_split(Text,' '))WordCount,
(SELECT COUNT(*) FROM string_split(
Text
,' ')
WHERE value LIKE '%SQL%')SQL_WordCount
FROM LAB05
GROUP BY Id,CreationDate,Text
ORDER BY SQL_WordCount DESC
