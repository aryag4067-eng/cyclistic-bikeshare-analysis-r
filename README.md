# cyclistic-bikeshare-analysis-r
A professional-grade data pipeline and exploratory analysis of 12 months of Cyclistic bike-share data. This project leverages Google BigQuery for large-scale data processing and R (tidyverse) for deep-dive statistical analysis and visualization to identify key behavioral differences between casual riders and annual members.

### 🚲 Cyclistic Bike-Share: Cloud-Integrated Analysis

A Professional-Grade Data Pipeline & Exploratory Analysis

### 📌 Project Overview

This project analyzes 12 months of Cyclistic bike-share data to identify key behavioral differences between casual riders and annual members. Unlike standard local analyses, this project utilizes a scalable cloud-to-IDE pipeline.

### 🛠️ Technical Stack

Storage: Google BigQuery (Cloud Data Warehouse)

Language: R (tidyverse, DBI, bigrquery)

Environment: RStudio IDE

Security: Environment variables (.Renviron) for credential masking

### 🛠️ Workflow & Authentication

I established a secure, cloud-integrated pipeline to handle large-scale datasets efficiently.

Secure Cloud Connection: I used OAuth 2.0 to authenticate with Google BigQuery, ensuring a secure handshake between my local IDE and the cloud warehouse. ![BigQuery Auth Proof](Screenshot 2026-02-02 204812.png)

Automated Token Refresh: The pipeline handles stale tokens automatically, allowing for uninterrupted analysis of 12 months of trip data. ![Token Refresh Proof](Screenshot 2026-02-02 204835.png)

Schema & Table Verification: Confirmed successful connection to the cyclistic_data dataset and the consolidated 2025 table. ![Dataset Verification](Screenshot 2026-02-02 204851.png)

Data Sampling: Initial pulls were limited to test the cleaning logic (Step 02) and visualization logic (Step 03) before scaling to the full dataset. ![Data Sampling Proof](Screenshot 2026-02-02 204753.png)


### 🏗️ Data Pipeline Architecture

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

