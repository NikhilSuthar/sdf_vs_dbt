
SELECT
    P.product_id,
    P.name as product_name,
    P.category,
    AVG(O.rating) as rating,
    current_timestamp as refreshed_at
FROM {{ ref('dim_orders')}} O 
LEFT JOIN {{ ref('dim_products')}} P ON O.product_id = P.product_id
LEFT JOIN  {{ ref('dim_customers')}} C on O.cust_id = C.cust_id 
GROUP BY P.product_id, P.name, P.category