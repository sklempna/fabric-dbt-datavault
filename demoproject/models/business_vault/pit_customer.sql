{{ config(materialized='incremental',
        post_hook="{{ datavault4dbt.clean_up_pit('control_snap_v1') }}") }}

{%- set yaml_metadata -%}
pit_type: '!Regular PIT'
tracked_entity: 'hub_customer'
hashkey: 'hk_customer'
sat_names:
    - satv1_customer
snapshot_relation: 'control_snap_v1'
snapshot_trigger_column: 'is_latest'
dimension_key: 'hk_customer_d'
{%- endset -%}    

{{ datavault4dbt.pit(yaml_metadata=yaml_metadata) }}