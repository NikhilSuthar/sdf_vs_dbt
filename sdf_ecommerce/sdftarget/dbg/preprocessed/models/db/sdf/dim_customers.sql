SELECT
    cust_id,
    first_name,
    last_name,
    email,
    phone_number,
    address,
    city,
    country,
    current_timestamp as refreshed_at
FROM raw.stg_customer