-- Rank patients by satisfaction score within each service.
SELECT name, 
RANK() OVER (PARTITION BY service ORDER BY satisfaction) AS satisfaction_rank
FROM patients;
