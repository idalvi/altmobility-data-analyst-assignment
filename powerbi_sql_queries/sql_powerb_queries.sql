#first
SELECT customer_id, DATE_FORMAT(order_date, '%Y-%m-01') AS order_month
FROM customer_orders;

#second
WITH first_orders AS (
    SELECT 
        customer_id, 
        MIN(DATE_FORMAT(order_date, '%Y-%m-01')) AS cohort_month
    FROM customer_orders
    GROUP BY customer_id
)
SELECT * FROM first_orders;

#third
WITH first_orders AS (
    SELECT 
        customer_id, 
        MIN(DATE_FORMAT(order_date, '%Y-%m-01')) AS cohort_month
    FROM customer_orders
    GROUP BY customer_id
)

SELECT 
    o.customer_id,
    DATE_FORMAT(o.order_date, '%Y-%m-01') AS order_month,
    f.cohort_month
FROM customer_orders o
JOIN first_orders f ON o.customer_id = f.customer_id;