select
date,
revenue,
sum (revenue) over (
order by date
)as running_total
from revenue;