USE Home_05_DB;

SELECT birthday_at FROM users;

SELECT DAYNAME(CONCAT(YEAR(NOW()), '-', DATE_FORMAT(birthday_at, '%m-%d'))) AS day_name,
	   COUNT(CONCAT(YEAR(NOW()), '-', DATE_FORMAT(birthday_at, '%m-%d'))) AS amount
	FROM users
	GROUP BY day_name;