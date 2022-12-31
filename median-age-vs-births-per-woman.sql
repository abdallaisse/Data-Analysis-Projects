/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) SELECT Year,Median_age,Fertility_rate,Population,Continent
  FROM [Projects].[dbo].[median-age-vs-births-per-woman]


SELECT Year,Median_age,Fertility_rate,Population,Continent
  FROM [Projects].[dbo].[median-age-vs-births-per-woman] order by 3,4

--United Kingdom highest Fertility Rate
SELECT Year,Median_age,Fertility_rate,Population
  FROM [Projects].[dbo].[median-age-vs-births-per-woman] 
  where Entity like '%kingdom%' order by 4 desc

-- Countries with Highest Fertility rate per Population
Select Entity, MAX(cast(Fertility_rate as float)) as TotalFertilityRate
FROM [Projects].[dbo].[median-age-vs-births-per-woman] 
--Where location like '%states%'
Where continent is not null 
Group by Entity
order by TotalFertilityRate desc


--Top 5 Countries Highest Fertility in 2020
SELECT TOP 5 Year,Median_age,Fertility_rate,Population FROM [Projects].[dbo].[median-age-vs-births-per-woman] 
where Year like '2020'  order by 4 desc

select Entity,count(Fertility_rate) as CountFertilityRate FROM [Projects].[dbo].[median-age-vs-births-per-woman] 
group by Entity,Fertility_rate


