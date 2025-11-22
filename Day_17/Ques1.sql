-- Show each patient with their service's average satisfaction as an additional column.
SELECT p.patient_id,p.name,p.service,p.satisfaction,(
SELECT ROUND(AVG(p2.satisfaction), 2)
FROM patients p2
WHERE p2.service = p.service
) 
AS service_avg_satisfaction
FROM patients p;