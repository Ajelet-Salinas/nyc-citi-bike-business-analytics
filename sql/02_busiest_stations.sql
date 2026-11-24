/*
PROJECT: NYC Citi Bike Business Analytics
AUTHOR: Ajelet Salinas
TOOL: Google BigQuery

BUSINESS QUESTION:
Which starting stations generate the most bike trips?

ANALYSIS:
Count trips by starting station and rank
stations from highest to lowest usage.

EXPECTED RESULT:
Top 10 most frequently used starting stations.
*/

SELECT 
  start_station_name,
  COUNT(*) AS total_trips  -- Count the number of trips and assign the result the name total_trips
FROM `bigquery-public-data.new_york.citibike_trips`
WHERE start_station_name IS NOT NULL
GROUP BY start_station_name --Groups trips by starting station
ORDER BY total_trips DESC --Sorts from highest to lowest
LIMIT 10; --Shows the top 10 stations
