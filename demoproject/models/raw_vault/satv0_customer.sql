{{ config(materialized='incremental') }}

{%- set yaml_metadata -%}
parent_hashkey: 'hk_customer'
src_hashdiff: 'hd_customer'
src_payload:
    - first_name
    - last_name 
source_model: 'stg_customers'
{%- endset -%}    

{{ datavault4dbt.sat_v0(yaml_metadata=yaml_metadata) }}