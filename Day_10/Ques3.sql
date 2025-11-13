-- Create age groups for patients (0-18, 19-40, 41-65, 65+).
SELECT name, age,
CASE
WHEN age >= 0 AND age <= 18 THEN 'Child/Adolescent'
WHEN age >= 19 AND age <= 40 THEN 'Young Adult'
WHEN age >= 41 AND age <= 65 THEN 'Middle-Aged Adult'
ELSE 'Senior Citizen'
    END AS age_category
FROM patients;