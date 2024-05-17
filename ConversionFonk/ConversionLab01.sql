select * from LAB01
--select * into LAB01_YEDEK from LAB01

update LAB01
set BIRTHDATE = CONVERT(date,BIRTHDATE_STR)
-- Çevirmeye çalýþýrken hata aldým

-- BIRTHDATE_STR i kontrol edelim
select * from LAB01 where isdate(BIRTHDATE_STR)=0--59 satýr hatalý 10.000 satýr içinden

--Sadece çevrilebilenleri Birthdate e çevirelim
--Yontem 1
update LAB01
set BIRTHDATE = TRY_CONVERT(date,BIRTHDATE_STR)
select * from LAB01 
--Sýfýrlama kodu
update LAB01
set BIRTHDATE = NULL
select * from LAB01
--Yontem 2
update LAB01
set BIRTHDATE = TRY_CAST(BIRTHDATE_STR AS DATE)
select * from LAB01

