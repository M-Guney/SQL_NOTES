select * from LAB01
--select * into LAB01_YEDEK from LAB01

update LAB01
set BIRTHDATE = CONVERT(date,BIRTHDATE_STR)
-- �evirmeye �al���rken hata ald�m

-- BIRTHDATE_STR i kontrol edelim
select * from LAB01 where isdate(BIRTHDATE_STR)=0--59 sat�r hatal� 10.000 sat�r i�inden

--Sadece �evrilebilenleri Birthdate e �evirelim
--Yontem 1
update LAB01
set BIRTHDATE = TRY_CONVERT(date,BIRTHDATE_STR)
select * from LAB01 
--S�f�rlama kodu
update LAB01
set BIRTHDATE = NULL
select * from LAB01
--Yontem 2
update LAB01
set BIRTHDATE = TRY_CAST(BIRTHDATE_STR AS DATE)
select * from LAB01

