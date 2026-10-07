with  ajmal_customers as(
select 
email,
name,
row_number() over (
partition by email
order by id
)as ajmal
from customers
)
select 
email,
name,
ajmal
from ajmal_customers
where ajmal=1;