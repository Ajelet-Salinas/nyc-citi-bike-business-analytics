/*
PROJECT: NYC Citi Bike Business Analytics
AUTHOR: Ajelet Salinas
TOOL: Google BigQuery

BUSINESS QUESTION:
Do subscribers or casual customers take more bike trips?

ANALYSIS:
Group bike trips by user type (Subscriber
or Customer) and calculate the total number
of trips for each customer group.

PURPOSE:
Understand customer usage patterns and identify
opportunities to improve customer retention,
subscription growth, and marketing strategies.
*/

-- Compare total trips by customer type

SELECT
    usertype, --identify subscribers and casual customers
    COUNT(*) AS total_trips, --count trips for each group
    ROUND (
        COUNT(*) * 100.0/ SUM(COUNT(*)) OVER(),  --Calculate the percentage
        2
    ) AS percentage_of_trips
FROM `bigquery-public-data.new_york.citibike_trips`
GROUP BY usertype  --Group by customer categories 
ORDER BY total_trips DESC; --Rank them from msot trips to fewest
