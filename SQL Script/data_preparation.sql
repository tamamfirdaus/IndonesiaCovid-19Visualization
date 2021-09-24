-- Table 1: Total Cases, Recovies, and Deaths of each province
SELECT * 
FROM province_cases;

DROP TABLE IF EXISTS table_1;

CREATE TABLE table_1 AS
SELECT 
	`Provinsi Asal` AS Province,  
	CAST(REPLACE(Kasus, ',','') AS DECIMAL) AS `Total Cases`, 
	CAST(REPLACE(Sembuh, ',','') AS DECIMAL) AS `Total Recoveries`,
	CAST(REPLACE(Kematian, ',','') AS DECIMAL) AS `Total Deaths`
FROM province_cases;

SELECT *
FROM table_1;


-- Table 2: Recovery Index and Case Fatality Rate
DROP TABLE IF EXISTS table_2;

CREATE TABLE table_2 AS
SELECT Province, 
		`Total Recoveries`/`Total Cases` AS `Recovery Index`,  
		`Total Deaths`/ `Total Cases` AS `Case Fatality Rate`
FROM table_1; 

SELECT * 
FROM table_2;


-- Table 3: Total Cases, Recovies, and Deaths in Indonesia
DROP TABLE IF EXISTS table_3;

CREATE TABLE table_3 AS
SELECT Cases, Recoveries, Deaths, 
		Recoveries/Cases AS `Recovery Index`,  
		Deaths/Cases AS `Case Fatality Rate`
FROM (
	SELECT 
		SUM(`Total Cases`) AS Cases,
		SUM(`Total Recoveries`) AS Recoveries,
		SUM(`Total Deaths`) AS Deaths
	FROM table_1
) data;

SELECT *
FROM table_3;


-- Table 4: Cases 
SELECT * 
FROM timeline_cases;

ALTER TABLE timeline_cases
DROP COLUMN  `?`;

ALTER TABLE timeline_cases
RENAME COLUMN `Total Kasus` TO Date;

UPDATE timeline_cases SET Date = STR_TO_DATE(Date, '%d/%m/%y');

ALTER TABLE timeline_cases
MODIFY COLUMN Date DATE;
