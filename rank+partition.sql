select 
name,
department,
salary,
rank ()over(
partition by department
order by salary
)as rank_salary
from employess;