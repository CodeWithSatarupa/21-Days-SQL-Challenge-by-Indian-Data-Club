-- Find the moving average of patient satisfaction over 4-week periods.
SELECT week, 
ROUND(AVG(patient_satisfaction) OVER(ROWS BETWEEN 3 PRECEDING AND CURRENT ROW),2) as mov_avg 
FROM services_weekly;