{{ config(materialized='incremental') }}

{%- set yaml_metadata -%}
start_date: '2025-03-30'
daily_snapshot_time: '07:30:00'
{%- endset -%}    

{{ datavault4dbt.control_snap_v0(yaml_metadata=yaml_metadata) }} 