# 📘 Day 14 – LEFT JOIN & RIGHT JOIN 🤝
# 🚀 Objective 
Learn how to use LEFT JOIN and RIGHT JOIN to combine data across multiple tables, understand how to include unmatched records, and create reports that feature all entities from a primary table.

# 📚 Topics Covered
- LEFT JOIN – includes all rows from the left table and matched rows from the right table.
- RIGHT JOIN – includes all rows from the right table and matched rows from the left table.
- Including unmatched records (where columns from one side are NULL).
- Using Joins with COUNT() and GROUP BY for utilisation analysis.

# 🧠 Practice Questions
1. Show all staff members and their schedule information (including those with no schedule entries).
2. List all services from services_weekly and their corresponding staff (show services even if no staff assigned).
3. Display all patients and their service's weekly statistics (if available).

# 🏆 Daily Challenge
Create a staff utilisation report showing all staff members (staff_id, staff_name, role, service) and the count of weeks they were present (from staff_schedule). Include staff members even if they have no schedule records. Order by weeks present descending.
