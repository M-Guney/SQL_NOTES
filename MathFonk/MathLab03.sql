select [CUSTOMERID],SUM(ABS(AMOUNT))TotalVolume, sum([AMOUNT])TotalBalance from LAB03
Group by [CUSTOMERID]
Order By 1

-- Her bir müþterinin oluþturdugu para hacmini ve Bakiyesini gösteren sorgudur.
