-- Rank : S�ralama yaparken s�ralama yapt��� �ey ayn� ise iki tane bir de�erine sahip Rank olabilir ve iki atlan�p �� de�erine ge�er.

Select RANK() OVER
		(ORDER BY UNITPRICE) AS RANK_ ,
		ROW_NUMBER() OVER
		(ORDER BY UNITPRICE) AS ROWNUMBER ,*
FROM ITEMS


--Bir yar��taym�� gibi iki tane 1. olabiliyor fakat 2 atlan�p 3'e ge�er.
/*
RANK_ ROWNUMBER
	1	1	1	MARKA-154	000001	KONSERVE KAPAK	EV	MUTFAK E�YA GERE�LER�	METAL EL ALETLER�	1,2
	2	2	9	MARKA-210	000009	�UBUK KRAKER 36 GR	GIDA	B�SK�V� �EREZ	B�SK�V�	2
	2	3	574	MARKA-147	000574	SU 0,5LT	��ECEK	SU MADENSUYU	SU	2
	2	4	810	MARKA-210	000810	GEVREK COCO POPS 15GR	S�T KAHVALTILIK	KAHVALTILIK	GEVREK M�SL�	2
	2	5	1268	MARKA-147	001268	S�T TOZU 5 GR	��ECEK	�AY KAHVE	S�TTOZU KREMA	2

	6	6	205	MARKA-113	000205	KAHVE 3 �N 1 ARADA 18 GR	��ECEK	�AY KAHVE	KAHVE	2,24
	7	7	1101	MARKA-210	001101	TAVUK BULYON2 L�	GIDA	CORBA BULYON	BULYONLAR	2,64
	8	8	222	MARKA-210	000222	KAHVE 3 U 1	��ECEK	�AY KAHVE	KAHVE	2,8
	8	9	271	MARKA-147	000271	KAHVE  BOL KAHVE TADI 18 GR	��ECEK	�AY KAHVE	KAHVE	2,8

	10	10	154	MARKA-210	000154	DO�AL M�NERALLI SU 200ML	��ECEK	SU MADENSUYU	MADENSUYU	3,2
	10	11	951	MARKA-59	000951	PUD�NG MUZLU 6 L�	S�T KAHVALTILIK	S�TL� TATLILAR DONDURMA	S�TL� TATLILAR	3,2
	10	12	963	MARKA-160	000963	AYRAN 200GR	��ECEK	G�NL�K ��ECEK	AYRAN 	3,2

	13	13	947	MARKA-107	000947	TUZ 750 GR	GIDA	TUZ BAHARAT	TUZ	3,6
	13	14	132	MARKA-210	000132	SALEP TEKL�	��ECEK	�AY KAHVE	TOZ ��ECEKLER	3,6
	13	15	558	MARKA-87	000558	SAKIZ 5L� DAMLA	GIDA	SAKIZ SEKERLEME	SAKIZ	3,6

	16	16	300	MARKA-82	000300	KEK ��KOLATA KAPLAMA 50 GR.	GIDA	B�SK�V� �EREZ	KEK	4

*/