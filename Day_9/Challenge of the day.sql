-- Calculate the average length of stay (in days) for each service, showing only services where the average stay is more than 7 days. 
-- Also show the count of patients and order by average stay descending.
SELECT service,
COUNT(*) AS patient_count,
AVG(DATEDIFF(departure_date, arrival_date)) AS average_stay_days
FROM patients
GROUP BY service
HAVING average_stay_days > 7
ORDER BY average_stay_days DESC;