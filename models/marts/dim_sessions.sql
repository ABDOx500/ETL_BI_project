select
    session_id,
    min(event_time) as session_start,
    max(event_time) as session_end,
    count(*) as total_events
from {{ ref('stg_ecommerce') }}
where session_id is not null
group by session_id