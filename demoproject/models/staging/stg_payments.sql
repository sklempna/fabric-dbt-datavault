-- models/staging/stg_payments.sql

{%- set yaml_metadata -%}
source_model: 'raw_payments'
ldts: 'load_time'
rsrc: 'system_id'
hashed_columns: 
    hk_payment:
        - id
    hk_link_payment_order:
        - id
        - order_id
    hk_order:
        - order_id
    hd_payment:
        is_hashdiff: true
        columns:
            - payment_method
            - amount
{%- endset -%}

{%- set metadata_dict = fromyaml(yaml_metadata) -%}

{{ datavault4dbt.stage(source_model=metadata_dict.get('source_model'),
                    ldts=metadata_dict.get('ldts'),
                    rsrc=metadata_dict.get('rsrc'),
                    hashed_columns=metadata_dict.get('hashed_columns')) }}