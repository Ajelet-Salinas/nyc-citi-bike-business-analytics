/*
PROJECT: NYC Citi Bike Business Analytics
AUTHOR: Ajelet Salinas
TOOL: Google BigQuery

BUSINESS QUESTION:
Are there more bike trips on weekdays or weekends?

ANALYSIS:
Categorize Monday–Friday as Weekday
and Saturday–Sunday as Weekend.

PURPOSE:
Understand differences in weekday and weekend bike usage. 

*/

WITH daily_trips AS ( --Creates CTE 
  SELECT
    Date(starttime) AS trip_date,
    CASE --Identifies Weekend from Weekday
      WHEN EXTRACT(DAYOFWEEK FROM starttime) IN (1,7)
        THEN 'Weekend'
      ELSE
        'Weekday'
    END AS day_type,
    COUNT (*) AS daily_trip_count 
  FROM `bigquery-public-data.new_york.citibike_trips`
  GROUP BY trip_date, day_type
)


SELECT
    day_type,
    SUM(daily_trip_count) AS total_trips,
    COUNT(*) AS number_of_days,
    ROUND(AVG(daily_trip_count), 0) AS avg_trips_per_day --Average daily trips
FROM daily_trips
GROUP BY day_type
ORDER BY avg_trips_per_day DESC;
