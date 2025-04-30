#Task 2: Customer Analysis
#Explore customer behavior such as repeat orders, segmentation, and trends.
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders,
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order
FROM customer_orders
GROUP BY customer_id
ORDER BY total_orders DESC;

/*Key Insights:
Helps identify repeat customers (those with total_orders > 1).

First and last order dates help analyze customer retention.

High repeat orders may indicate customer satisfaction and loyalty.

Can be extended into RFM (Recency, Frequency, Monetary) analysis for segmentation.*/