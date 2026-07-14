{{ config(
    materialized='view'
) }}

select
    *
from SC_RISK.MARQUEE_DATA.GS_BASKET_PRICES
limit 100;
