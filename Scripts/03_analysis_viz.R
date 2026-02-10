library(ggplot2)
library(tidyverse)
library(lubridate)

# 1. SEASONAL TRENDS (The Andrew Play)
# Proves which season has the highest 'Casual' conversion potential.
ggplot(data = cyclistic_final) +
  geom_bar(mapping = aes(x = season, fill = member_casual), position = "dodge") +
  labs(title = "Total Rides by Season: Member vs Casual",
       subtitle = "Analysis of 5.5 Million+ Rides",
       x = "Season",
       y = "Number of Rides",
       fill = "User Type") +
  theme_minimal()

# 2. TIME OF DAY ANALYSIS (The Behavioral Deep-Dive)
# Shows if Casual riders are leisure users (Afternoon/Evening) vs. Members (Morning Commutes).
ggplot(data = cyclistic_final) +
  geom_bar(mapping = aes(x = time_of_day, fill = member_casual), position = "dodge") +
  facet_wrap(~season) +
  labs(title = "Ride Patterns by Time of Day & Season",
       x = "Time of Day",
       y = "Total Rides") +
  theme_light() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))

# 3. AVERAGE TRIP DURATION (The High-Value Metric)
# This proves Casual riders spend nearly double the time on bikes.
cyclistic_final %>% 
  group_by(member_casual) %>% 
  summarise(avg_ride = mean(ride_length_mins), .groups = "drop") %>% 
  ggplot(aes(x = member_casual, y = avg_ride, fill = member_casual)) +
  geom_col() +
  labs(title = "Average Ride Duration (Minutes)",
       y = "Average Minutes",
       x = "User Type") +
  theme_minimal()

# 4. Total Rides by Month (The Growth Trend)
cyclistic_final %>% 
  group_by(month, member_casual) %>% 
  summarise(number_of_rides = n(), .groups = "drop") %>% 
  ggplot(aes(x = month, y = number_of_rides, group = member_casual, color = member_casual)) +
  geom_line(linewidth = 1) + 
  geom_point() +
  labs(title = "Monthly Ride Trends: Seasonal Growth",
       x = "Month",
       y = "Total Rides") +
  theme_classic()

# 5. Total Rides by Bike Type (Preference Analysis)
# Identifies if Electric Bikes are helping conversion.
ggplot(data = cyclistic_final) +
  geom_bar(mapping = aes(x = rideable_type, fill = member_casual), position = "dodge") +
  labs(title = "Preference of Bike Types: Members vs Casual",
       x = "Type of Bike",
       y = "Number of Rides",
       fill = "User Type") +
  theme_minimal()

# --- TABLEAU EXPORT PHASE (The Data Engineering Play) ---
# Compresses 3.7 GiB of data into a high-performance summary CSV.
tableau_summary <- cyclistic_final %>%
  group_by(member_casual, rideable_type, hour, day_of_week, month, season, time_of_day) %>%
  summarise(
    total_rides = n(),
    avg_duration_mins = mean(ride_length_mins, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  ungroup()

# Write the CSV to your local project folder
write.csv(tableau_summary, "Cyclistic_Tableau_Summary.csv", row.names = FALSE)
