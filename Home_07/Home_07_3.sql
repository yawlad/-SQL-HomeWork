USE task_03;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	`from` varchar(255),
	`to` varchar(255)
);

INSERT INTO flights VALUES
	(NULL, 'moscow', 'omsk'),
	(NULL, 'novgorod', 'kazan'),
	(NULL, 'irkutsk', 'moscow'),
	(NULL, 'omsk', 'irkutsk'),
	(NULL, 'moscow', 'kazan');


DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	`label` varchar(255),
	`name` varchar(255)
);

INSERT INTO cities VALUES
	('moscow', 'Москва'),
	('irkutsk', 'Иркутск'),
	('novgorod', 'Новгород'),
	('kazan', 'Казань'),
	('oms', 'Омск');

------------------------------------------------------------------

SELECT 
	(SELECT name 
	FROM cities 
	WHERE `from` = label),
	(SELECT name 
	FROM cities 
	WHERE `to` = label)
FROM flights f;
