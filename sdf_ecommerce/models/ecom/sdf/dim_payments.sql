
SELECT
    payment_id,
    payment_date,
    payment_method,
    payment_amount,
    status,
    current_timestamp as refreshed_at
FROM raw.stg_payments
