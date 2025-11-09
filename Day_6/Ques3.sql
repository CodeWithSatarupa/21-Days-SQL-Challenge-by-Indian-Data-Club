-- Find the total number of staff members per role.
SELECT service, 
COUNT(*) AS number_of_staffs
FROM staff
GROUP BY service