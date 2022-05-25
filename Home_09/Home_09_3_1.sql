Delimiter //

DROP FUNCTION IF EXISTS hello//

CREATE FUNCTION hello()
RETURNS varchar(255) DETERMINISTIC
BEGIN 
	IF curtime() BETWEEN '06:00:00' AND '12:00:00'
		THEN RETURN 'Good Morning';
	ELSEIF curtime() BETWEEN '12:00:00' AND '18:00:00'
		THEN RETURN 'Good Day';
	ELSEIF curtime() BETWEEN '18:00:00' AND '00:00:00'
		THEN RETURN 'Good Evening';
	ELSE RETURN 'Good Night';
	END IF;
END//
Delimiter ;

SELECT hello();
	