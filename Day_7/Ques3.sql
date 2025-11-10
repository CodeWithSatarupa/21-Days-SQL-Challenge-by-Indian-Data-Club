-- List weeks where total staff presence across all services was less than 50.
SELECT week, SUM(present) AS total_staff_presence
FROM staff_schedule
GROUP BY week
HAVING SUM(present) < 50