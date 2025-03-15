

use DB.SDF;
create or replace table DB.SDF.DIM_ORDERS as (SELECT
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
FROM DB.RAW.STG_ORDERS);

