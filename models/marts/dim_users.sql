select distinct 
    user_id
from {{ ref('stg_ecommerce') }}
where user_id is not null