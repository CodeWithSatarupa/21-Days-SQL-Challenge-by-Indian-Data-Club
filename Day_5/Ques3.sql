-- Find the minimum and maximum age of patients.
SELECT  MIN(age) AS youngest,
		MAX(age) AS oldest
FROM patients;