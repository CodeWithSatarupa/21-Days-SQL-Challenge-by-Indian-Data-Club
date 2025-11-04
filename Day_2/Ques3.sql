-- List all weeks where more than 100 patients requested admission in any service.
SELECT DISTINCT week
FROM services_weekly
WHERE patients_request > 100;