

use ECOM.SDF;
create or replace table ECOM.SDF.CUST_ORDER_SUMMARY as (SELECT
    C.cust_id,
    C.first_name,
    C.last_name,
    COUNT(O.order_id) AS total_orders,
    SUM(O.amount) AS total_spent,
    MIN(O.order_date) AS first_order_date,
    MAX(O.order_date) AS last_order_date,
    current_timestamp as refreshed_at
FROM ECOM.SDF.DIM_ORDERS O
JOIN ECOM.SDF.DIM_CUSTOMERS C ON O.cust_id = C.cust_id
GROUP BY C.cust_id, C.first_name, C.last_name);

