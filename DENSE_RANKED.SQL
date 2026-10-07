SELECT
    name,
    sales,
    DENSE_RANK() OVER (
        ORDER BY sales DESC
    ) AS rank
FROM customers;
