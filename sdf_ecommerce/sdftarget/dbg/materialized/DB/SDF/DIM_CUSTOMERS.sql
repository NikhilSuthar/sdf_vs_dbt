

use DB.SDF;
create or replace table DB.SDF.DIM_CUSTOMERS as (SELECT
    cust_id,
    first_name,
    last_name,
    email,
    phone_number,
    address,
    city,
    country,
    current_timestamp as refreshed_at
FROM DB.RAW.STG_CUSTOMER);

