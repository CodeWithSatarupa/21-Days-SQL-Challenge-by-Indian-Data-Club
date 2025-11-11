-- Concatenate staff_id and staff_name with a hyphen separator.
 SELECT CONCAT(staff_name, ' - ', staff_id) AS staff_details
 FROM staff