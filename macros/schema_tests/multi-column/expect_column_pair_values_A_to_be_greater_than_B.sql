
{% macro test_expect_column_pair_values_A_to_be_greater_than_B(model,
                                                                column_A,
                                                                column_B,
                                                                or_equal=False,
                                                                row_condition=None
                                                                ) %}

{% set operator = ">=" if or_equal else ">" %}
{% set expression = column_A ~ " " ~ operator ~ " " ~ column_B %}

{{ dbt_expectations.expression_is_true(model,
                                        expression=expression,
                                        row_condition=row_condition
                                        )
                                        }}

{% endmacro %}
