select
employee_name,
department,
sales,
row_number() over(
partition by sales
order by employee_name desc,employee_id
)as row_num
from employee_sales;