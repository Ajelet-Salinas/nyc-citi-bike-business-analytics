/* 
PROJECT: NYC Citi Bike Business Analytics
AUTHOR: Ajelet Salinas
TOOL: Google BigQuery

BUSINESS QUESTION:
How do monthly riding patterns differ between
subscribers and casual customers?

ANALYSIS:
Group trips by month and customer type.
Calculate the total number of trips for each group.

PURPOSE:
Identify seasonal demand patterns for each customer
type and develop targeted marketing strategies.
*/

-- Compare monthly trip volume between customer types

SELECT
    usertype,
    EXTRACT(MONTH FROM starttime) AS month_number, -- Extracts the month number
    FORMAT_DATE('%B', DATE(starttime)) AS month_name, -- Converts the date into the month name
    COUNT(*) AS total_trips -- Counts trips for each customer type and month
FROM `bigquery-public-data.new_york.citibike_trips`
GROUP BY usertype, month_number, month_name
ORDER BY month_number, usertype;
