# 📘 Day 17 – Subqueries (SELECT & FROM Clause)
# 🚀 Objective
Understand how to use subqueries inside SELECT, FROM (derived tables), and inline views to perform analytical calculations and comparisons directly in SQL.

# 📚 Topics Covered
- Subqueries in the SELECT clause
- Subqueries in the FROM clause (derived tables / inline views)
- Computing group-level statistics
- Combining aggregates with CASE expressions
- Analytical reporting using nested logic

# 🧠 Practice Questions
1. Show each patient with their service's average satisfaction as an additional column.
2. Create a derived table of service statistics (total patients, avg satisfaction, staff count) and query from it.
3. Display staff with their service's total patient count as a calculated field using a subquery.

# 🏆 Daily Challenge
Create a comprehensive personnel and patient list showing: identifier (patient_id or staff_id), full name, type ('Patient' or 'Staff'), and associated service. Include only those in 'surgery' or 'emergency' services. Order by type, then service, then name.
