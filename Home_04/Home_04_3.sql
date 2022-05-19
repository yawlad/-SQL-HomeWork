USE vk;

ALTER TABLE users 
	ADD age INT;

ALTER TABLE profiles 
	ADD	is_active BOOL DEFAULT 1; 

SELECT age FROM users;
SELECT is_active FROM profiles;

UPDATE users
		SET age = 16
		WHERE id % 2 = 0;
UPDATE users
		SET age = 25
		WHERE id % 2 =1;
	
UPDATE profiles
		SET is_active = 0
		WHERE user_id IN (SELECT id FROM users 
							WHERE age < 18)