{{ config(materialized='incremental') }}

{%- set yaml_metadata -%}
parent_hashkey: 'hk_payment'
src_hashdiff: 'hd_payment'
src_payload:
    - payment_method
    - amount
source_model: 'stg_payments'
{%- endset -%}    

{{ datavault4dbt.sat_v0(yaml_metadata=yaml_metadata) }}