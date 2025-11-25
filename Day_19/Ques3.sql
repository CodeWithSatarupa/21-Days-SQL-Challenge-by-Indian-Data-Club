-- Rank services by total patients admitted.
SELECT service, 
SUM(patients_admitted) AS total_patients_admitted,
RANK() OVER(ORDER BY SUM(patients_admitted) DESC) as ranks
FROM services_weekly 
GROUP BY service;