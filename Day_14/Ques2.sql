-- List all services from services_weekly and their corresponding staff (show services even if no staff assigned).
SELECT sw.week, sw.service,
COALESCE(s.staff_name,'NULL') AS staff_name
FROM services_weekly AS sw
LEFT JOIN staff AS s ON sw.service=s.service
GROUP BY sw.week, sw.service,s.staff_name
ORDER BY sw.week, sw.service,s.staff_name
