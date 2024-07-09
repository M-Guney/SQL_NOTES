-- DENSE_RANK FONK

-- SAYI ATLAMADAN SIRALAMAYI YAPAR

--Bir yar��taym�� gibi iki tane 1. olabiliyor fakat 2 ATLANMAZ 3'e ge�er.
Select RANK() OVER
		(ORDER BY UNITPRICE DESC) AS RANK_ ,
		ROW_NUMBER() OVER
		(ORDER BY UNITPRICE DESC) AS ROWNUMBER ,
		DENSE_RANK() OVER
		(ORDER BY UNITPRICE DESC) AS DENSE_RANK_,*
FROM ITEMS


/*

1	1	1	1301	MARKA-79	001301	MISIR�Z� YA�I 18 LT TNK	GIDA	SIVI YA�LAR	MISIR�Z�	674
2	2	2	906	MARKA-144	000906	TAVA 26 CM KARNIYARIK	EV	MUTFAK E�YA GERE�LER�	METAL EL ALETLER�	439,6
3	3	3	905	MARKA-144	000905	TAVA 22 CM TENCERE	EV	MUTFAK E�YA GERE�LER�	METAL EL ALETLER�	415,6
3	4	3	776	MARKA-56	000776	FINDIK YA�I 5 LT	GIDA	SIVI YA�LAR	FINDIK	415,6

5	5	4	908	MARKA-144	000908	TENCERE 30 CM TAVA	EV	MUTFAK E�YA GERE�LER�	METAL EL ALETLER�	343,6
6	6	5	821	MARKA-22	000821	PASPAS PRAT�K TEM�ZL�K	DETERJAN TEM�ZL�K	EV TEM�ZL�K GERE�LER�	FIR�A S�P�RGE	319,2
6	7	5	309	MARKA-167	000309	KANGAL SUCUK A�IK	ET TAVUK	ET �ARK�TER�	SUCUK	319,2

8	8	6	89	MARKA-143	000089	FISTIKLI MACAR SALAM	ET TAVUK	ET �ARK�TER�	SALAM	303,6
8	9	6	146	MARKA-17	000146	SUCUK	ET TAVUK	ET �ARK�TER�	SUCUK	303,6
8	10	6	907	MARKA-144	000907	26 CM TAVA	EV	MUTFAK E�YA GERE�LER�	METAL EL ALETLER�	303,6

11	11	7	1033	MARKA-120	001033	KUZU S�S	ET TAVUK	KIRMIZI ET	KUZU	295,2

*/