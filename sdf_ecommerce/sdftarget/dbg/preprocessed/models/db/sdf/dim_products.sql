SELECT
    product_id,
    name,
    category,
    description,
    price,
    current_timestamp as refreshed_at
FROM raw.stg_products