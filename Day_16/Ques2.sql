-- List staff who work in services that had any week with patient satisfaction below 70.
SELECT DISTINCT s.staff_id, s.staff_name, s.service
FROM staff s
JOIN services_weekly w ON s.service=w.service
WHERE w.patient_satisfaction < 70; 