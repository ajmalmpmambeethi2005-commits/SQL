SELECT
    customers.name,
    orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.amount > (
    SELECT AVG(amount)
    FROM orders
);