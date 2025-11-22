-- Display staff with their service's total patient count as a calculated field.
SELECT s.staff_id, s.staff_name, s.service,(
 SELECT COUNT(p.patient_id)
 FROM patients p
WHERE p.service = s.service
) 
AS total_patients_in_service
FROM staff s;