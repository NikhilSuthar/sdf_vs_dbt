

use DB.SDF;
create or replace table DB.SDF.ORDER_PAYMENT_DTLS as (SELECT
    O.order_id,
    O.order_date,
    P.product_id,
    P.name as product_name,
    C.cust_id,
    CONCAT(C.first_name, ' ', C.last_name) as cust_name,
    coalesce(C.email, C.phone_number) as contact_dtls
FROM DB.SDF.DIM_ORDERS O
LEFT JOIN DB.SDF.DIM_CUSTOMERS C ON O.cust_id = C.cust_id
LEFT JOIN DB.SDF.DIM_PRODUCTS P ON O.product_id = P.product_id);

