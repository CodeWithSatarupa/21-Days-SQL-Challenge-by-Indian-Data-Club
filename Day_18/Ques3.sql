-- List all unique names from both patients and staff tables.
SELECT DISTINCT name FROM patients
UNION
SELECT DISTINCT staff_name FROM staff;