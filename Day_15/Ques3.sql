-- Create a multi-table report showing patient admissions with staff information.
SELECT p.patient_id,p.name AS patient_name,p.service,p.arrival_date,
COUNT(DISTINCT s.staff_id) AS total_staff_assigned,
COALESCE(AVG(ss.present), 0) AS avg_staff_presence
FROM patients p
JOIN staff s ON p.service = s.service
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id
GROUP BY p.patient_id,p.name,p.service,p.arrival_date;
