USE cyclisticbikeshare;

-- حذف جدول all_trips القديم لإعادة بنائه نظيفاً
DROP TABLE IF EXISTS dbo.all_trips;

-- دمج الشهور الثلاثة في جدول all_trips الجديد
SELECT * INTO dbo.all_trips
FROM (
    SELECT * FROM [dbo].[202501-divvy-tripdata]
    UNION ALL
    SELECT * FROM [dbo].[202502-divvy-tripdata]
    UNION ALL
    SELECT * FROM [dbo].[202507-divvy-tripdata]
) AS combined_data;