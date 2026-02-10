# Cyclistic Bike-Share: Cloud-Scale Behavior Analysis & Growth Strategy

## Executive Summary
This project delivers a professional-grade analytical pipeline for **5,590,832 rows** of historical bike-share data. By utilizing **Google BigQuery** for cloud-scale processing and **R (tidyverse)** for statistical modeling, I identified a **2x leisure duration gap** between casual riders and members. The final strategy highlights a **$13.2M revenue opportunity** through targeted seasonal membership conversion.

## Technical Stack

* **Cloud Data Warehouse:** Google BigQuery (SQL)
* **Language:** R (v4.5.2)
* **Key Libraries:** * `tidyverse` (Data Wrangling & Transformation)
    * `lubridate` (Time-Series Engineering)
    * `ggplot2` (Statistical Visualizations)
    * `bigrquery` (Cloud API Integration)
* **Business Intelligence:** Tableau Desktop Public Edition


**Technical Moat:**
* **BigQuery & GCS Architecture:** Engineered a cloud-native pipeline to process **5.5M+ rows**, bypassing local hardware limitations.
* **Data Integrity:** Resolved missing station metadata for electric bikes by identifying "On-Street Lock" patterns, preserving dataset volume where standard cleaning would have resulted in a 15% data loss.
* **Business Intelligence:** Translated raw ride-length variance into a Financial Impact Model, projecting **$13.2M in recurring annual revenue** through a targeted 5% conversion strategy.

---

## Tools & Technologies
* **Google BigQuery:** SQL-based cleaning and large-scale cloud data processing.
* **RStudio (R):** Deep-dive statistical analysis, mean-variance testing, and distribution modeling.
* **Tableau Public:** Optimized for executive storytelling and financial impact visualization.
* **Google Cloud Storage (GCS):** High-speed "Staging Area" for cloud-to-cloud data ingestion.

---

## Data Engineering & Pipeline Architecture
* **Ingestion:** Bypassed 1GB browser upload limits by engineering a GCS-to-BigQuery transfer for 12 months of historical trip data.
* **Processing:** Leveraged BigQuery SQL for high-speed cleaning, removing "maintenance" ghost rides and engineering temporal variables (`ride_length`, `day_of_week`).
* **Statistical Deep-Dive:** Integrated **R (tidyverse)** to perform behavioral distribution analysis between user segments.

---

## Key Behavioral Insights
* **The Commuter Baseline:** Annual members exhibit high-frequency, low-duration trips concentrated during weekday peak hours (8 AM / 5 PM).
* **The Weekend Engagement Gap:** Casual ridership peaks on weekends with **2x higher average ride duration** compared to members. This identifies a high-value leisure segment currently paying a "convenience premium".
* **Seasonality (The Conversion Window):** A massive ridership surge begins in **March (Q2)**, representing the optimal "Marketing Strike Zone" for conversion.

---

## Strategic Financial Modeling
To quantify the "Engagement Gap," I developed a revenue projection model targeting a **5% conversion** of the high-intent Casual segment:
* **Revenue Opportunity:** Estimated **$13.2M in Recurring Annual Revenue (ARR)**.
* **LTV Optimization:** Anticipated **20-25% increase in Customer Lifetime Value** by stabilizing leisure-segment cash flow.

---

## 2026 Strategic Growth Roadmap
* **Phase 1: Q2 Seasonal Strike (March - May):** Deploy targeted digital campaigns at high-volume "Casual" start stations to capture riders during the spring ridership inflection point.
* **Phase 2: The "Weekend Flex" Membership:** Launch a specialized weekend-only tier to monetize the **2x duration gap** identified in leisure riders, converting volatile one-time fees into predictable ARR.
* **Phase 3: Automated Value-Triggers:** Implement app notifications for riders exceeding 20 minutes (the "Value Gap"), highlighting cost-savings of annual membership in real-time.

---

## 📊 Interactive Dashboard
Access the full behavioral analysis and financial projections here:
**[Cyclistic Strategic Growth Dashboard](https://public.tableau.com/app/profile/arya.gupta2072/viz/CyclisticCaseStudyData-DrivenMembershipConversionStrategy/Dashboard1)**

## 💡 Strategic Recommendations
Based on the **$13.2M revenue opportunity** identified, the following actions are recommended:

* **Seasonal "Summer Pass":** Launch a high-intensity marketing campaign between March and August to capture the 2x leisure duration segment.
* **Electric Bike Incentives:** Leverage the high casual preference for electric bikes by offering "Member-Only" priority access during peak weekend hours.
* **Commuter Conversion:** Target casual riders active during the "Morning/Evening Pulse" with personalized membership trials to bridge the gap between leisure and commuting.

---
*Developed as part of the Google Data Analytics Professional Certificate Capstone.*
