{% test custom_test_table_exists(model) %}

SELECT 1
FROM {{ model }}
WHERE FALSE

{% endtest %}
