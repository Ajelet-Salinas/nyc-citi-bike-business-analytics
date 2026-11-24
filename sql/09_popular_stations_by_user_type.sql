/*
PROJECT: NYC Citi Bike Business Analytics
AUTHOR: Ajelet Salinas
TOOL: Google BigQuery

BUSINESS QUESTION:
Which starting stations are most popular among subscribers and casual customers?

ANALYSIS:
Group trips by customer type and starting station,
then count and rank trips at each station.

PURPOSE:
Identify location-based customer behavior and help Citi Bike
make informed decisions about bike distribution, station
capacity, and location-specific marketing.
*/

-- Identify the top 10 starting stations for each customer type

WITH station_trips AS (
    SELECT
        usertype, -- Identifies subscribers and casual customers
        start_station_name, -- Identifies where the trip began
        COUNT(*) AS total_trips -- Counts trips at each station
    FROM `bigquery-public-data.new_york.citibike_trips`
    WHERE start_station_name IS NOT NULL
    GROUP BY usertype, start_station_name
),

ranked_stations AS (
    SELECT
        usertype,
        start_station_name,
        total_trips,
        ROW_NUMBER() OVER (
            PARTITION BY usertype -- Restarts ranking for each customer type
            ORDER BY total_trips DESC
        ) AS station_rank
    FROM station_trips
)

SELECT
    usertype,
    station_rank,
    start_station_name,
    total_trips
FROM ranked_stations
WHERE station_rank <= 10
ORDER BY usertype, station_rank;
