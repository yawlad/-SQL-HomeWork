USE Home_05_DB;

SELECT * FROM catalogs 
	WHERE id IN (5, 1, 2) 
		ORDER BY CASE WHEN id < 5 THEN 1
					  ELSE 0
				 END,
				 id;