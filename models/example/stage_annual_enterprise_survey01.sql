With
tab1 As(
Select * from  `cloudside-academy.dbt_sample_data.annual-enterprise-survey01`
), one AS (
 Select 
   year, value,id, Industry_name_NZSIOC AS industry_name
from tab1 
)
Select * from  one
