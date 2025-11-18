-- Show all staff members and their schedule information (including those with no schedule entries).
SELECT s.staff_id, s.staff_name, s.role, s.service,
COUNT(ss.week) AS weeks_scheduled,
SUM(COALESCE(ss.present, 0)) AS weeks_present
FROM staff AS s
LEFT JOIN staff_schedule AS ss ON s.staff_id = ss.staff_id
GROUP BY s.staff_id, s.staff_name, s.role, s.service;