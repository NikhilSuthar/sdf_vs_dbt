

use DB.SDF;
create or replace table DB.SDF.DIM_PAYMENTS as (SELECT
    payment_id,
    payment_date,
    payment_method,
    payment_amount,
    status,
    current_timestamp as refreshed_at
FROM DB.RAW.STG_PAYMENTS);

