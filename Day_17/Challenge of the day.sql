--  Create a report showing each service with: service name, total patients admitted, the difference between their total admissions and 
-- the average admissions across all services, and a rank indicator ('Above Average', 'Average', 'Below Average'). 
-- Order by total patients admitted descending.
SELECT svc_stats.service, svc_stats.total_patients,
(svc_stats.total_patients - avg_tbl.avg_patients) AS difference_from_average,
CASE
	WHEN svc_stats.total_patients > avg_tbl.avg_patients THEN 'Above Average'
	WHEN svc_stats.total_patients = avg_tbl.avg_patients THEN 'Average'
	ELSE 'Below Average'
    END AS rank_indicator
FROM (
SELECT service,
COUNT(patient_id) AS total_patients
FROM patients
GROUP BY service
) AS svc_stats
CROSS JOIN (
SELECT AVG(total_patients) AS avg_patients
FROM (
SELECT COUNT(patient_id) AS total_patients
FROM patients
GROUP BY service
) AS AVG_calc
) AS avg_tbl
ORDER BY svc_stats.total_patients DESC;