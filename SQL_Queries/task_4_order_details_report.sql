#Task 4: Order Details Report
#Combine order and payment details into one unified report.
SELECT 
    co.order_id,
    co.customer_id,
    co.order_date,
    co.order_amount,
    co.order_status,
    p.payment_id,
    p.payment_date,
    p.payment_method,
    p.payment_status,
    p.payment_amount
FROM customer_orders co
LEFT JOIN payments p ON co.order_id = p.order_id;

/*Key Insights:
Combines shipping/order and payment details.

Allows identifying which orders have no corresponding payment or failed payments.

Helps track average time between order and payment.*/
