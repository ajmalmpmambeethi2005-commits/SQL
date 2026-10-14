select
sale_date,
revenue,
lead(revenue) over (
order by revenue desc
)as next_revenue
from monthly_sales;