-- Use multiple CTEs to break down a complex query into logical steps.
WITH service_totals AS (
SELECT service,
SUM(patients_admitted) AS total_admitted
FROM services_weekly
GROUP BY service
),
overall_avg AS (
SELECT 
AVG(total_admitted) AS avg_admitted
FROM service_totals
)
SELECT st.service, st.total_admitted,
st.total_admitted - oa.avg_admitted AS diff_from_avg,
CASE
WHEN st.total_admitted > oa.avg_admitted THEN 'Above Average'
WHEN st.total_admitted = oa.avg_admitted THEN 'Average'
ELSE 'Below Average'
END AS rank_indicator
FROM service_totals st
JOIN overall_avg oa
ORDER BY st.total_admitted DESC;
