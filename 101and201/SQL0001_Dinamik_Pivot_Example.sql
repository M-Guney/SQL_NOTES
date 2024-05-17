DECLARE @cols as NVARCHAR(MAX), @query as NVARCHAR(MAX)
SET @cols = STUFF((SELECT DISTINCT ', ' + QUOTENAME(category_name) from production.categories FOR XML PATH('')),1,2,'')
-- Buradki STUFF fonksiyonu, bir dizedeki belirli bir konumdaki karakterleri de�i�tirir. 
	-- QUOTENAME  --> potansiyel �zel karakterleri temizlemek ve g�venli bir �ekilde kullanmak i�in tasarlanm��t�r.
-- FOR XML PATH('') kullan�larak sonu�lar bir XML dizesine d�n��t�r�l�r. Bu, virg�l ve bo�luk eklenmi� category_name de�erlerini i�eren tek bir sat�r olu�turur.

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




		