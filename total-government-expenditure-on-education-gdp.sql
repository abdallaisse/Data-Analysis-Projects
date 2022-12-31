/****** Script for SelectTopNRows command from SSMS  ******/
SELECT Entity,Year,Government_expenditure_on_education_total_prc_of_GDP
  FROM [Projects].[dbo].[total-government-expenditure-on-education-gdp]

SELECT Entity,Year,Government_expenditure_on_education_total_prc_of_GDP
  FROM [Projects].[dbo].[total-government-expenditure-on-education-gdp] order by 1 desc

--Top 10 Countries expenditure on education in 2020
SELECT top 10 Entity,Year,Government_expenditure_on_education_total_prc_of_GDP
where Year like '2020' order by 4 desc

--Canada highest Government expenditure on education
SELECT Entity,Year,Government_expenditure_on_education_total_prc_of_GDP
  FROM [Projects].[dbo].[total-government-expenditure-on-education-gdp]
  where Entity like 'Canada' order by 3 desc

--Finland Lowest Government expenditure on education
SELECT Entity,Year,Government_expenditure_on_education_total_prc_of_GDP
  FROM [Projects].[dbo].[total-government-expenditure-on-education-gdp]
  where Entity like 'Finland' order by 3 

SELECT *, CASE
WHEN Government_expenditure_on_education_total_prc_of_GDP < 3.0 THEN 'LOW INVESTMENT'
WHEN Government_expenditure_on_education_total_prc_of_GDP BETWEEN 3.0 AND 5.0 THEN 'MID INVESTMENT'
ELSE 'GOOD INVESTMENT' END
FROM [Projects].[dbo].[total-government-expenditure-on-education-gdp]

SELECT Government_expenditure_on_education_total_prc_of_GDP,count(Government_expenditure_on_education_total_prc_of_GDP) 
FROM [Projects].[dbo].[total-government-expenditure-on-education-gdp]
group by Government_expenditure_on_education_total_prc_of_GDP having count(Government_expenditure_on_education_total_prc_of_GDP) > 2

