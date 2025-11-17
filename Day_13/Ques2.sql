-- Join services_weekly with staff to show weekly service data with staff information.
SELECT w.week, w.service AS service,
s.staff_id,s.staff_name, s.role
FROM services_weekly w
INNER JOIN staff s ON w.service = s.service
ORDER BY s.staff_id,s.staff_name,s.role;