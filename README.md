# Cyclistic Bike-Share Analysis: Membership Conversion Strategy
### Google Data Analytics Professional Certificate Capstone

## Analyst Persona & Role
* **Role**: Junior Data Analyst (Marketing Analytics Team).
* **Project Type**: Large-scale exploratory data analysis of 5.5M+ records.
* **Objective**: Act as a Business Strategist to identify behavioral differences between annual members and casual riders to drive long-term membership growth.

---

## Tools & Technologies
* **Google BigQuery**: SQL-based cleaning and large-scale data processing.
* **RStudio (R)**: Primary environment for deep-dive statistical analysis and professional visualizations.
* **Tableau Public**: [https://public.tableau.com/app/profile/arya.gupta4856/viz/CyclisticCaseStudyData-DrivenMembershipConversionStrategy/Dashboard1?publish=yes] - Optimized for executive storytelling.
* **Google Cloud Storage (GCS)**: Leveraged as a "Staging Area" for high-speed cloud-to-cloud data ingestion.

---

## Challenges & "Smart Work" Solutions
* **Challenge: Browser Ingestion Limits**: Direct local uploads to BigQuery were capped. I bypassed these limits by engineering a **Cloud-to-Cloud transfer** (GCS to BigQuery).
* **Challenge: Data Integrity Gaps**: Identified missing station names for electric bike trips. Instead of biased deletion, I maintained the 5.5M+ row count by recognizing these as "On-Street Locks."

---

## The Data Analysis Process

### 1. Ask
* **Business Task**: Design marketing strategies to convert casual riders into annual members.

### 2. Prepare
* **Data Source**: 12 months of Cyclistic’s historical trip data (2025).
* **Credibility**: Verified as ROCCC (Reliable, Original, Comprehensive, Current, and Cited).

### 3. Process
* **Cleaning Documentation**: Documented the removal of "ghost rides" (<1 minute) and maintenance entries.
* **Transformation**: Calculated `ride_length` and `day_of_week` variables.

### 4. Analyze & Share
* **The Commuter Pattern**: Annual members peak during weekday rush hours (commuting).
* **The Summer Surge**: Casual ridership spikes dramatically from March through August.
* **The Engagement Gap**: Casual riders stay on bikes nearly 2x longer than annual members on average.

### 5. Act (Top 3 Recommendations)
1. **Seasonal Conversion Campaign**: Launch targeted marketing in Q2 (Spring) to capture casual riders before their peak Summer usage.
2. **Weekend-Specific Membership**: Introduce a "Weekend Member" tier to convert leisure users identified in the weekend peaks.
3. **Leisure Branding**: Highlight the cost-effectiveness of annual memberships for the long-duration rides favored by casual users

### Professional Summary
This project demonstrates the ability to move through the full data lifecycle, from handling "dirty" data and cloud ingestion limits to delivering actionable business advice. 
