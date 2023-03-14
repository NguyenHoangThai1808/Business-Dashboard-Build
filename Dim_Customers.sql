/* Clean DimCustomer Table*/
SELECT 
    c.CustomerKey as CustomerKey,
    c.FirstName as FirstName,
    c.LastName as LastName,
    c.FirstName +' '+ c.LastName as FullName,
    CASE WHEN c.Gender = 'M' THEN 'Male' WHEN c.Gender = 'F' THEN 'Female' END AS Gender,
    c.DateFirstPurchase as DateFirstPurchase,
    g.City as CustomerCity
FROM DimCustomer c
LEFT JOIN DimGeography g ON g.GeographyKey = c.GeographyKey
ORDER BY 1 ASC