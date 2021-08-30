--Cleansed the Dim_Customer table
SELECT 
  c.[CustomerKey] as [CustomerKey], 
  c.[FirstName] as [First Name], 
  c.[LastName] as [Last Name], 
  c.[FirstName] + '  ' + [LastName] as [Full Name], 
  Case c.[Gender] when 'M' then 'Male' when 'F' then 'Female' end as [Gender], 
  c.[DateFirstPurchase] as [DateFirstPurchase], 
  g.[city] as [Customer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  left join DimGeography as g on c.GeographyKey = g.GeographyKey 
order by 
  CustomerKey