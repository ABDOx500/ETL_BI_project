select distinct
    date(event_time) as date_key,
    extract(dayofweek from event_time) as day_of_week,
    extract(month from event_time) as month
from {{ ref('stg_ecommerce') }}