-- Display all patients and their service's weekly statistics (if available).
SELECT p.patient_id, p.name, p.service, sw.week,sw.month
FROM patients AS p 
LEFT JOIN services_weekly AS sw ON p.service=sw.service
ORDER BY p.patient_id,sw.week;