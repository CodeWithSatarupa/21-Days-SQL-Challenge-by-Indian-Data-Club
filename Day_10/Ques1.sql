-- Categorise patients as 'High', 'Medium', or 'Low' satisfaction based on their scores.
SELECT name, satisfaction,
CASE
WHEN satisfaction >= 80 THEN 'High'
WHEN satisfaction >= 50 THEN 'Medium'
ELSE 'Low'
    END AS satisfaction_category
FROM patients;