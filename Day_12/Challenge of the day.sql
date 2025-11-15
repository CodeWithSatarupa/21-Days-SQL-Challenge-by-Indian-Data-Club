-- Analyze the event impact by comparing weeks with events vs weeks without events. 
-- Show: event status ('With Event' or 'No Event'), count of weeks, average patient satisfaction, and average staff morale. 
-- Order by average patient satisfaction descending.
SELECT
COALESCE(event, 'No Event') AS event_status,
COUNT(*) AS count_of_weeks,
AVG(patient_satisfaction) AS avg_patient_satisfaction,
AVG(staff_morale) AS avg_staff_morale
FROM services_weekly
GROUP BY COALESCE(event, 'No Event')
ORDER BY avg_patient_satisfaction DESC;