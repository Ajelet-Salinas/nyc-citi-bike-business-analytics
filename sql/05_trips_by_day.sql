/* 
PROJECT: NYC Citi Bike Business Analytics
AUTHOR: Ajelet Salinas
TOOL: Google BigQuery

BUSINESS QUESTION:
Which days of the week generate the most bike trips?

ANALYSIS:
Categorize trips by the day of the week
and calculate the total number of trips.

PURPOSE:
Identify daily demand patterns to support
bike availability and operational planning.
*/

SELECT
    EXTRACT(DAYOFWEEK FROM starttime) AS day_number,
    FORMAT_DATE('%A', DATE(starttime)) AS day_name, -- Converts the date into weekday name
    COUNT(*) AS total_trips
FROM `bigquery-public-data.new_york.citibike_trips`
GROUP BY day_number, day_name  --Groups all trips by day
ORDER BY total_trips DESC; --Ranks the busiest days first 
