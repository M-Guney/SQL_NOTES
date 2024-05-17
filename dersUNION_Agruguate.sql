use NORTHWND
select * from Customers
where ContactTitle='Owner'

ALTER TABLE Customers
ADD YASS tinyint
--> UNUTMA [Column_Name Data_Type] þeklinde olacak (,) olmayacak
ALTER TABLE Customers
Drop column Phone,Fax
-->ERROR
	--Drop column Address,Region,PostalCode,Phone
	-- ALTER TABLE DROP COLUMN Region failed because one or more objects access this column.
	-- Baðlantý olduðundan kaynaklý hata vermektedir

Select * From Customers where YASS Between 20 and 50
select * from Customers where ContactName like'm%'
select * from Customers where ContactTitle in ('Owner','Sales Representative')
select avg(YASS)Yas_Ortalama from Customers --> Ortalama Yasý hesaplar(32)
-- Sum(), Max(), Min(),Count()
select count(*) from Customers--> Ne kadar müþteri var(91)
select count(YASS) from Customers -->(20)
-->		Count() Sadece içinde veri olanlarý sayar

--ContactName i m ile bitmeyen leri yasý büyükten küçüðe sýrala ?
select *from Customers where ContactName not like 'm%'
Order by YASS desc


--UNION(Birleþim Kümesi)
--UNION ALL(Birleþim Kümesi ama ortak veriler TEKRAR EDER)
--INTERSECT(Kesiþim Kümesi)
--EXCEPT(FARKLI OLANLAR)

--UNION
Select * from Customers
UNION Select * from Customers2 --(92 row) 91 + 1

Select * from Customers
UNION ALL select * from Customers2 --(182 row) 91 + 91

--Intersect
Select * from Customers
INTERSECT select * from Customers2 --(90 row) 91 - 1 

--EXCEPT
Select * from Customers
EXCEPT select * from Customers2 --(1 row) 91 - 90
--Customers ile Customers2 farkýný yazar, 1.de olan 2 de olmayanlarý getirir.

--> Yedek alma kýsmý
		select * into Customers2 from Customers

--> Database Diagrams a gir add diyip Bütün table larý seç
--		Bu sayede Tablelar arasýndaki iliþkileri görebiliriz

/** Primary Key: Birincil Anahtar Benzersiz
	Foreign Key: Ýkincil Anahtar (Ýki alaný birbirine baðlamada kullanýlýr)
	Composite Key: 
	Uniqe Key: (BOÞ BIRAKILABILINIR(Ex.EMAIL Uniqe key))
	--> Ensure all values going to store into the column will be unique.*/

