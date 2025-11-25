-- Assign row numbers to staff ordered by their name.
SELECT staff_id, staff_name,
ROW_NUMBER() OVER(ORDER BY staff_name) AS s_no
FROM staff;