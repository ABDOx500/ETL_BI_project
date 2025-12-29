select distinct 
    product_id,
    brand,
    category_code
from {{ ref('stg_ecommerce') }}
where product_id is not null