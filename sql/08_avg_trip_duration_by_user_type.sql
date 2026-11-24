/*
PROJECT: NYC Citi Bike Business Analytics
AUTHOR: Ajelet Salinas
TOOL: Google BigQuery

BUSINESS QUESTION:
Do subscribers or casual customers have a longer average bike trip duration?

ANALYSIS:
Calculate the average trip duration in minutes for each customer type.

PURPOSE:
 Understand differences in riding behavior and identify opportunities for membership pricing and marketing strategies.

*/

SELECT
    usertype,
    ROUND(AVG(   
        TIMESTAMP_DIFF(stoptime, starttime, SECOND) / 60.0 
    -- Calculates the time between trip start and end in minutes
    ), 2
  ) AS avg_trip_duration_minutes,
    COUNT(*) AS total_trips -- Counts trips for each customer type
FROM `bigquery-public-data.new_york.citibike_trips`
WHERE stoptime IS NOT NULL
    AND starttime IS NOT NULL
GROUP BY usertype  -- Separates subscribers from casual customers
ORDER BY avg_trip_duration_minutes DESC; -- Ranks longest average duration first
