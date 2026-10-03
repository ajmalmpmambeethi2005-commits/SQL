select 
cus.name,
cus.city,
orderss.order_id,
orderss.amount
from cus
inner join orderss
on cus.customer_id=orderss.customer_id
;
