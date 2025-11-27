-- Create a CTE to calculate service statistics, then query from it.SELECT week, service, 
WITH service_stats AS (
SELECT sw.service,
SUM(sw.patients_admitted) AS total_admitted,
SUM(sw.patients_refused) AS total_refused,
ROUND(AVG(sw.patient_satisfaction),2) AS avg_satisfaction,
ROUND(AVG(sw.staff_morale),2) AS avg_staff_morale
FROM services_weekly sw
GROUP BY sw.service
)
SELECT * FROM service_stats;

