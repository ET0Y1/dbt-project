{% macro margin_percent(revenue, purchase_cost) %}

    {%- set margin = revenue - purchase_cost -%}
    {%- set margin_percent = (margin / SAFE_DIVIDE(revenue, 1)) * 100 -%}
    {%- set rounded_margin_percent = round(margin_percent, 2) -%}

    {{ return(rounded_margin_percent) }}

{% endmacro %}
