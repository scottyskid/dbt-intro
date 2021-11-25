select 
    o.order_id,
    o.customer_id,
    case when p.status = 'success' then amount else 0 end amount
    
from {{ ref('stg_orders') }} o
inner join {{ ref('stg_payments')}} p using (order_id)