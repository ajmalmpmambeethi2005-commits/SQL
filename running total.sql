select 
sale_date,
revenue,
sum(revenue) over(
order by sale_date
rows between unbounded preceding and current row
)as running_total
from monthly_sales;