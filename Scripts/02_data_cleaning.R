library(dplyr)

# 1. Remove irrelevant columns (The Andrew Strategy)
# Dropping station IDs and coordinates to save RAM
df_sample <- df_sample %>%
  select(-c(start_lat, start_lng, end_lat, end_lng, start_station_id, end_station_id, end_station_name))

# SMART WORK: Clear the ghost memory
gc()

# 2. Calculate Ride Length in Minutes
df_sample$ride_length_mins <- as.numeric(difftime(df_sample$ended_at, df_sample$started_at, units = "mins"))

# --- START OF INTEGRITY FIX ---
# Apply this BEFORE Step 3 (na.omit) to save the electric bike data
df_sample <- df_sample %>% 
  mutate(start_station_name = ifelse(is.na(start_station_name) & rideable_type == "electric_bike", 
                                     "On-Street Lock", start_station_name))
# --- END OF INTEGRITY FIX ---

# 3. Create the Cleaned Dataset (The 8.25 CGPA Standard)
# Removes rides < 1 min, > 24 hours, NAs, and Duplicates
cyclistic_cleaned <- df_sample %>% 
  filter(ride_length_mins > 1 & ride_length_mins < 1440) %>%
  na.omit() %>%
  distinct()

# 4. Verification
print(paste("Cleaned rows available for analysis:", nrow(cyclistic_cleaned)))

library(lubridate)
# 5. Categorize Seasons
cyclistic_final <- cyclistic_cleaned %>%
  mutate(month = month(started_at, label = TRUE)) %>%
  mutate(season = case_when(
    month %in% c("Mar", "Apr", "May") ~ "Spring",
    month %in% c("Jun", "Jul", "Aug") ~ "Summer",
    month %in% c("Sep", "Oct", "Nov") ~ "Fall",
    TRUE ~ "Winter"
  ))

# 6. Categorize Time of Day
cyclistic_final <- cyclistic_final %>%
  mutate(hour = hour(started_at)) %>%
  mutate(time_of_day = case_when(
    hour >= 6 & hour < 12 ~ "Morning",
    hour >= 12 & hour < 17 ~ "Afternoon",
    hour >= 17 & hour < 21 ~ "Evening",
    TRUE ~ "Night"
  ))

# 6.5 Add Day of Week
cyclistic_final <- cyclistic_final %>%
  mutate(day_of_week = wday(started_at, label = TRUE, abbr = FALSE))
