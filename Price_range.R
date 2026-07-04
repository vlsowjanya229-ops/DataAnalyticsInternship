# Load libraries
library(ggplot2)

# Read the CSV file (note the space in file name)
data <- read.csv("C:/Users/Admin/Downloads/Dataset 1.csv")

# Make sure Price_range is treated as a factor (categorical)
data$Price_range <- as.factor(data$Price_range)

# Create the bar chart with count labels
p<-ggplot(data, aes(x = Price_range)) +
  geom_bar(fill = "skyblue", color = "black") +
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5) +
  labs(
    title = "Distribution of Restaurants by Price Range",
    x = "Price Range",
    y = "Number of Restaurants"
  ) +
  theme_minimal()
  print(p)

  # Load libraries
library(dplyr)
library(ggplot2)

# Read the CSV file
data <- read.csv("C:/Users/Admin/Downloads/Dataset 1.csv")

# Ensure Price_range is a factor
data$Price_range <- as.factor(data$Price_range)

# Calculate percentage of each price range
price_range_percent <- data %>%
  group_by(Price_range) %>%
  summarise(Count = n()) %>%
  mutate(Percentage = round(Count / sum(Count) * 100, 2))

# Print the result
print(price_range_percent)
