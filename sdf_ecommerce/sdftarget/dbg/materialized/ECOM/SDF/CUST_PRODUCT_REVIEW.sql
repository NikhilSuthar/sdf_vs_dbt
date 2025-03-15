

use ECOM.SDF;
create or replace table ECOM.SDF.CUST_PRODUCT_REVIEW as (SELECT
    P.product_id,
    P.name as product_name,
    P.category,
    AVG(O.rating) as rating,
    current_timestamp as refreshed_at
FROM ECOM.SDF.DIM_ORDERS O 
LEFT JOIN ECOM.SDF.DIM_PRODUCTS P ON O.product_id = P.product_id
LEFT JOIN  ECOM.SDF.DIM_CUSTOMERS C on O.cust_id = C.cust_id 
GROUP BY P.product_id, P.name, P.category);

