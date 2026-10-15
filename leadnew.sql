-- select
-- name,
-- department,
-- salary,
-- lead(salary) over(
-- order by salary 

-- )as next_salary
-- from employes;

select
name,
department,
salary,
lag(salary) over (
order by salary

)as previus_salary
from employes;