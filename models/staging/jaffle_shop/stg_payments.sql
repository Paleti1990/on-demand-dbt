select id as Payment_id,
Orderid as Order_id,
paymentmethod as payment_method,
status,
-- amount stored in cents,converting into dollars
amount/100 as amount,
created as crated_at from {{source('stripe','payment')}}