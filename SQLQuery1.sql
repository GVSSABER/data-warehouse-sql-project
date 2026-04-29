SELECT * FROM DimCustomer;
SELECT SUM(SalesAmount) AS TotalSales
FROM FactInternetSales;
SELECT 
    p.EnglishProductName,
    SUM(f.SalesAmount) AS TotalSales
FROM FactInternetSales f
JOIN DimProduct p
ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY TotalSales DESC;
SELECT 
    c.FirstName,
    SUM(f.SalesAmount) AS Total_Spent
FROM FactInternetSales f
JOIN DimCustomer c
ON f.CustomerKey = c.CustomerKey
GROUP BY c.FirstName
ORDER BY Total_Spent DESC;
SELECT 
    d.CalendarYear,
    SUM(f.SalesAmount) AS Total_Sales
FROM FactInternetSales f
JOIN DimDate d
ON f.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear
ORDER BY d.CalendarYear;
SELECT 
    d.MonthNumberOfYear,
    SUM(f.SalesAmount) AS Total_Sales
FROM FactInternetSales f
JOIN DimDate d
ON f.OrderDateKey = d.DateKey
GROUP BY d.MonthNumberOfYear
ORDER BY d.MonthNumberOfYear;