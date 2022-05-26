USE shop;

SELECT 
	name,
	(SELECT name 
	FROM catalogs
	WHERE id = catalog_id)
FROM products