DECLARE @cols as NVARCHAR(MAX), @query as NVARCHAR(MAX)
SET @cols = STUFF((SELECT DISTINCT ', ' + QUOTENAME(category_name) from production.categories FOR XML PATH('')),1,2,'')
-- Buradki STUFF fonksiyonu, bir dizedeki belirli bir konumdaki karakterleri deðiþtirir. 
	-- QUOTENAME  --> potansiyel özel karakterleri temizlemek ve güvenli bir þekilde kullanmak için tasarlanmýþtýr.
-- FOR XML PATH('') kullanýlarak sonuçlar bir XML dizesine dönüþtürülür. Bu, virgül ve boþluk eklenmiþ category_name deðerlerini içeren tek bir satýr oluþturur.

SET @query = '
SELECT * FROM
( 
	SELECT 
		product_id,
		model_year,
		category_name
	FROM production.products p
		INNER JOIN production.categories c
			ON p.category_id = c.category_id
) t
	PIVOT(
		COUNT(product_id)
		FOR category_name IN (' + @cols + ')
	) AS pivot_table'

EXECUTE(@query)




		