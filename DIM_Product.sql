SELECT 
  [ProductKey], 
  [ProductAlternateKey] AS ProductItemCode, 
  [EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName AS [Sub Category], 
  pc.EnglishProductCategoryName AS [Product Category], 
  [Color] AS [Product Color], 
  [Size] AS [Product Size], 
  [ProductLine] AS [Product Line], 
  [ModelName] AS [Product Model Name], 
  [EnglishDescription] AS [Product Description], 
  ISNULL ([Status], 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = dbo.DimProduct.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  dbo.DimProduct.ProductKey asc
