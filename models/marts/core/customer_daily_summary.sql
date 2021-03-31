select 
customer_id , order_date, count(*) daily_summary
from {{ref('stg_orders')}}
group by 1,2