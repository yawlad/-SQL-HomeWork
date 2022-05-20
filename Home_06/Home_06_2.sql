USE vk;

SELECT 
	count(*) AS likes 
FROM 
	likes
WHERE media_id IN (
	SELECT 
		id
	FROM 
		media
	WHERE 
		user_id IN (
			SELECT 
				user_id 
			FROM 
				profiles 
			WHERE 
				(YEAR(NOW())-YEAR(birthday)) < 10
			)
	);