--Cleansed Dim_Product table
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as [Product item Code], 
  p.[EnglishProductName] as [Product Name], 
  ps.[EnglishProductSubcategoryName] as [Sub Category], 
  pc.[EnglishProductCategoryName] as [Product Category], 
  p.[Color] as [Product Color], 
  p.[Size] as [Product Size], 
  p.[ProductLine] as [Product Line], 
  p.[ModelName] as [Product Model Name], 
  p.[EnglishDescription] as [Product Description], 
  isnull(p.[Status], 'Outdated') as [Product Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  left join DimProductSubcategory as ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey 
  left join DimProductCategory as pc on pc.ProductCategoryKey = ps.ProductSubcategoryKey