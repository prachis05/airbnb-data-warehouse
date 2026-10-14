{% macro trimeer(col_name, node)%}
    {{ col_name | trim | upper }}
{% endmacro %}