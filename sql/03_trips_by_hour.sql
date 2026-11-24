/*
PROJECT: NYC Citi Bike Business Analytics
AUTHOR: Ajelet Salinas
TOOL: Google BigQuery

BUSINESS QUESTION:
What hours of the day have the most bike trips?

ANALYSIS:
Extract the starting hour from each trip
and count the number of trips per hour.

PURPOSE:
Identify peak usage hours to help improve
bike availability and operational planning.

*/

SELECT
    EXTRACT(HOUR FROM starttime) AS start_hour, --Hour of the ride
    COUNT(*) AS total_trips  -- Number of rides
FROM `bigquery-public-data.new_york.citibike_trips`
GROUP BY start_hour  --Group rides by hour
ORDER BY total_trips DESC --Sorts from highest to lowest
LIMIT 10; --Shows the top 10 hours

