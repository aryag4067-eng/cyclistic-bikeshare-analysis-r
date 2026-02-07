library(ggplot2)
library(tidyverse)

# 1. SEASONAL TRENDS (The Andrew Play)
# This identifies which season offers the biggest opportunity for conversions.
ggplot(data = cyclistic_final) +
  geom_bar(mapping = aes(x = season, fill = member_casual), position = "dodge") +
  labs(title = "Total Rides by Season: Member vs Casual",
       subtitle = "Analysis of 5.5 Million+ Rides",
       x = "Season",
       y = "Number of Rides",
       fill = "User Type") +
  theme_minimal()

# 2. TIME OF DAY ANALYSIS
# Do casual riders bike more at night or in the afternoon?
ggplot(data = cyclistic_final) +
  geom_bar(mapping = aes(x = time_of_day, fill = member_casual), position = "dodge") +
  facet_wrap(~season) +
  labs(title = "Ride Patterns by Time of Day & Season",
       x = "Time of Day",
       y = "Total Rides") +
  theme_light() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))

# 3. AVERAGE TRIP DURATION
# Casual riders usually have much longer average ride times.
cyclistic_final %>% 
  group_by(member_casual) %>% 
  summarise(avg_ride = mean(ride_length_mins)) %>% 
  ggplot(aes(x = member_casual, y = avg_ride, fill = member_casual)) +
  geom_col() +
  labs(title = "Average Ride Duration (Minutes)",
       y = "Average Minutes",
       x = "User Type")

# 4. Total Rides by Bike Type (Member vs Casual)
ggplot(data = cyclistic_final) +
  geom_bar(mapping = aes(x = rideable_type, fill = member_casual), position = "dodge") +
  labs(title = "Preference of Bike Types", x = "Bike Type", fill = "User Type")

# 5. Total Rides by Month (Line Chart for Trends)
cyclistic_final %>% 
  group_by(month, member_casual) %>% 
  summarise(number_of_rides = n()) %>% 
  ggplot(aes(x = month, y = number_of_rides, group = member_casual, color = member_casual)) +
  geom_line() + geom_point() +
  labs(title = "Monthly Ride Trends", x = "Month", y = "Total Rides")


# 6. Total Rides by Bike Type (Preference Analysis)
# This helps identify if certain bikes are more popular for leisure vs commuting[cite: 28, 30].
ggplot(data = cyclistic_final) +
  geom_bar(mapping = aes(x = rideable_type, fill = member_casual), position = "dodge") +
  labs(title = "Preference of Bike Types: Members vs Casual",
       x = "Type of Bike",
       y = "Number of Rides",
       fill = "User Type") +
  theme_minimal()

# 7. Monthly Ride Trends (Line Chart)
# Shows the exact months where casual ridership peaks, usually in Summer[cite: 161].
cyclistic_final %>% 
  group_by(month, member_casual) %>% 
  summarise(number_of_rides = n()) %>% 
  ggplot(aes(x = month, y = number_of_rides, group = member_casual, color = member_casual)) +
  geom_line(size = 1) + 
  geom_point() +
  labs(title = "Monthly Ride Trends: Seasonal Growth",
       x = "Month",
       y = "Total Rides",
       color = "User Type") +
  theme_classic()
