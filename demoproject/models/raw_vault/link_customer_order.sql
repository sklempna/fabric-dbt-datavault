{{ config(materialized='incremental') }}

{%- set yaml_metadata -%}
link_hashkey: 'hk_link_customer_order'
foreign_hashkeys: 
    - 'hk_customer'
    - 'hk_order'
source_models: 'stg_orders'
{%- endset -%}    

{{ datavault4dbt.link(yaml_metadata=yaml_metadata) }}