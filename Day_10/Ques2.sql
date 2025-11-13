-- Label staff roles as 'Medical' or 'Support' based on role type.
SELECT staff_name, role,
CASE
WHEN role = 'doctor' THEN 'Medical'
ELSE 'Support'
    END AS role_category
FROM staff;