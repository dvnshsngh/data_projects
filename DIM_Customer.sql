-- cleansed DIM_Customer table --
SELECT 
  [CustomerKey], 
  [FirstName] AS [First Name], 
  [LastName] AS [Last Name], 
  [FirstName] + ' ' + [LastName] AS [Full Name], 
  case [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  [DateFirstPurchase] AS DateFirstPurchase, 
  [city] AS [Customer City] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as C 
  LEFT JOIN dbo.DimGeography AS G on g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC
