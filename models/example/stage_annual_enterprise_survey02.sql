With
tab2 AS(
Select * from  ‘cloudside-academy.dbt_sample_data.annual-enterprise-survey02’),
two AS (
Select 
 id,
 variable,
From tab2
)
select * from two

