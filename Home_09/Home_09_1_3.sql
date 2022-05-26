USE shop;

DROP TABLE IF EXISTS home_09_1_3_dates;
CREATE TABLE home_09_1_3_dates(
	created_at date
);

INSERT INTO home_09_1_3_dates 
VALUES  ('2018-08-01'),
		('2018-08-03'),
		('2018-08-05'),
		('2018-08-10'),
		('2018-08-21');

SELECT dt,
		(SELECT EXISTS(SELECT * FROM home_09_1_3_dates WHERE created_at = dt)) AS if_is
FROM 
	(SELECT dt FROM 
		(SELECT adddate('2018-08-01',t1*10 + t0) dt from
 			(SELECT 0 t0 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t0,
 			(SELECT 0 t1 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) t1) t
	WHERE dt BETWEEN '2018-08-01' AND '2018-08-31'
	ORDER BY dt) AS dt_t;
		
	
	
	

								