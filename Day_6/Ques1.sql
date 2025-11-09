-- Count the number of patients by each service.
SELECT service, COUNT(*) AS number_of_patients
FROM patients
GROUP BY service