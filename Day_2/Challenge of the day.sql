-- Find all patients admitted to 'Surgery' service with a satisfaction score below 70, showing their patient_id, name, age, and satisfaction score.
SELECT DISTINCT patient_id,name,age,satisfaction
FROM patients
WHERE service='Surgery' AND satisfaction < 70;