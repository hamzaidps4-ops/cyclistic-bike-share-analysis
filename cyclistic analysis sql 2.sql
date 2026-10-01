USE cyclisticbikeshare;

SELECT 
    member_casual,
    rideable_type,
    COUNT(*) AS total_rides,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY member_casual), 2) AS percentage_within_group,
    ROUND(AVG(DATEDIFF(SECOND, started_at, ended_at) / 60.0), 2) AS avg_duration_minutes
FROM dbo.all_trips
WHERE 
    DATEDIFF(SECOND, started_at, ended_at) > 60
    AND DATEDIFF(SECOND, started_at, ended_at) < 86400
GROUP BY 
    member_casual,
    rideable_type
ORDER BY 
    member_casual,
    total_rides DESC;