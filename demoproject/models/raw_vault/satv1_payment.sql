{{ config(materialized='view') }}

{%- set yaml_metadata -%}
sat_v0: 'satv0_payment'
hashkey: 'hk_payment'
hashdiff: 'hd_payment'   
ledts_alias: 'loadenddate'
add_is_current_flag: true
{%- endset -%}    

{{ datavault4dbt.sat_v1(yaml_metadata=yaml_metadata) }}