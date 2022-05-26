USE Course_Work_MusicApp;

DROP VIEW IF EXISTS music_author_view;
CREATE VIEW music_author_view AS 
SELECT m.name AS track_name, a.pseudonym AS author_name
FROM music AS m
		JOIN 
	 authors AS a
	 ON m.author_id = a.id;

	
DROP VIEW IF EXISTS user_like_view;
CREATE VIEW user_like_view AS 
SELECT u.f_name AS user_name, COUNT(*) AS likes_amount
FROM likes AS l
		JOIN 
	 users AS u
	 ON l.user_id = u.id
GROUP BY user_name;


DROP VIEW IF EXISTS music_like_view;
CREATE VIEW music_like_view AS 
SELECT m.name AS music_name, COUNT(*) AS likes_amount
FROM likes AS l
		JOIN 
	 music AS m
	 ON l.music_id = m.id
GROUP BY music_name
ORDER BY likes_amount DESC;


DROP VIEW IF EXISTS music_music_type_view;
CREATE VIEW music_music_type_view AS 
SELECT m.name AS music_name, mt.`type` AS music_type
FROM music AS m
		JOIN 
	 music_types AS mt
	 ON m.type_id = mt.id
GROUP BY music_name;


DROP VIEW IF EXISTS music_type_likes_view;
CREATE VIEW music_type_likes_view AS 
SELECT mt.type AS music_type, COUNT(*) AS likes_amount 
FROM music_types AS mt
		JOIN 
	  (SELECT m.type_id AS music_type_id
	   FROM likes AS l
			JOIN 
	   music AS m
	   		ON l.music_id = m.id) AS lm
	   	ON mt.id = lm.music_type_id
GROUP BY music_type
ORDER BY likes_amount DESC;