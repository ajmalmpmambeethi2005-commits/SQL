WITH product_totals AS (
    SELECT
        product,
        SUM(sale) AS total_sales
    FROM product_sales
    GROUP BY product
)

SELECT
    product,
    total_sales,
    RANK() OVER (
        ORDER BY total_sales DESC
    ) AS rank
FROM product_totals;