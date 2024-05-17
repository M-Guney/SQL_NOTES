 
 SELECT ID,REPLACE(NAMESURNAME,' '+SURNAME,'')NAME_,SURNAME,NAMESURNAME 
 
 FROM
  (
  SELECT ID,NAMESURNAME,
  (SELECT TOP 1 value FROM string_split(NAMESURNAME,' ',1) ORDER BY ordinal desc) SURNAME
  FROM LAB08
  )T

  --> Dinamik view ile almasý daha kolay

  -->Tabloyu güncellemek için
  SELECT * FROM LAB08
  UPDATE LAB08 SET SURNAME = (SELECT TOP 1 value FROM string_split(NAMESURNAME,' ',1) ORDER BY ordinal desc)
  UPDATE LAB08 SET NAME_ = REPLACE(NAMESURNAME,' '+SURNAME,'')