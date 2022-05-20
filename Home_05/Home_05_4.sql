USE Home_05_DB;

SELECT * FROM users 
	WHERE DATE_FORMAT(birthday_at, '%m') IN (05, 08); 