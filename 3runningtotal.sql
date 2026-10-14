select 
sale_date,
revenue,
round(
avg(revenue) over(
order by sale_date
rows between 3 preceding and current row
),
3
)as running_avg
from monthly_sales;
