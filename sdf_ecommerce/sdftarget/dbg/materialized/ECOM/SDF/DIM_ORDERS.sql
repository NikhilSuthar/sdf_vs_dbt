

use ECOM.SDF;
create or replace table ECOM.SDF.DIM_ORDERS as (SELECT
    order_id,
    cust_id,
    order_date,
    order_qty,
    amount,
    payment_id,
    product_id,
    status,
    rating,
    current_timestamp as refreshed_at
FROM ECOM.RAW.STG_ORDERS);

