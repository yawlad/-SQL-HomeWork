USE shop;
CREATE OR REPLACE VIEW v1 (name, cat_name)
AS 
	SELECT p.name AS name, c.name AS cat_name 
	FROM products AS p
		JOIN 
		 catalogs AS c 
		ON p.catalog_id = c.id;
SELECT * FROM v1;