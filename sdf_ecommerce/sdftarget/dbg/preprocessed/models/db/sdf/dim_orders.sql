SELECT
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
FROM raw.stg_orders