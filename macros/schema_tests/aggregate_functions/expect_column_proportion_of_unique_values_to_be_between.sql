{% macro test_expect_column_proportion_of_unique_values_to_be_between(model, column_name,
                                                            min_value,
                                                            max_value,
                                                            row_condition=None
                                                            ) %}
{% set expression %}
count(distinct {{ column_name }})/count({{ column_name }})
{% endset %}
{{ dbt_expectations.expression_between(model,
                                        expression=expression,
                                        min_value=min_value,
                                        max_value=max_value,
                                        row_condition=row_condition
                                        ) }}

{% endmacro %}
