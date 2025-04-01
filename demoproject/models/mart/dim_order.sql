select 
    sat_o.hk_order
    ,sat_o.order_date
    ,sat_o.status as order_status
    ,concat(sat_c.first_name, ' ', sat_c.last_name) as order_name
from {{ ref('link_customer_order') }} as link_co 
    inner join
        {{ ref('satv1_customer') }} as sat_c 
            on link_co.hk_customer = sat_c.hk_customer
    inner join 
        {{ ref('satv1_order') }} as sat_o
            on link_co.hk_order = sat_o.hk_order
where
        sat_c.is_current = 1
    and sat_o.is_current = 1
    and link_co.rsrc not in ('SYSTEM', 'ERROR')