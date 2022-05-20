USE Home_05_DB;

UPDATE users 
	SET created_at = NOW() 
	WHERE created_at is NULL;
UPDATE users 
	SET updated_at = NOW()
	WHERE updated_at is NULL;