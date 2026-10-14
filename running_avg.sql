select
sale_date,
revenue,
round(
avg(revenue) over(
order by sale_date
rows between 2 preceding and current row
),
2
)as running_average
from monthly_sales;