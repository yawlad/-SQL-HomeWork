DROP DATABASE IF EXISTS home_09;
CREATE DATABASE home_09;

USE home_09;

DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts(
	id SERIAL,
	name varchar(255),
	passwd varchar(255)
);

INSERT INTO accounts 
VALUES (NULL, 'Robert', '1a2ba'),
	   (NULL, 'Nick', '1a2bc'),
	   (NULL, 'Mike', '1a2bd'),
	   (NULL, 'Liza', '1a2be');

CREATE OR REPLACE VIEW username AS 
SELECT accounts.id AS id,
	   accounts.name AS name
FROM accounts;

CREATE USER 'user_read'@'localhost' IDENTIFIED WITH sha256_password BY '1111';
GRANT SELECT ON home_09.username to 'user_read'@'localhost';

