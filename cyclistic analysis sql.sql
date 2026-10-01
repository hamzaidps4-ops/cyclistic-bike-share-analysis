USE cyclisticbikeshare;

SELECT 
    DATENAME(WEEKDAY, started_at) AS day_of_week,
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(AVG(DATEDIFF(SECOND, started_at, ended_at) / 60.0), 2) AS avg_duration_minutes
FROM dbo.all_trips
WHERE 
    DATEDIFF(SECOND, started_at, ended_at) > 60
    AND DATEDIFF(SECOND, started_at, ended_at) < 86400
    AND MONTH(started_at) IN (1, 2, 7)
GROUP BY 
    DATENAME(WEEKDAY, started_at),
    member_casual,
    DATEPART(WEEKDAY, started_at)
ORDER BY 
    DATEPART(WEEKDAY, started_at);