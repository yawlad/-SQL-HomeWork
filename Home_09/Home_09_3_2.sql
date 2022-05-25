USE shop;

Delimiter //
DROP TRIGGER IF EXISTS Bad_Product_Insert//
CREATE TRIGGER Bad_Product_Insert
BEFORE INSERT 
ON products
FOR EACH ROW 
BEGIN 
	IF(isnull(NEW.name) AND isnull(NEW.description)) 
		THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Null error'; 
	END IF;
END//
Delimiter ;

INSERT INTO products(name, description) 
VALUES	(NULL, NULL);

