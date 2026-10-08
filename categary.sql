select 
date,
category,
revenue,
sum(revenue) over (
partition by category
order by date
)as cumilative_revenue
from revenue;