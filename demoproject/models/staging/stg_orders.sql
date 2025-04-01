-- models/staging/stg_orders.sql

{%- set yaml_metadata -%}
source_model: 'raw_orders'
ldts: 'load_time'
rsrc: 'system_id'
hashed_columns: 
    hk_order:
        - id
    hk_link_customer_order:
        - id
        - user_id
    hk_customer:
        - user_id
    hd_order:
        is_hashdiff: true
        columns:
            - order_date
            - status
{%- endset -%}

{%- set metadata_dict = fromyaml(yaml_metadata) -%}

{{ datavault4dbt.stage(source_model=metadata_dict.get('source_model'),
                    ldts=metadata_dict.get('ldts'),
                    rsrc=metadata_dict.get('rsrc'),
                    hashed_columns=metadata_dict.get('hashed_columns')) }}