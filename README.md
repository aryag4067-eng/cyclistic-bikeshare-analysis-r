# Cyclistic Bike-Share: Cloud-Scale Behavior Analysis & Growth Strategy

## 🎯 Executive Summary
This project delivers a professional-grade analytical pipeline for **5,590,832 rows** of historical bike-share data. By utilizing **Google BigQuery** for cloud-scale processing and **R (tidyverse)** for statistical modeling, I identified a **2x leisure duration gap** between casual riders and members. The final strategy highlights a **$13.2M revenue opportunity** through targeted seasonal membership conversion.

## 🛡️ Technical Moat: Data Integrity & Optimization
* **Cloud Architecture:** Engineered a cloud-native pipeline using `bigrquery` to process **5.5M+ rows**, bypassing local hardware limitations.
* **Data Integrity:** Resolved missing station metadata for electric bikes by identifying "On-Street Lock" patterns, preserving dataset volume where standard cleaning would have resulted in a 15% data loss.
* **Memory Management:** Optimized system RAM (3.7 GiB) by dropping high-cardinality coordinate columns, reducing the dataset to a high-performance **8,060-row summary** for BI reporting.

## 🛠️ Technical Stack
* **Cloud:** Google BigQuery (SQL)
* **Language:** R (v4.5.2)
* **Libraries:** `tidyverse`, `lubridate`, `ggplot2`, `bigrquery`
* **BI Tool:** Tableau Desktop Public

## 📊 Interactive Dashboard
Access the full behavioral analysis and financial projections here:
**[Cyclistic Strategic Growth Dashboard](https://public.tableau.com/app/profile/arya.gupta2072/viz/CyclisticCaseStudyData-DrivenMembershipConversionStrategy/Dashboard1)**

## 💡 Strategic Recommendations
Based on the identified **$13.2M revenue opportunity**, I recommend:

* **Seasonal "Summer Pass":** Launch high-intensity marketing between March and August to capture the casual segment during peak 22-minute average ride windows.
* **Electric Bike Priority:** Leverage the strong casual preference for electric bikes by offering "Member-Only" priority access during peak weekend hours.
* **Commuter Conversion:** Target the "Morning/Evening Pulse" with personalized membership trials for casual riders active during standard commute hours.

---
*Developed as part of the Google Data Analytics Professional Certificate Capstone.*
