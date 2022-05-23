USE vk;

SELECT 
	count(*) AS likes  
FROM (
		likes AS l
			JOIN
		(SELECT m.id
		FROM 
			media AS m JOIN profiles AS p
			ON m.user_id = p.user_id 
		WHERE 
			(YEAR(NOW())-YEAR(birthday)) < 10 ) AS i
		ON l.media_id = i.id 
	);

		
	
	
	
	