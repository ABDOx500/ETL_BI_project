select distinct 
    {{ dbt_utils.generate_surrogate_key(['event_type']) }} as event_type_id,
    event_type
from {{ ref('stg_ecommerce') }}