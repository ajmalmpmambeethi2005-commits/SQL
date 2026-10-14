select 
employee_name,
department,
sales,
dense_rank() over (
order by sales desc
)as dense_rank
from employee_sales
order by sales desc,employee_id;