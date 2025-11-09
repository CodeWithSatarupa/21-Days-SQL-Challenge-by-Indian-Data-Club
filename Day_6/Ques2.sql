-- Calculate the average age of patients grouped by service.
SELECT service, 
COUNT(*) AS number_of_patients,
AVG(age) AS avg_age
FROM patients
GROUP BY service