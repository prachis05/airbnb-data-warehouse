{{ config(materialized='table') }}

SELECT
    b.BOOKING_ID,
    b.LISTING_ID,
    l.HOST_ID,
    b.BOOKING_DATE,
    b.BOOKING_STATUS,
    b.TOTAL_AMT,
    b.CREATED_AT
FROM {{ ref('silver_bookings') }} b
LEFT JOIN {{ ref('dim_listings') }} l
    ON b.LISTING_ID = l.LISTING_ID