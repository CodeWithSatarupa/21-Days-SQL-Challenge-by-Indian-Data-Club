-- Calculate the length of stay for each patient (departure_date - arrival_date).
SELECT departure_date, arrival_date, DATEDIFF(departure_date, arrival_date) AS length_of_stay
FROM patients;