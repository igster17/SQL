SELECT 
--Change GETDATE() into a table date equivalent.

CASE
	WHEN DATEPART(WEEKDAY, GETDATE())-2 < 0 
	THEN CONVERT(date,MIN(GETDATE()))
	ELSE CONVERT(date,MIN(DATEADD(wk, 1, DATEADD(DAY, 1-DATEPART(WEEKDAY, GETDATE()), DATEDIFF(dd, 0, GETDATE())))))
END					AS weekenddate_sun
