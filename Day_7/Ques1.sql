-- Find services that have admitted more than 500 patients in total.
SELECT service, SUM(patients_admitted) AS total_patients_admitted
FROM services_weekly
GROUP BY service
HAVING SUM(patients_admitted) > 500