select 
employee_name,
department,
sales,

ROW_NUMBER() OVER(
ORDER BY sales DESC,employee_id
)AS row_num
FROM employee_sales
ORDER BY sales DESC,employee_id;