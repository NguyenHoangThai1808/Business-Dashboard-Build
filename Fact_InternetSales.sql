/* Clean FactInternetSales Table*/
SELECT 
    ProductKey,
    OrderDateKey,
    DueDateKey,
    ShipDateKey,
    CustomerKey,
    SalesOrderNumber,
    SalesAmount
FROM FactInternetSales
WHERE LEFT(OrderDateKey,4) > YEAR(GETDATE())-5
ORDER BY 2 ASC

