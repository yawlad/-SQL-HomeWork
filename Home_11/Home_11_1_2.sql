USE shop;

Delimiter //
DROP PROCEDURE IF EXISTS set_users//
CREATE PROCEDURE set_users (num INT)
BEGIN 
	DECLARE i INT;
	SET i = 0;
	cycle1: WHILE i < num DO
	INSERT INTO users (name) VALUES
		(concat('Jim ', i));
	 	SET i = i + 1;
	END WHILE cycle1;
END//
Delimiter ;

CALL set_users(10);

