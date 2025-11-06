-- Get the 10 most recent patient admissions based on arrival_date.
SELECT patient_id, name, arrival_date 
FROM patients
ORDER BY arrival_date DESC
LIMIT 10