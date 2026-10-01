USE cyclisticbikeshare;

SELECT 
    MONTH(started_at) AS trip_month,
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(AVG(DATEDIFF(SECOND, started_at, ended_at) / 60.0), 2) AS avg_duration_minutes
FROM dbo.all_trips
WHERE 
    DATEDIFF(SECOND, started_at, ended_at) > 60
    AND DATEDIFF(SECOND, started_at, ended_at) < 86400
GROUP BY 
    MONTH(started_at),
    member_casual
ORDER BY 
    trip_month,
    member_casual;