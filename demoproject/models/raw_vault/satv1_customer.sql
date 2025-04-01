{{ config(materialized='view') }}

{%- set yaml_metadata -%}
sat_v0: 'satv0_customer'
hashkey: 'hk_customer'
hashdiff: 'hd_customer'   
ledts_alias: 'loadenddate'
add_is_current_flag: true
{%- endset -%}    

{{ datavault4dbt.sat_v1(yaml_metadata=yaml_metadata) }}