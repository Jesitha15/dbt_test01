	with
{{config(materialized='view')}}

inter-01 as (
SELECT
     SUM(CAST(t2.value AS INT64)) AS Total_Value,
     {{ dbt_utils.star(from=ref('Stage_annual_enterprise_survey01'), except=["id"]) }},
     {{ dbt_utils.star(from=ref('Stage_annaul_enterprise_survey02'), except=["id"]) }}
        
FROM
     {{ ref('Stage_annual_enterprise_survey01’) }} AS t2
LEFT JOIN
     {{ ref('Stage_annual_enterprise_survey01') }} AS t1
ON
    t1.id = t2.id
)

