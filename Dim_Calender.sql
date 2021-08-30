--Cleansed Dim Date table
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as [Date], 
  [EnglishDayNameOfWeek] as [Day], 
  [EnglishMonthName] as [Month], 
  left([EnglishMonthName], 3) as [Month_Short], 
  [WeekNumberOfYear] as [Week No.], 
  [MonthNumberOfYear] as [Month No.], 
  [CalendarQuarter] as [Quarter], 
  [CalendarYear] as [Year] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  [CalendarYear] >= 2010