USE Home_05_DB;

CREATE TABLE digits(value INT);

INSERT INTO digits 
	VALUES (1),(2),(3),(4),(5);
	
SELECT * FROM digits;

SELECT EXP(SUM(LOG(value))) FROM digits;