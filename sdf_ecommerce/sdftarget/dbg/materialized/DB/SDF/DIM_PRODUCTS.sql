

use DB.SDF;
create or replace table DB.SDF.DIM_PRODUCTS as (SELECT
    product_id,
    name,
    category,
    description,
    price,
    current_timestamp as refreshed_at
FROM DB.RAW.STG_PRODUCTS);

