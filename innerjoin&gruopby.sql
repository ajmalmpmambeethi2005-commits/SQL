SELECT
    customers.name,
    SUM(orders.amount) AS total_spending
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.name
HAVING SUM(orders.amount) > 7000;