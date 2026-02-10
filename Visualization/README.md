# Cyclistic Bike-Share: Visual Analysis Report

This folder contains key visualizations derived from the analysis of **5,438,444 high-integrity observations**. The goal of these visuals is to identify behavioral differences between **casual riders** and **annual members** to drive membership conversions.

---

### 1. Total Rides by Season
* **Purpose:** Identify seasonal volume shifts to target marketing spend.
* **Insight:** Summer is the dominant season for casual rider growth, showing a massive opportunity for seasonal membership bundles during peak leisure months.
* **File:** `01_total_rides_by_season.png`

### 2. Ride Patterns by Time of Day & Season
* **Purpose:** Analyze hourly demand across different seasons to refine tactical operations.
* **Insight:** Casual riders are most active during Summer afternoons and evenings (leisure use), while members maintain steady morning and evening commute hours year-round.
* **File:** `02_ride_patterns_time_of_day_faceted.png`

### 3. Average Trip Duration Comparison
* **Purpose:** Compare trip length to determine the relative "leisure value" of each segment.
* **Insight:** Casual riders stay on bikes for **~22 minutes**, nearly double the **~12 minutes** of annual members, representing a high-engagement segment for conversion to annual plans.
* **File:** `03_avg_trip_duration_comparison.png`

### 4. Monthly Ride Trends: Seasonal Growth
* **Purpose:** Pinpoint the exact months where ridership momentum begins.
* **Insight:** Rapid growth in casual ridership begins in **March** and peaks in **August**, suggesting a prime window for early-season marketing campaigns.
* **File:** `04_monthly_ride_trends_line.png`

### 5. Preference of Bike Types
* **Purpose:** Determine equipment preferences to tailor inclusive fleet offerings.
* **Insight:** Both segments show a strong preference for electric bikes, but casual riders utilize them more heavily for leisure compared to the member commute segment.
* **File:** `05_bike_type_preference.png`

---

## Technical Methodology for Placements
These visuals were generated in R using `ggplot2` after a multi-stage data engineering pipeline:

* **Cloud Integration:** Connected to Google BigQuery to pull 5.59M rows of raw data.
* **RAM Optimization:** Dropped 6 high-cardinality coordinate and ID columns to reduce the memory footprint by ~1.5 GiB.
* **Integrity Fixes:** Handled missing station names for electric bikes to preserve data volume.
* **Aggregation:** Engineered features for seasons and time-of-day, resulting in an optimized **8,060-row summary** for high-performance Tableau reporting.
