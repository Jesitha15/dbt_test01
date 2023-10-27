WITH
   {{config(materialized='table')}}

mart as (
SELECT * FROM {{ref('inter_annual_enterprise_survey')}} 
)

SELECT * FROM mart
