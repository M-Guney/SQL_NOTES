Select * from LAB02
where year(BIRTHDATE)=1973
order by BIRTHDATE desc

--1973-05-21 örnek tarih bu tarihde doganlara dogum günü mesajý ilet
--Yontem 1
Select CONCAT('Sn ',NAME_,' ',SURNAME,' ',DATEDIFF(year,BIRTHDATE,GETDATE()),'. yaþýnýzý kutlar mutlu uzun bir ömür dilerim.') from LAB02
order by DATEDIFF(year,BIRTHDATE,GETDATE())

--Yontem 2
Select 'Sn '+NAME_+' '+SURNAME+' '+DATEDIFF(year,BIRTHDATE,GETDATE())+'. yaþýnýzý kutlar mutlu uzun bir ömür dilerim.' from LAB02
		--String ile int i toplamaya çalýþtýðý için hata verdi
		--Conversion failed when converting the varchar value '. yaþýnýzý kutlar mutlu uzun bir ömür dilerim.' to data type int.
		--Çözüm: CONVERT(varchar(30),integer_deger)
Select 'Sn '+NAME_+' '+SURNAME+' '+CONVERT(varchar(30),DATEDIFF(year,BIRTHDATE,GETDATE()))+'. yaþýnýzý kutlar mutlu uzun bir ömür dilerim.' from LAB02
order by DATEDIFF(year,BIRTHDATE,GETDATE())


