-- Combine patient names and staff names into a single list.
SELECT DISTINCT name FROM patients
UNION
SELECT DISTINCT staff_name FROM staff;