	with
{{config(materialized='view')}}

inter01 as (
SELECT
     SUM(CAST(t2.value AS INT64)) AS Total_Value,
     {{ dbt_utils.star(from=ref('stage_annual_enterprise_survey01'), except=["id"]) }},
     {{ dbt_utils.star(from=ref('stage_annaul_enterprise_survey02'), except=["id"]) }}
        
FROM
     {{ ref('stage_annual_enterprise_survey02') }} AS t2
LEFT JOIN
     {{ ref('stage_annual_enterprise_survey01') }} AS t1

ON
    t1.id = t2.id
)

