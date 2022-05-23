USE vk;

SELECT count(*) , 
	CASE WHEN user_id IN (
			SELECT 
				user_id AS males_id
			FROM 
				profiles AS p
					JOIN 
				users AS u
				ON p.gender = 'm' AND p.user_id = u.id
				) THEN 'male likes'
		ELSE 
		'female likes'
	END AS f_m_likes
		
FROM 
	likes
GROUP BY f_m_likes;
