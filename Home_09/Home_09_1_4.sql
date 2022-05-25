USE shop;

DROP TABLE IF EXISTS home_09_1_4_dates;
CREATE TABLE home_09_1_4_dates(
	created_at date
);

INSERT INTO home_09_1_4_dates 
VALUES  ('2017-08-01'),
		('2018-08-03'),
		('2018-08-05'),
		('2018-08-10'),
		('2018-08-21'),
		('2018-09-21'),
		('2018-12-21'),
		('2020-08-21');

DELETE FROM home_09_1_4_dates
WHERE created_at NOT IN 
	(SELECT *
	FROM 
		(SELECT *
		FROM home_09_1_4_dates
		ORDER BY created_at DESC 
		LIMIT 5) t
	);

SELECT *
	FROM home_09_1_4_dates