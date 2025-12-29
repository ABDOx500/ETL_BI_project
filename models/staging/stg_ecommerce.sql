with source as (
    -- This ref now works because you moved the file to 'seeds'!
    select * from {{ ref('raw_ecommerce_data') }}
)

select
    -- IDs
    cast(user_id as string) as user_id,
    cast(product_id as string) as product_id,
    cast(user_session as string) as session_id,
    
    -- Timestamps
    cast(event_time as timestamp) as event_time,
    
    -- Other columns
    event_type,
    cast(price as numeric) as price,
    brand,
    category_code
from source