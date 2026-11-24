/* 
PROJECT: NYC Citi Bike Business Analytics
AUTHOR: Ajelet Salinas
TOOL: Google BigQuery

BUSINESS QUESTION:
Which months generate the most Citi Bike trips?

ANALYSIS:
Group trips by month and count the total number of trips.

PURPOSE:
Identify seasonal demand so Citi Bike can plan bike availability, maintenance, and staffing.
*/

SELECT
    EXTRACT(MONTH FROM starttime) AS month_number,  -- Gets the month number (1–12).
    FORMAT_DATE('%B', DATE(starttime)) AS month_name, -- Displays the full month name.
    COUNT(*) AS total_trips  -- Counts the trips
FROM `bigquery-public-data.new_york.citibike_trips`
GROUP BY month_number, month_name -- Combines trips belonging to the same month.
ORDER BY total_trips DESC; -- Displays the busiest months first.
