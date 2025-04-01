-- models/staging/stg_customers.sql

{%- set yaml_metadata -%}
source_model: 'raw_customers'
ldts: 'load_time'
rsrc: 'system_id'
hashed_columns: 
    hk_customer:
        - id
    hd_customer:
        is_hashdiff: true
        columns:
            - first_name
            - last_name
{%- endset -%}

{%- set metadata_dict = fromyaml(yaml_metadata) -%}

{{ datavault4dbt.stage(source_model=metadata_dict.get('source_model'),
                    ldts=metadata_dict.get('ldts'),
                    rsrc=metadata_dict.get('rsrc'),
                    hashed_columns=metadata_dict.get('hashed_columns')) }}