-- cleansed FACT_InternetSales Table --
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount] 
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) BETWEEN 2019 and 2021 
ORDER BY 
  OrderDateKey ASC
