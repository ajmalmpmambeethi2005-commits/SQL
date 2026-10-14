WITH sales_analysis AS (
    SELECT
        sale_date,
        revenue,

        LAG(revenue) OVER (
            ORDER BY sale_date
        ) AS previous_revenue,

        LEAD(revenue) OVER (
            ORDER BY sale_date
        ) AS next_revenue,

        AVG(revenue) OVER (
            ORDER BY sale_date
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ) AS moving_average,

        SUM(revenue) OVER (
            ORDER BY sale_date
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS running_total

    FROM monthly_sales
)

SELECT
    sale_date,
    revenue,
    previous_revenue,
    next_revenue,
    ROUND(moving_average, 2) AS moving_average,
    running_total,

    revenue - previous_revenue AS mom_change,

    ROUND(
        (revenue - previous_revenue) * 100.0
        / NULLIF(previous_revenue, 0),
        2
    ) AS mom_percentage

FROM sales_analysis
ORDER BY sale_date;
