{% macro macro_create_db(src_db,src_sc,tgt_db,tgt_sc,tbl_list) %}
    {% set create_db %}
    CREATE OR REPLACE DATABASE {tgt_db};
    {% endset %}
    {% do run_query(create_db) %}

      {% set create_sc %}
    CREATE OR REPLACE SCHEMA {{tgt_db}}.{{tgt_sc}};
    {% endset %}
    {% do run_query(create_sc) %}

       {% set create_tb %}
    CREATE OR REPLACE TABLE {{tgt_db}}.{{tgt_sc}}.T1 CLONE EDWSTG_DB.EDWSTG_SC.COUNTRY;
    {% endset %}
    {% do run_query(create_tb) %}

{% endmacro %}