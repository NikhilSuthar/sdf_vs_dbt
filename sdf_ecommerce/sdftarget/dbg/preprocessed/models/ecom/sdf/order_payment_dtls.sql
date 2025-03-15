
SELECT
    O.order_id,
    O.order_date,
    P.product_id,
    P.name as product_name,
    C.cust_id,
    CONCAT(C.first_name, ' ', C.last_name) as cust_name,
    coalesce(C.email, C.phone_number) as contact_dtls
FROM sdf.dim_orders O
LEFT JOIN sdf.dim_customers C ON O.cust_id = C.cust_id
LEFT JOIN sdf.dim_products P ON O.product_id = P.product_id
