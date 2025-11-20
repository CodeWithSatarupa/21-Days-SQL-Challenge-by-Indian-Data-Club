-- **Phase 3: Sales Performance**

-- Total quantity of pizzas sold (`SUM`).
SELECT SUM(quantity) AS total_quantity_of_pizzas_sold
FROM order_details;

-- Average pizza price (`AVG`).
SELECT AVG(price) AS average_pizza_price
FROM pizzas;


-- Total order value per order (`JOIN`, `SUM`, `GROUP BY`).
SELECT o.order_id,
SUM(o.quantity * p.price) AS total_order_value
FROM order_details o
JOIN pizzas p ON o.pizza_id = p.pizza_id
GROUP BY o.order_id
ORDER BY o.order_id; 

-- Total quantity sold per pizza category (`JOIN`, `GROUP BY`).
/*SELECT pt.category,
SUM(od.quantity) AS total_quantity_sold
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category*/

-- Categories with more than 5,000 pizzas sold (`HAVING`).
SELECT pt.category,
SUM(od.quantity) AS total_quantity_sold
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
HAVING SUM(od.quantity) > 5000;

-- Pizzas never ordered (`LEFT/RIGHT JOIN`).
SELECT p.pizza_id, p.pizza_type_id, p.size, p.price
FROM pizzas p
LEFT JOIN order_details od ON p.pizza_id = od.pizza_id
WHERE od.pizza_id IS NULL;

-- Price differences between different sizes of the same pizza (`SELF JOIN`).
SELECT
p1.pizza_type_id,
p1.size AS size_1,
p1.price AS price_1,
p2.size AS size_2,
p2.price AS price_2,
ABS(p1.price - p2.price) AS price_difference
FROM pizzas p1
JOIN pizzas p2 ON p1.pizza_type_id = p2.pizza_type_id AND p1.price < p2.price;   
