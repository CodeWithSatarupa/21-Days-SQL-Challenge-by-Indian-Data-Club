-- For each service, rank the weeks by patient satisfaction score (highest first). 
-- Show service, week, patient_satisfaction, patients_admitted, and the rank. Include only the top 3 weeks per service.
SELECT * FROM (
SELECT service, week, patient_satisfaction, patients_admitted,
RANK() OVER(partition by service ORDER BY patient_satisfaction DESC) as patient_satisfaction_ranking
FROM services_weekly
) AS temp
WHERE patient_satisfaction_ranking <= 3;