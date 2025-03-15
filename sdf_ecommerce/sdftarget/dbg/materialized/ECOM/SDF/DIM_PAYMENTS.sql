

use ECOM.SDF;
create or replace table ECOM.SDF.DIM_PAYMENTS as (SELECT
    payment_id,
    payment_date,
    payment_method,
    payment_amount,
    status,
    current_timestamp as refreshed_at
FROM ECOM.RAW.STG_PAYMENTS);

