-- Find all weeks in services_weekly where no special event occurred.
-- Find all weeks in services_weekly where no special event occurred.
SELECT service,week,
'No Event' AS event_status 
FROM services_weekly
WHERE event IS NULL;