
SET autocommit=0;

START TRANSACTION;
INSERT INTO sample.users 
	SELECT id, name 
	FROM shop.users
	WHERE id = 1;
COMMIT;