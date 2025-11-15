-- Count how many records have null or empty event values.
SELECT COUNT(*) AS null_events
FROM services_weekly
WHERE event IS NULL;