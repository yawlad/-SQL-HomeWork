USE Home_05_DB;

SELECT created_at, updated_at FROM users;

ALTER TABLE users 
	CHANGE COLUMN created_at created_at VARCHAR(256),
	CHANGE COLUMN updated_at updated_at VARCHAR(256);
	
ALTER TABLE users 
	CHANGE COLUMN created_at created_at DATETIME DEFAULT NOW(),
	CHANGE COLUMN updated_at updated_at DATETIME DEFAULT NOW();