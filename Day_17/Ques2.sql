-- Create a derived table of service statistics and query from it.
SELECT stats.service, stats.total_patients, stats.avg_satisfaction, stats.avg_age
FROM (
SELECT service,
COUNT(patient_id) AS total_patients,
ROUND(AVG(satisfaction), 2) AS avg_satisfaction,
ROUND(AVG(age), 2) AS avg_age
FROM patients
GROUP BY service
)
AS stats;