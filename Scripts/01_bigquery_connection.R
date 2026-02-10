library(bigrquery)
library(DBI)

project_id <- Sys.getenv("BQ_PROJECT_ID")

bigrquery::bq_auth(email = "aryag4067@gmail.com", cache = FALSE)

con <- dbConnect(
  bigrquery::bigquery(),
  project = project_id,
  dataset = "cyclistic_data",
  billing = project_id
)

# 2. Pull FULL DATA (No LIMIT, No Sampling)
# Note: Ensure your PC has enough RAM for 5.5M rows (~1-2GB)
df_sample <- dbGetQuery(con, "SELECT * FROM `inner-legacy-485410-s8.cyclistic_data.combined_2025_full_year`")

# 3. VERIFY IMMEDIATELY
print(paste("Total Rows Pulled:", nrow(df_sample)))
