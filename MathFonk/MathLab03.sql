select [CUSTOMERID],SUM(ABS(AMOUNT))TotalVolume, sum([AMOUNT])TotalBalance from LAB03
Group by [CUSTOMERID]
Order By 1

-- Her bir m��terinin olu�turdugu para hacmini ve Bakiyesini g�steren sorgudur.
