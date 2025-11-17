-- Create a report showing patient information along with staff assigned to their service.
SELECT p.patient_id, p.name AS patient_name,
p.service, s.staff_name, s.role
FROM patients p
INNER JOIN staff s ON p.service = s.service
ORDER BY p.service, p.name;