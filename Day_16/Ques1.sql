-- Find patients who are in services with above-average staff count.
SELECT p.patient_id, p.name, p.service
FROM patients p
JOIN staff s ON p.service = s.service
GROUP BY p.patient_id, p.name, p.service
HAVING COUNT(s.staff_id) > (
    SELECT AVG(staff_count) 
    FROM (
        SELECT COUNT(staff_id) AS staff_count
        FROM staff
        GROUP BY service
    ) AS service_staff_counts
);
