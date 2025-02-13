{% macro test_expect_column_values_to_not_match_regex(model, column_name,
                                                    regex,
                                                    row_condition=None
                                                    ) %}

{% set expression %}
{{ dbt_expectations.regexp_instr(column_name, regex) }} = 0
{% endset %}

{{ dbt_expectations.expression_is_true(model,
                                        expression=expression,
                                        row_condition=row_condition
                                        )
                                        }}

{% endmacro %}
