-- Find all patients who arrived in a specific month.
SELECT arrival_date
FROM patients
WHERE MONTH(arrival_date) = 11;