# 1. Calculate Ride Length in Minutes
# (Smart Work: Using minutes is easier for recruiters to visualize than seconds)
df_sample$ride_length_mins <- as.numeric(difftime(df_sample$ended_at, df_sample$started_at, units = "mins"))

# 2. Find the "Ghost Rides" (Under 1 minute or over 24 hours)
# These are usually system tests or stolen/lost bikes.
ghost_rides <- df_sample %>%
  filter(ride_length_mins <= 1 | ride_length_mins >= 1440)

# 3. See the damage
print(paste("Number of Ghost Rides found in sample:", nrow(ghost_rides)))

# 4. View a few of them to see if there is a pattern
head(ghost_rides)
