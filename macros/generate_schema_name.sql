{% macro generate_schema_name(custome_schema_name,node) %}
  {% if custome_schema_name is not none %}
       {{custome_schema_name}}
  {% else %}
       {{ target.schema }}
  {% endif %}
{% endmacro %}