
# NYC Citi Bike Business Analytics

## Project Overview

This project analyzes NYC Citi Bike trip data using SQL and Google BigQuery to understand customer behavior, identify ridership trends, and explore business opportunities.

The analysis compares subscribers and casual customers to identify differences in trip volume, riding duration, station preferences, and seasonal demand.

## Business Objective

The goal of this project is to use historical bike trip data to answer business questions that could help Citi Bike improve bike distribution, understand customer behavior, and develop customer engagement strategies.

## Tools & Technologies

- SQL
- Google BigQuery
- GitHub

## Dataset

**Source:** Google BigQuery Public Dataset

`bigquery-public-data.new_york.citibike_trips`

The dataset contains Citi Bike trip records, including information such as:

- User type
- Trip start and end times
- Starting and ending stations
- Trip duration

## Business Questions & SQL Analysis

This project includes 10 SQL queries:

| # | Business Question | SQL File |
|---|---|---|
| 01 | What information is available in the dataset? | [Dataset Preview](sql/01_dataset_preview.sql) |
| 02 | Which starting stations generate the most trips? | [Busiest Stations](sql/02_busiest_stations.sql) |
| 03 | What hours have the most bike trips? | [Trips by Hour](sql/03_trips_by_hour.sql) |
| 04 | Are there more trips on weekdays or weekends? | [Weekday vs. Weekend](sql/04_weekday_vs_weekend.sql) |
| 05 | Which days of the week generate the most trips? | [Trips by Day](sql/05_trips_by_day.sql) |
| 06 | Do subscribers or casual customers take more trips? | [Customer Segmentation](sql/06_customer_segmentation.sql) |
| 07 | Which months generate the most trips? | [Trips by Month](sql/07_trips_by_month.sql) |
| 08 | Do subscribers or casual customers have longer average trips? | [Average Trip Duration](sql/08_avg_trip_duration_by_user_type.sql) |
| 09 | Which starting stations are most popular among each customer type? | [Popular Stations by User Type](sql/09_popular_stations_by_user_type.sql) |
| 10 | How do monthly riding patterns differ between customer types? | [Monthly Trips by User Type](sql/10_monthly_trips_by_user_type.sql) |

## Key Findings

### 1. Customer Segmentation

- Subscribers accounted for approximately **87.97%** of recorded trips.
- Casual customers accounted for approximately **12.03%**.

This shows that subscribers generated the majority of recorded trip volume.

### 2. Average Trip Duration

Casual customers had a significantly longer average trip duration than subscribers.

| Customer Type | Average Trip Duration |
|---|---:|
| Casual Customers | 31.21 minutes |
| Subscribers | 13.43 minutes |

Casual customers averaged approximately 2.3 times longer per trip. This may indicate differences in riding behavior, such as recreational use, although trip purpose was not directly measured.

### 3. Weekday vs. Weekend Usage

Average daily trip volume was approximately 25.3% higher on weekdays than weekends.

This suggests that weekday demand may be especially important when planning bike availability and operational resources.

### 4. Daily Ridership Patterns

Wednesday recorded the highest total trip volume, with approximately **5.24 million trips**, while Sunday recorded the lowest, with approximately **3.94 million trips**.

### 5. Seasonal Demand

September recorded the highest overall monthly trip volume, with approximately **4.93 million trips**.

August and July followed, indicating higher recorded ridership during the summer and early fall months.

### 6. Station Preferences

The most popular starting stations differed between customer types:

- Casual customers: Central Park S & 6 Ave
- Subscribers: 8 Ave & W 31 St

West St & Chambers St appeared among the top 10 starting stations for both groups.

### 7. Monthly Customer Patterns

- Casual customer trip volume peaked in August.
- Subscriber trip volume peaked in September.
- Both groups showed increased activity during warmer months.

## Business Recommendations

Based on the patterns identified in this analysis, Citi Bike could consider:

1. **Improve bike distribution:** Prioritize bike availability at stations with consistently high trip volume.
2. **Explore casual customer conversion:** Test daily or multi-day pass promotions and membership incentives to encourage repeat usage.
3. **Plan for seasonal demand:** Consider additional bike availability and operational resources during peak summer and early fall months.
4. **Develop location-specific strategies:** Explore marketing opportunities near popular recreational destinations and high-demand stations.
5. **Optimize weekday operations:** Use weekday ridership patterns to help guide bike redistribution and maintenance planning.

These are potential strategies based on trip patterns, not proven revenue or customer-conversion outcomes.

## Limitations

- The analysis uses historical trip records and does not establish why customers chose particular stations or trip durations.
- Timestamps were not converted to the `America/New_York` time zone. Day-of-week and hourly results may differ from local New York time.
- Monthly and daily totals combine records across the available dataset period rather than comparing each year separately.
- Trip volume does not represent unique customers, revenue, or profitability.
- The dataset does not directly establish customer trip purpose, weather effects, population patterns, or station availability.

## Future Improvements

- Convert timestamps to New York local time for more accurate hourly and daily analysis.
- Compare ridership patterns year over year.
- Incorporate weather data to investigate seasonal demand.
- Analyze station availability and capacity to identify potential supply shortages.
- Explore pricing and revenue data to evaluate membership and promotional strategies.

## Project Summary

Through this project, I used SQL and Google BigQuery to explore a public transportation dataset, answer business questions, compare customer segments, and identify trends that could support operational and marketing decisions.

**Author:** Ajelet Salinas

**Tools:** SQL | Google BigQuery | GitHub

