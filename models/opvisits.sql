{{
    config(
        materialized='table',
        schema='sharedsavings',
        query_tag='dbt'
    )
}}

select 1 id
