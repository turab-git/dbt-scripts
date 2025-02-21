{{
    config(
        materialized='table',
        transient='false',
        schema='bi_stage',
        query_tag='dbt1'
    )
}}

select 1 id
