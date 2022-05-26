USE shop;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs(
	id SERIAL,
	created_at datetime DEFAULT now(),
	table_name varchar(50),
	added_data varchar(255)
) ENGINE = ARCHIVE;

Delimiter //
DROP PROCEDURE IF EXISTS create_log//
CREATE PROCEDURE create_log (table_n varchar(50), insert_data varchar(255)) 
BEGIN 
	INSERT INTO logs (table_name, added_data) VALUES
		(table_n, insert_data);
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_u//
CREATE TRIGGER create_log_u 
AFTER INSERT 
ON users 
FOR EACH ROW 
BEGIN 
	CALL create_log('users', NEW.name);
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_c//
CREATE TRIGGER create_log_c 
AFTER INSERT 
ON catalogs 
FOR EACH ROW 
BEGIN 
	CALL create_log('catalogs', NEW.name);
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_p//
CREATE TRIGGER create_log_p 
AFTER INSERT 
ON products 
FOR EACH ROW 
BEGIN 
	CALL create_log('products', NEW.name);
END//
Delimiter ;

INSERT users (name) VALUES ('Drake');

