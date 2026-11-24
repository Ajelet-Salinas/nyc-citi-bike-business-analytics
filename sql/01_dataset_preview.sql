/*
PROJECT: NYC Citi Bike Business Analytics
AUTHOR: Ajelet Salinas
TOOL: Google BigQuery

BUSINESS QUESTION:
What information is available in the NYC Citi Bike dataset?

ANALYSIS:
Preview the first 10 records to examine the
dataset's structure and available columns.

PURPOSE:
Understand the dataset before performing
business and customer behavior analysis.
*/

SELECT *
FROM `bigquery-public-data.new_york.citibike_trips`
LIMIT 10;
