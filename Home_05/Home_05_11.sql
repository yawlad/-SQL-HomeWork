USE Home_05_DB;

SELECT * FROM users;

SELECT FLOOR((AVG(TO_DAYS(NOW()) - TO_DAYS(birthday_at)))/365.25) AS average_age FROM users;