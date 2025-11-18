-- Question: Create a staff utilisation report showing all staff members (staff_id, staff_name, role, service) and
--  the count of weeks they were present (from staff_schedule). 
-- Include staff members even if they have no schedule records. Order by weeks present descending.
SELECT s.staff_id,s.staff_name,s.role,s.service,
 COUNT(ss.present) AS count_present
FROM staff AS s
LEFT JOIN staff_schedule AS ss ON s.staff_id = ss.staff_id
GROUP BY s.staff_id, s.staff_name, s.role, s.service
ORDER BY count_present DESC;