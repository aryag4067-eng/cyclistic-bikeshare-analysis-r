# cyclistic-bikeshare-analysis-r
A professional-grade data pipeline and exploratory analysis of 12 months of Cyclistic bike-share data. This project leverages Google BigQuery for large-scale data processing and R (tidyverse) for deep-dive statistical analysis and visualization to identify key behavioral differences between casual riders and annual members.

🚲 Cyclistic Bike-Share: Cloud-Integrated Analysis
A Professional-Grade Data Pipeline & Exploratory Analysis

📌 Project Overview
This project analyzes 12 months of Cyclistic bike-share data to identify key behavioral differences between casual riders and annual members. Unlike standard local analyses, this project utilizes a scalable cloud-to-IDE pipeline.

🛠️ Technical Stack
Storage: Google BigQuery (Cloud Data Warehouse)
Language: R (tidyverse, DBI, bigrquery)
Environment: RStudio IDE
Security: Environment variables (.Renviron) for credential masking

🏗️ Data Pipeline Architecture
Cloud Hosting: Raw trip data is stored in Google BigQuery datasets.
Secure Connection: Established a DBI-compliant bridge to R using OAuth 2.0 authentication.
Environment Masking: Project IDs and sensitive cloud details are handled via local environment variables to ensure repository security.

### 📥 Data Ingestion Phase

Source: 12 months of raw Cyclistic trip data (CSV format).
Transformation: Manual schema definition was applied to ensure data integrity, specifically converting date strings into DATETIME formats and ensuring consistent naming conventions across all 12 tables.
Storage: Ingested the cleaned CSVs into Google BigQuery to create a centralized data warehouse, enabling SQL-based processing that far exceeds the performance limits of local Excel or basic R data frames.
Processing: High-volume data (800MB+) is sampled and processed directly within R.

📂 Repository Structure
01_bigquery_connection.R: Script for cloud authentication and data ingestion.

.gitignore: Configured to exclude sensitive .Renviron and local workspace files.

