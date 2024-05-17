Select * from LAB02
where year(BIRTHDATE)=1973
order by BIRTHDATE desc

--1973-05-21 �rnek tarih bu tarihde doganlara dogum g�n� mesaj� ilet
--Yontem 1
Select CONCAT('Sn ',NAME_,' ',SURNAME,' ',DATEDIFF(year,BIRTHDATE,GETDATE()),'. ya��n�z� kutlar mutlu uzun bir �m�r dilerim.') from LAB02
order by DATEDIFF(year,BIRTHDATE,GETDATE())

--Yontem 2
Select 'Sn '+NAME_+' '+SURNAME+' '+DATEDIFF(year,BIRTHDATE,GETDATE())+'. ya��n�z� kutlar mutlu uzun bir �m�r dilerim.' from LAB02
		--String ile int i toplamaya �al��t��� i�in hata verdi
		--Conversion failed when converting the varchar value '. ya��n�z� kutlar mutlu uzun bir �m�r dilerim.' to data type int.
		--��z�m: CONVERT(varchar(30),integer_deger)
Select 'Sn '+NAME_+' '+SURNAME+' '+CONVERT(varchar(30),DATEDIFF(year,BIRTHDATE,GETDATE()))+'. ya��n�z� kutlar mutlu uzun bir �m�r dilerim.' from LAB02
order by DATEDIFF(year,BIRTHDATE,GETDATE())


