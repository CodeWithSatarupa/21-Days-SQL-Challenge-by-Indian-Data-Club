-- Create a comprehensive hospital performance dashboard using CTEs. Calculate: 1) Service-level metrics (total admissions, refusals, avg satisfaction), 2) Staff metrics per service (total staff, avg weeks present), 3) Patient demographics per service (avg age, count). Then combine all three CTEs to create a final report showing service name, all calculated metrics, and an overall performance score (weighted average of admission rate and satisfaction). Order by performance score descending.
WITH service_metrics AS (
SELECT service,
SUM(patients_admitted) AS total_admissions,
SUM(patients_refused) AS total_refusals,
AVG(patient_satisfaction) AS avg_satisfaction
FROM services_weekly
GROUP BY service
),
staff_metrics AS (
SELECT service,
COUNT(staff_id) AS total_staff
FROM staff
GROUP BY service
),
patient_metrics AS (
SELECT service,
COUNT(patient_id) AS patient_count,
AVG(age) AS avg_age
FROM patients
GROUP BY service
)
SELECT s.service,s.total_admissions,s.total_refusals,s.avg_satisfaction,st.total_staff,p.patient_count,p.avg_age,
(
(s.total_admissions * 0.6) + (s.avg_satisfaction * 0.4)
) AS performance_score
FROM service_metrics s
LEFT JOIN staff_metrics st ON s.service = st.service
LEFT JOIN patient_metrics p ON s.service = p.service 
ORDER BY performance_score DESC;