/* Clean DimProduct Table*/
SELECT 
    p.ProductKey,
    p.ProductAlternateKey as ProductItemCode,
    p.EnglishProductName as ProductName,
    ps.EnglishProductSubcategoryName as SubCategory,
    pc.EnglishProductCategoryName as ProductCategory,
    p.Color as ProductColor,
    p.Size as ProductSize,
    p.ProductLine as ProductLine,
    p.ModelName as ProductModelName,
    p.EnglishDescription as ProductDescription,
    ISNULL(p.[Status],'Outdate') as ProductStatus 

FROM DimProduct p 
LEFT JOIN DimProductSubcategory ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
LEFT JOIN DimProductCategory pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY 1 ASC