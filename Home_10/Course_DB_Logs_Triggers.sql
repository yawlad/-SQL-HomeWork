USE Course_Work_MusicApp;

Delimiter //
DROP PROCEDURE IF EXISTS add_log//
CREATE PROCEDURE add_log (table_n varchar(50), data_from_trigger varchar(255)) 
BEGIN 
	INSERT INTO logs (table_name, description) VALUES
		(table_n, data_from_trigger);
END//
Delimiter ;

-------------------------------Users-------------------------------

Delimiter //
DROP TRIGGER IF EXISTS create_log_u_i//
CREATE TRIGGER create_log_u_i 
AFTER INSERT
ON users 
FOR EACH ROW 
BEGIN 
	CALL add_log('users', concat('Inserted with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_u_u//
CREATE TRIGGER create_log_u_u 
AFTER UPDATE 
ON users 
FOR EACH ROW 
BEGIN 
	CALL add_log('users', concat('Updated with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_u_d//
CREATE TRIGGER create_log_u_d 
AFTER DELETE 
ON users 
FOR EACH ROW 
BEGIN 
	CALL add_log('users', concat('Deleted with id ', OLD.id));
END//
Delimiter ;

-------------------------------Music-------------------------------

Delimiter //
DROP TRIGGER IF EXISTS create_log_m_i//
CREATE TRIGGER create_log_m_i 
AFTER INSERT
ON music 
FOR EACH ROW 
BEGIN 
	CALL add_log('music', concat('Inserted with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_m_u//
CREATE TRIGGER create_log_m_u 
AFTER UPDATE 
ON music 
FOR EACH ROW 
BEGIN 
	CALL add_log('music', concat('Updated with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_m_d//
CREATE TRIGGER create_log_m_d 
AFTER DELETE
ON music 
FOR EACH ROW 
BEGIN 
	CALL add_log('music', concat('Deleted with id ', OLD.id));
END//
Delimiter ;

-------------------------------Albumns-------------------------------

Delimiter //
DROP TRIGGER IF EXISTS create_log_a_i//
CREATE TRIGGER create_log_a_i 
AFTER INSERT
ON albumns 
FOR EACH ROW 
BEGIN 
	CALL add_log('albumns', concat('Inserted with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_a_u//
CREATE TRIGGER create_log_a_u 
AFTER UPDATE 
ON albumns 
FOR EACH ROW 
BEGIN 
	CALL add_log('albumns', concat('Updated with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_a_d//
CREATE TRIGGER create_log_a_d 
AFTER DELETE
ON albumns 
FOR EACH ROW 
BEGIN 
	CALL add_log('albumns', concat('Deleted with id ', OLD.id));
END//
Delimiter ;

-------------------------------Music_Albumns-------------------------------

Delimiter //
DROP TRIGGER IF EXISTS create_log_ma_i//
CREATE TRIGGER create_log_ma_i 
AFTER INSERT
ON music_albumns 
FOR EACH ROW 
BEGIN 
	CALL add_log('music_albumns', concat('Inserted with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_ma_u//
CREATE TRIGGER create_log_ma_u 
AFTER UPDATE 
ON music_albumns 
FOR EACH ROW 
BEGIN 
	CALL add_log('music_albumns', concat('Updated with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_ma_d//
CREATE TRIGGER create_log_ma_d 
AFTER DELETE
ON music_albumns 
FOR EACH ROW 
BEGIN 
	CALL add_log('music_albumns', concat('Deleted with id ', OLD.id));
END//
Delimiter ;

-------------------------------Images-------------------------------

Delimiter //
DROP TRIGGER IF EXISTS create_log_i_i//
CREATE TRIGGER create_log_i_i 
AFTER INSERT
ON images 
FOR EACH ROW 
BEGIN 
	CALL add_log('images', concat('Inserted with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_i_u//
CREATE TRIGGER create_log_i_u 
AFTER UPDATE 
ON images 
FOR EACH ROW 
BEGIN 
	CALL add_log('images', concat('Updated with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_i_d//
CREATE TRIGGER create_log_i_d 
AFTER DELETE
ON images 
FOR EACH ROW 
BEGIN 
	CALL add_log('images', concat('Deleted with id ', OLD.id));
END//
Delimiter ;

-------------------------------Counties-------------------------------

Delimiter //
DROP TRIGGER IF EXISTS create_log_co_i//
CREATE TRIGGER create_log_co_i 
AFTER INSERT
ON countries 
FOR EACH ROW 
BEGIN 
	CALL add_log('countries', concat('Inserted with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_co_u//
CREATE TRIGGER create_log_co_u 
AFTER UPDATE 
ON countries 
FOR EACH ROW 
BEGIN 
	CALL add_log('countries', concat('Updated with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_co_d//
CREATE TRIGGER create_log_co_d 
AFTER DELETE
ON countries 
FOR EACH ROW 
BEGIN 
	CALL add_log('countries', concat('Deleted with id ', OLD.id));
END//
Delimiter ;

-------------------------------Cities-------------------------------

Delimiter //
DROP TRIGGER IF EXISTS create_log_ci_i//
CREATE TRIGGER create_log_ci_i 
AFTER INSERT
ON cities 
FOR EACH ROW 
BEGIN 
	CALL add_log('cities', concat('Inserted with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_ci_u//
CREATE TRIGGER create_log_ci_u 
AFTER UPDATE 
ON cities 
FOR EACH ROW 
BEGIN 
	CALL add_log('cities', concat('Updated with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_ci_d//
CREATE TRIGGER create_log_ci_d 
AFTER DELETE
ON cities 
FOR EACH ROW 
BEGIN 
	CALL add_log('cities', concat('Deleted with id ', OLD.id));
END//
Delimiter ;

-------------------------------Music_Types-------------------------------

Delimiter //
DROP TRIGGER IF EXISTS create_log_mt_i//
CREATE TRIGGER create_log_mt_i 
AFTER INSERT
ON music_types 
FOR EACH ROW 
BEGIN 
	CALL add_log('music_types', concat('Inserted with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_mt_u//
CREATE TRIGGER create_log_mt_u 
AFTER UPDATE 
ON music_types 
FOR EACH ROW 
BEGIN 
	CALL add_log('music_types', concat('Updated with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_mt_d//
CREATE TRIGGER create_log_mt_d 
AFTER DELETE
ON music_types 
FOR EACH ROW 
BEGIN 
	CALL add_log('music_types', concat('Deleted with id ', OLD.id));
END//
Delimiter ;

-------------------------------Authors-------------------------------

Delimiter //
DROP TRIGGER IF EXISTS create_log_au_i//
CREATE TRIGGER create_log_au_i 
AFTER INSERT
ON authors 
FOR EACH ROW 
BEGIN 
	CALL add_log('authors', concat('Inserted with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_au_u//
CREATE TRIGGER create_log_au_u 
AFTER UPDATE 
ON authors 
FOR EACH ROW 
BEGIN 
	CALL add_log('authors', concat('Updated with id ', NEW.id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_au_d//
CREATE TRIGGER create_log_au_d 
AFTER DELETE
ON authors 
FOR EACH ROW 
BEGIN 
	CALL add_log('authors', concat('Deleted with id ', OLD.id));
END//
Delimiter ;

-------------------------------Likes-------------------------------

Delimiter //
DROP TRIGGER IF EXISTS create_log_li_i//
CREATE TRIGGER create_log_li_i 
AFTER INSERT
ON likes 
FOR EACH ROW 
BEGIN 
	CALL add_log('likes', concat('Inserted with user id ', NEW.user_id, ' and music id ', NEW.music_id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_li_u//
CREATE TRIGGER create_log_li_u 
AFTER UPDATE 
ON likes 
FOR EACH ROW 
BEGIN 
	CALL add_log('likes', concat('Updated with user id ', NEW.user_id, ' and music id ', NEW.music_id));
END//
Delimiter ;

Delimiter //
DROP TRIGGER IF EXISTS create_log_li_d//
CREATE TRIGGER create_log_li_d 
AFTER DELETE
ON likes 
FOR EACH ROW 
BEGIN 
	CALL add_log('likes', concat('Deleted with user id ', OLD.user_id, ' and music id ', OLD.music_id));
END//
Delimiter ;