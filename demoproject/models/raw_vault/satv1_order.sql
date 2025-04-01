{{ config(materialized='view') }}

{%- set yaml_metadata -%}
sat_v0: 'satv0_order'
hashkey: 'hk_order'
hashdiff: 'hd_order'   
ledts_alias: 'loadenddate'
add_is_current_flag: true
{%- endset -%}    

{{ datavault4dbt.sat_v1(yaml_metadata=yaml_metadata) }}