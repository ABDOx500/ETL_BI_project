select
    {{ dbt_utils.generate_surrogate_key(['session_id', 'event_time', 'product_id', 'event_type']) }} as event_sk,
    user_id,
    product_id,
    session_id,
    {{ dbt_utils.generate_surrogate_key(['event_type']) }} as event_type_id,
    date(event_time) as date_key,
    price,
    event_time
from {{ ref('stg_ecommerce') }}