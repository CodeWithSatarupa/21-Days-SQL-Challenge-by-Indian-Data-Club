-- Create a union of high satisfaction patients (>90) and low satisfaction patients (<50).
SELECT DISTINCT patient_satisfaction FROM services_weekly WHERE patient_satisfaction>90
UNION
SELECT DISTINCT patient_satisfaction FROM services_weekly WHERE patient_satisfaction<50