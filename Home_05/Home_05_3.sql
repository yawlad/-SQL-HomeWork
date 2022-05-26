USE Home_05_DB;

SELECT value FROM storehouses_products;

SELECT value FROM storehouses_products 
		ORDER BY 
			CASE 
				WHEN value = 0 THEN 1 
							ELSE 0 END, 
			value;