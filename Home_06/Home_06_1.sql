USE vk;

SET @x_user_id = 51;

SELECT id, firstname, lastname
FROM users 
WHERE id = (
	SELECT to_user_id
	FROM (
		SELECT count(to_user_id) AS amount, to_user_id 
		FROM (
			SELECT from_user_id AS from_user_id, to_user_id AS to_user_id
			FROM messages
			WHERE from_user_id = @x_user_id
				UNION ALL 
			SELECT to_user_id AS from_user_id , from_user_id AS to_user_id
			FROM messages
			WHERE to_user_id = @x_user_id
			) AS fui_tui_table
		GROUP BY (to_user_id)
		ORDER BY amount DESC
		LIMIT 1
		) AS temp_table
	);
	
	

