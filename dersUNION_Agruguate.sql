use NORTHWND
select * from Customers
where ContactTitle='Owner'

ALTER TABLE Customers
ADD YASS tinyint
--> UNUTMA [Column_Name Data_Type] �eklinde olacak (,) olmayacak
ALTER TABLE Customers
Drop column Phone,Fax
-->ERROR
	--Drop column Address,Region,PostalCode,Phone
	-- ALTER TABLE DROP COLUMN Region failed because one or more objects access this column.
	-- Ba�lant� oldu�undan kaynakl� hata vermektedir

Select * From Customers where YASS Between 20 and 50
select * from Customers where ContactName like'm%'
select * from Customers where ContactTitle in ('Owner','Sales Representative')
select avg(YASS)Yas_Ortalama from Customers --> Ortalama Yas� hesaplar(32)
-- Sum(), Max(), Min(),Count()
select count(*) from Customers--> Ne kadar m��teri var(91)
select count(YASS) from Customers -->(20)
-->		Count() Sadece i�inde veri olanlar� sayar

--ContactName i m ile bitmeyen leri yas� b�y�kten k����e s�rala ?
select *from Customers where ContactName not like 'm%'
Order by YASS desc


--UNION(Birle�im K�mesi)
--UNION ALL(Birle�im K�mesi ama ortak veriler TEKRAR EDER)
--INTERSECT(Kesi�im K�mesi)
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
--Customers ile Customers2 fark�n� yazar, 1.de olan 2 de olmayanlar� getirir.

--> Yedek alma k�sm�
		select * into Customers2 from Customers

--> Database Diagrams a gir add diyip B�t�n table lar� se�
--		Bu sayede Tablelar aras�ndaki ili�kileri g�rebiliriz

/** Primary Key: Birincil Anahtar Benzersiz
	Foreign Key: �kincil Anahtar (�ki alan� birbirine ba�lamada kullan�l�r)
	Composite Key: 
	Uniqe Key: (BO� BIRAKILABILINIR(Ex.EMAIL Uniqe key))
	--> Ensure all values going to store into the column will be unique.*/

