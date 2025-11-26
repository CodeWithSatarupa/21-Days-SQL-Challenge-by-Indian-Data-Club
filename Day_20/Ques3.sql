-- Show cumulative patient refusals by week across all services.
SELECT week,
SUM(patients_refused) AS weekly_refusals,
SUM(SUM(patients_refused)) OVER (ORDER BY week) AS cumulative_refusals
FROM services_weekly
GROUP BY week
ORDER BY week;
