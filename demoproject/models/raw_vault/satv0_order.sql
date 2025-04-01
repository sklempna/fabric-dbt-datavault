{{ config(materialized='incremental') }}

{%- set yaml_metadata -%}
parent_hashkey: 'hk_order'
src_hashdiff: 'hd_order'
src_payload:
    - order_date
    - status 
source_model: 'stg_orders'
{%- endset -%}    

{{ datavault4dbt.sat_v0(yaml_metadata=yaml_metadata) }}