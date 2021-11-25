select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- convert to dollars from cents
    amount / 100 as amount,
    created
from stripe.payment