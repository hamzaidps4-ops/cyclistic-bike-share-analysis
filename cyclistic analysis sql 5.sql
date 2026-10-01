use cyclisticbikeshare

Select	
	DATENAME(WEEKDAY , started_at )as day_of_week,
	member_casual,
	COUNT(*) as total_rides,
	ROUND(AVG(DATEDIFF(SECOND,started_at, ended_at) / 60.0),2) as avg_duration_minutes
from[dbo].[202501-divvy-tripdata]
WHERE 
	DATEDIFF(SECOND,started_at, ended_at ) > 60
	and DATEDIFF(second	, started_at , ended_at) < 86400
Group by	
	DATENAME(weekday,started_at),
	member_casual,
	DATEPART(weekday ,started_at)
ORDER BY
	DATEPART(WEEKDAY, started_at);