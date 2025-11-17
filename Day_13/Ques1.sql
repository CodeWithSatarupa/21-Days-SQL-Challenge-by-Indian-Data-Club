-- Join patients and staff based on their common service field (show patient and staff who work in same service).
SELECT p.patient_id, p.name AS patient_name,
p.service, s.staff_name, s.role
FROM patients p
INNER JOIN staff s ON p.service = s.service
ORDER BY p.service, p.name;