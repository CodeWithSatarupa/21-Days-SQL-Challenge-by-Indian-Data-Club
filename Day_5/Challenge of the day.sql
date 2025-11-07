-- Calculate the total number of patients admitted, total patients refused, and the average patient satisfaction across all services and weeks. 
-- Round the average satisfaction to 2 decimal places.
SELECT COUNT(patients_admitted) AS total_patients_admitted,
       COUNT(patients_refused) AS total_patients_refused,
       ROUND (AVG(patient_satisfaction),2) AS avg_satisfaction FROM services_weekly;
       