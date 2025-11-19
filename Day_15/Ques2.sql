-- Combine services_weekly with staff and staff_schedule for comprehensive service analysis.
SELECT sw.service, sw.week, sw.patients_admitted,
COUNT(DISTINCT s.staff_id) AS total_staff,
SUM(CASE WHEN ss.present = 1 THEN 1 ELSE 0 END) AS staff_present
FROM services_weekly sw
LEFT JOIN staff s ON sw.service = s.service
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id AND sw.week = ss.week
GROUP BY sw.service, sw.week, sw.patients_admitted;


