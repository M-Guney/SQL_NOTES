SET LANGUAGE Turkish
	SELECT DATENAME(DW,CreationDate)GUN,
	COUNT(*) YORUMSAYISI FROM LAB09
GROUP BY DATENAME(DW,CreationDate),DATEPART(DW,CreationDate)
ORDER BY DATEPART(DW,CreationDate) 