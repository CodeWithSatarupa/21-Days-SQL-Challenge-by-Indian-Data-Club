-- Join patients, staff, and staff_schedule to show patient service and staff availability.
SELECT p.name AS patient_name, p.service AS required_service, s.staff_name, s.staff_id, ss.week, ss.present AS staff_availability
FROM patients p
LEFT JOIN staff s ON p.service = s.service
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id;
