

use ECOM.SDF;
create or replace table ECOM.SDF.DIM_PRODUCTS as (SELECT
    product_id,
    name,
    category,
    description,
    price,
    current_timestamp as refreshed_at
FROM ECOM.RAW.STG_PRODUCTS);

