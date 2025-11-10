-- Show services where average patient satisfaction is below 75.
SELECT service, AVG(patient_satisfaction) AS average_satisfaction_score
FROM services_weekly
GROUP BY service
HAVING AVG(patient_satisfaction) < 75
