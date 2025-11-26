-- Calculate running total of patients admitted by week for each service.
SELECT week, service, 
SUM(patients_admitted) OVER(PARTITION BY service ORDER BY week) AS running_total 
FROM services_weekly;

