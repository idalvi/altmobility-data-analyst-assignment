# Task 3: Payment Status Analysis
#Investigated trends in successful and failed payments.
SELECT 
    payment_status,
    COUNT(payment_id) AS total_payments,
    SUM(payment_amount) AS total_amount
FROM payments
GROUP BY payment_status;

/*Key Insights:
Shows how many payments are completed vs failed.

High failure rate might suggest issues with payment gateways or user drop-offs.

Useful to evaluate financial pipeline health.*/