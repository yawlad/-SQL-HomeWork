DROP DATABASE IF EXISTS Course_Work_MusicApp;
CREATE DATABASE Course_Work_MusicApp;

USE Course_Work_MusicApp;

DROP TABLE IF EXISTS countries;
CREATE TABLE  countries(
	id SERIAL,
	name varchar(255) UNIQUE
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
	id SERIAL,
	country_id BIGINT UNSIGNED NOT NULL,
	name varchar(255),
	
	FOREIGN KEY (country_id) REFERENCES countries(id) 
);

DROP TABLE IF EXISTS images;
CREATE TABLE images(
	id SERIAL,
	source varchar(255) UNIQUE
);

DROP TABLE IF EXISTS music_types;
CREATE TABLE music_types(
	id SERIAL,
	`type` varchar(255) UNIQUE
);

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id SERIAL,
	f_name varchar(255),
	l_name varchar(255),
	city_id BIGINT UNSIGNED NOT NULL,
	photo_id BIGINT UNSIGNED NOT NULL,
	email varchar(255) UNIQUE,
	phone_number varchar(255) UNIQUE,
	login varchar(255) UNIQUE,
	password_hash varchar(255),
	
	FOREIGN KEY (city_id) REFERENCES cities(id), 
	FOREIGN KEY (photo_id) REFERENCES images(id) 
);

DROP TABLE IF EXISTS authors;
CREATE TABLE authors(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	pseudonym varchar(255) UNIQUE,
	
	FOREIGN KEY (user_id) REFERENCES users(id) 
);

DROP TABLE IF EXISTS music;
CREATE TABLE music(
	id SERIAL,
	author_id BIGINT UNSIGNED NOT NULL,
	type_id BIGINT UNSIGNED NOT NULL,
	photo_id BIGINT UNSIGNED NOT NULL,
	name varchar(255) UNIQUE,
	source varchar(255) UNIQUE,
	
	FOREIGN KEY (author_id) REFERENCES authors(id),
	FOREIGN KEY (type_id) REFERENCES music_types(id),
	FOREIGN KEY (photo_id) REFERENCES images(id) 
);

DROP TABLE IF EXISTS albumns;
CREATE TABLE albumns(
	id SERIAL,
	photo_id BIGINT UNSIGNED NOT NULL,
	name varchar(255),
	
	FOREIGN KEY (photo_id) REFERENCES images(id) 
);

DROP TABLE IF EXISTS music_albumns;
CREATE TABLE music_albumns(
	id SERIAL,
	author_id BIGINT UNSIGNED NOT NULL,
	albumn_id BIGINT UNSIGNED NOT NULL,
	music_id BIGINT UNSIGNED NOT NULL,
	
	PRIMARY KEY (albumn_id, music_id),
	FOREIGN KEY (author_id) REFERENCES authors(id),
	FOREIGN KEY (albumn_id) REFERENCES albumns(id),
	FOREIGN KEY (music_id) REFERENCES music(id)
	
);

DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	user_id BIGINT UNSIGNED NOT NULL,
	music_id BIGINT UNSIGNED NOT NULL,
	
	PRIMARY KEY (user_id, music_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (music_id) REFERENCES music(id)
);

DROP TABLE IF EXISTS logs;
CREATE TABLE logs(
	id SERIAL,
	`time` DATETIME DEFAULT NOW(),
	table_name varchar(255),
	description varchar(255)
) ENGINE=ARCHIVE;

