USE projects;

SELECT * FROM hr;

ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;

DESCRIBE hr;

SELECT birthdate FROM hr;

SET sql_safe_updates = 0;

UPDATE hr
SET birthdate = CASE
    WHEN birthdate LIKE '%/%/%' THEN STR_TO_DATE(birthdate, '%m/%d/%Y')
    WHEN birthdate LIKE '%-%-%' THEN STR_TO_DATE(birthdate, '%m-%d-%Y')
    WHEN birthdate LIKE '%/%' THEN STR_TO_DATE(birthdate, '%m/%d/%y') -- Handles 2-digit years
    WHEN birthdate LIKE '%-%' THEN STR_TO_DATE(birthdate, '%m-%d/%y') -- Handles 2-digit years
    ELSE NULL
END;

ALTER TABLE hr
MODIFY COLUMN birthdate DATE;

SELECT birthdate FROM hr;

UPDATE hr
SET hire_date = CASE
    WHEN hire_date LIKE '%/%/%' THEN STR_TO_DATE(hire_date, '%m/%d/%Y')
    WHEN hire_date LIKE '%-%-%' THEN STR_TO_DATE(hire_date, '%m-%d-%Y')
    WHEN hire_date LIKE '%/%' THEN STR_TO_DATE(hire_date, '%m/%d/%y') -- Handles 2-digit years
    WHEN hire_date LIKE '%-%' THEN STR_TO_DATE(hire_date, '%m-%d/%y') -- Handles 2-digit years
    ELSE NULL
END;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

SELECT hire_date FROM hr;

SELECT termdate FROM hr;

UPDATE hr
SET termdate = IF(termdate IS NOT NULL AND termdate != '', DATE(STR_TO_DATE(termdate, '%Y-%m-%d %H:%i:%s UTC')), '0000-00-00')
WHERE true;

SELECT termdate FROM hr;

SET sql_mode = 'ALLOW_INVALID_DATES';

ALTER TABLE hr
MODIFY COLUMN termdate DATE;

ALTER TABLE hr ADD COLUMN age INT;

UPDATE hr
SET age = timestampdiff(YEAR, birthdate, CURDATE());

SELECT birthdate, age FROM hr;

SELECT
  MIN(age) AS youngest,
  MAX(age) AS oldest
FROM hr;

SELECT count(*) FROM hr WHERE age < 18;