USE vk;

SELECT count(*) , 
	CASE WHEN user_id IN (
			SELECT 
				user_id AS males_id
			FROM 
				profiles 
			WHERE 
				gender = 'm'
				) THEN 'male likes'
		ELSE 
		'female likes'
	END AS f_m_likes
		
FROM 
	likes
GROUP BY f_m_likes;
