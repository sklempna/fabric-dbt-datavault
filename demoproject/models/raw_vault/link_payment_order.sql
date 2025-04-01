{{ config(materialized='incremental') }}

{%- set yaml_metadata -%}
link_hashkey: 'hk_link_payment_order'
foreign_hashkeys: 
    - 'hk_payment'
    - 'hk_order'
source_models: 'stg_payments'
{%- endset -%}    

{{ datavault4dbt.link(yaml_metadata=yaml_metadata) }}