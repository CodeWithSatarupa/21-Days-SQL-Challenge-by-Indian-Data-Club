-- Build a CTE for staff utilization and join it with patient data.
WITH staff_utilization AS (
SELECT service,
COUNT(staff_id) AS total_staff
FROM staff
GROUP BY service
)
SELECT su.service, su.total_staff,p.patient_id, p.name
FROM staff_utilization su
JOIN patients p ON su.service = p.service;
