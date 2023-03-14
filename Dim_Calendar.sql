/* Clean DimDate Table*/
SELECT 
    DateKey, FullDateAlternateKey as Date, 
    EnglishDayNameOfWeek as Day, 
    EnglishMonthName as Month,
    LEFT(EnglishMonthName,3) as MonthShort,
    MonthNumberOfYear as MonthNo,
    CalendarQuarter as Quarter,
    CalendarYear as Year
FROM DimDate
WHERE CalendarYear >=2019