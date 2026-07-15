{{ config(
    materialized='view'
) }}

select
    basket_symbol,
    price_date,
    price,
    update_time,
    load_ts
from {{ source('marquee_data', 'GS_BASKET_PRICES') }}
where price_date >= dateadd(day, -90, current_date)
