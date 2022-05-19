USE vk;

DROP TABLE IF EXISTS videos;
DROP TABLE IF EXISTS video_albums;
CREATE TABLE video_albums(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	name VARCHAR(255),
	created_at DATETIME DEFAULT NOW(),
	udated_at DATETIME ON UPDATE NOW(),
	
	FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS videos;
CREATE TABLE videos(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	album_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (album_id) REFERENCES video_albums(id),
	FOREIGN KEY (media_id) REFERENCES media(id)
);

DROP TABLE IF EXISTS game_types;
CREATE TABLE game_types(
	id SERIAL,
	game_type VARCHAR(255)
);

DROP TABLE IF EXISTS games;
CREATE TABLE games(
	id SERIAL,
	game_type_id BIGINT UNSIGNED NOT NULL,
	author_user_id BIGINT UNSIGNED NOT NULL,
	name VARCHAR(255),
	created_at DATETIME DEFAULT NOW(),
	udated_at DATETIME ON UPDATE NOW(),
	
	FOREIGN KEY (game_type_id) REFERENCES game_types(id),
	FOREIGN KEY (author_user_id) REFERENCES users(id)
);