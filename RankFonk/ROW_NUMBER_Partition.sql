-- # ROW_NUMBER


-- Her bir Markan�n i�indeki �r�ne Birim fiyat�na g�re s�ra numaras� verir.
Select ROW_NUMBER() OVER
		(PARTITION BY BRAND ORDER BY --		Partition : B�lme, B�l�nme
	UNITPRICE DESC) AS ROW_NUMBER_,*
FROM ITEMS
--WHERE BRAND = 'Marka-03'
-- PARITION BY : Numaralan�d�r�rken hepsini ard���k yapmak yerine par�a par�a b�lmeye yarar.
--				 �rnek: Marka-03'te  1 den ba�lar 21 de biter ROW_NUMBER ard�ndan Marka-04 i�in tekrar birden ba�lar

SELECT * FROM ITEMS

/*
1	327	MARKA-03	000327	6 LT YUMU�ATICI LAVANTA	DETERJAN TEM�ZL�K	�AMA�IR YIKAMA	�AMA�IR YUMU�ATICI	70
2	342	MARKA-03	000342	KAPI ONU PASPAS	EV	EV TEKST�L	MUTFAK	63,2
3	299	MARKA-03	000299	YUMU�ATICI 6 LT	DETERJAN TEM�ZL�K	�AMA�IR YIKAMA	�AMA�IR YUMU�ATICI	39,2
4	331	MARKA-03	000331	SIVI SABUN BAHAR FERAHLI�I 2500ML	KOZMET�K	DU� BANYO	SIVI JEL SABUNLAR	38
5	332	MARKA-03	000332	SIVI SABUN DO�AL ES�NT� 2500ML	KOZMET�K	DU� BANYO	SIVI JEL SABUNLAR	38
6	1275	MARKA-03	001275	MANGAL K�M�R� 1KG	EV	MUTFAK E�YA GERE�LER�	P���RME GERE�LER�	31,2
7	328	MARKA-03	000328	�AMA�IR MAK. K�RE� �NLEY�C� 500GR	DETERJAN TEM�ZL�K	�AMA�IR YIKAMA	�AMA�IR KATKILARI	26,32
8	1129	MARKA-03	001129	AH�AP TEM�ZLEY�C�S� 1 LT	DETERJAN TEM�ZL�K	EV TEM�ZLEY�C�	AH�AP TEM�ZLEY�C�	23,92
9	335	MARKA-03	000335	�AMA�IR SUYU 4 LT	DETERJAN TEM�ZL�K	�AMA�IR YIKAMA	�AMA�IR SULARI	23,6
10	340	MARKA-03	000340	ALUM�NYUM FOLYO 15 METRE	EV	MUTFAK E�YA GERE�LER�	MUTFAK SARF MALZEMES�	22
11	982	MARKA-03	000982	��P TORBASI B�ZG B�Y�K BOY LAVANTAKOKULU	EV	MUTFAK E�YA GERE�LER�	MUTFAK SARF MALZEMES�	20
12	330	MARKA-03	000330	SIVI EL SABUNU DEN�Z ES�NT�S� 1000ML	KOZMET�K	DU� BANYO	SIVI JEL SABUNLAR	18
13	333	MARKA-03	000333	Y�ZEY TEM�ZLEY�C� 1LT LAVANTA	DETERJAN TEM�ZL�K	EV TEM�ZLEY�C�	Y�ZEY TEM�ZLEY�C�	15,92
14	1130	MARKA-03	001130	CAM TEM�ZLEY�C� 750 ML	DETERJAN TEM�ZL�K	EV TEM�ZLEY�C�	CAM PARLAK Y�ZEY	14,32
15	329	MARKA-03	000329	BULA�IK DETERJANI 750ML 	DETERJAN TEM�ZL�K	BULA�IK YIKAMA	ELDE YIKAMA	13,2
16	334	MARKA-03	000334	KREM TEM�ZLEY�C� 500ML L�MONLU	DETERJAN TEM�ZL�K	EV TEM�ZLEY�C�	MUTFAK BANYO TEM�ZLEY�C�	12,72
17	336	MARKA-03	000336	TEM�ZL�K BEZ� 3LU	DETERJAN TEM�ZL�K	EV TEM�ZL�K GERE�LER�	TEM�ZL�K AMA�LI BEZLER	7,2
18	341	MARKA-03	000341	BUZDOLABI PO�ET� ORTA 50 ADET	EV	MUTFAK E�YA GERE�LER�	MUTFAK SARF MALZEMES�	6,8
19	337	MARKA-03	000337	S�NGER 3LU OLUKLU	DETERJAN TEM�ZL�K	EV TEM�ZL�K GERE�LER�	TEM�ZL�K AMA�LI BEZLER	6
20	338	MARKA-03	000338	PLAST�K �ATAL 10 ADET	EV	MUTFAK E�YA GERE�LER�	MUTFAK SARF MALZEMES�	4
21	339	MARKA-03	000339	PLAST�K KA�IK 10 ADET	EV	MUTFAK E�YA GERE�LER�	MUTFAK SARF MALZEMES�	4

1	627	MARKA-04	000627	150 ML KADIN	KOZMET�K	PARF�M DEODORANT	DEODORANT	60
2	660	MARKA-04	000660	ROLLON 50 ML MODERN	KOZMET�K	PARF�M DEODORANT	ROLL-ON	58
3	629	MARKA-04	000629	150 ML DEO FOR MEN OCEAN BLUE	KOZMET�K	PARF�M DEODORANT	DEODORANT	55,6

1	722	MARKA-05	000722	�AMA�IR SUYU 4,4LT.LAVANTA	DETERJAN TEM�ZL�K	�AMA�IR YIKAMA	�AMA�IR SULARI	57,2
2	720	MARKA-05	000720	�AMA�IR SUYU 4,4 KG H�JYEN	DETERJAN TEM�ZL�K	�AMA�IR YIKAMA	�AMA�IR SULARI	52
3	721	MARKA-05	000721	�AMA�IR SUYU 1.1 KG LAVANTA	DETERJAN TEM�ZL�K	�AMA�IR YIKAMA	�AMA�IR SULARI	22,8

*/