USE vk;

SET @x_user_id = 51;

SELECT firstname, lastname 
FROM users
WHERE id IN ( 
	SELECT id 
	FROM (
		SELECT id, count(*) AS amount 
		FROM (
			SELECT m.from_user_id AS id, m.to_user_id
			FROM users AS u
				LEFT JOIN
	 			messages AS m
				ON m.to_user_id = u.id
			WHERE u.id = 51
			
				UNION ALL 
			
			SELECT m.to_user_id AS id, m.from_user_id
			FROM users AS u
				LEFT JOIN
	 			messages AS m
				ON m.from_user_id = u.id
			WHERE u.id = 51
			) AS temp
		GROUP BY id
		ORDER BY amount DESC 
		LIMIT 1	
	) AS temp
);