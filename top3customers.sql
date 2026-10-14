WITH ranked_customers AS (
    SELECT
        customer,
        city,
        sales,
        ROW_NUMBER() OVER (
            PARTITION BY city
            ORDER BY sales DESC
        ) AS row_num
    FROM customers
)

SELECT
    customer,
    city,
    sales,
    row_num
FROM ranked_customers
WHERE row_num <= 3;