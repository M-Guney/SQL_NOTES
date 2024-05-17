

-- Ýlk olarak o kategoriden kaç ürün oldugunu hesaplar
SELECT 
	category_name, 
	COUNT(product_id) ProductCount
FROM 
	production.products p 
	INNER JOIN production.categories c 
		ON c.category_id = p.category_id
GROUP BY 
	category_name;





-- Ýkinci olarak o yýl bütün karategorilerden kaçar tane ürün satýldýðý bilgisi gelir
SELECT * FROM
(	
	SELECT
		category_name,
		product_id,
		model_year
	FROM
		production.products p
		INNER JOIN production.categories c
			ON p.category_id = c.category_id
) t
	PIVOT(
		COUNT(product_id)
		FOR category_name IN (
		[Children Bicycles], 
        [Comfort Bicycles], 
        [Cruisers Bicycles], 
        [Cyclocross Bicycles], 
        [Electric Bikes], 
        [Mountain Bikes], 
        [Road Bikes])
	) AS pivot_table



