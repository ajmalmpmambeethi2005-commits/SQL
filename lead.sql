select 
date,
revenue,
lead(revenue) over(
order by revenue
)as tota_revenue
from revenue;