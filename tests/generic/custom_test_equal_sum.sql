{% test custom_test_equal_sum(
  model, 
  column_name, 
  compare_model, 
  compare_column,

  where = 'TRUE',
  compare_where = 'TRUE'
) %}


/*
where: filter data on the source table. Default to TRUE.
compare_where: filter data on the compare table. Default to TRUE.
*/


WITH source AS (
  SELECT SUM( CAST(({{ column_name }}) AS NUMERIC) ) AS source_total
  FROM {{ model }}
  WHERE 
    {{ where }}
)

, compare AS (
  SELECT SUM( CAST(({{ compare_column }}) AS NUMERIC) ) AS compare_total
  FROM {{ compare_model }}
  WHERE 
    {{ compare_where }}
)

SELECT 
  source.source_total
  , compare.compare_total
FROM source
CROSS JOIN compare
WHERE 
  COALESCE(source.source_total, 0) <> COALESCE(compare.compare_total, 0)


{% endtest %}