# LOGIC: Cloud Integration. Connects directly to BigQuery to avoid 
# heavy local CSV downloads and enable scalable analysis.

library(bigrquery)
library(DBI)

# This pulls the hidden ID from your .Renviron file
project_id <- Sys.getenv("BQ_PROJECT_ID")

# 1. Establish the Cloud Connection
con <- dbConnect(
  bigrquery::bigquery(),
  project = project_id,
  dataset = "cyclistic_data",
  billing = project_id
)

# 2. Pull a sample for our initial analysis
# We use the corrected table name we found: combined_2025_full_year
df_sample <- dbGetQuery(con, "SELECT * FROM `inner-legacy-485410-s8.cyclistic_data.combined_2025_full_year` ")
# 3. View the data in RStudio's beautiful spreadsheet viewer
View(df_sample)
