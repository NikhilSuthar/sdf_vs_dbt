SELECT
    C.cust_id,
    C.first_name,
    C.last_name,
    COUNT(O.order_id) AS total_orders,
    SUM(O.amount) AS total_spent,
    MIN(O.order_date) AS first_order_date,
    MAX(O.order_date) AS last_order_date,
    current_timestamp as refreshed_at
FROM sdf.dim_orders O
JOIN sdf.dim_customers C ON O.cust_id = C.cust_id
GROUP BY C.cust_id, C.first_name, C.last_name