
# Load data
data <- read.csv("C:/Users/Admin/Downloads/Dataset 1.csv", stringsAsFactors = FALSE)

# Get most common cuisine combinations
cuisine_freq <- sort(table(data$Cuisines), decreasing = TRUE)

# Show top 10 most common combinations
cat(" Top 10 most common cuisine combinations:\n")
print(head(cuisine_freq, 10))
# Group by cuisine combination and calculate average rating
library(dplyr)
rating_by_cuisine <- data %>%
group_by(Cuisines) %>%
summarise(count = n(), avg_rating = mean(Aggregate_rating, na.rm = TRUE) ) %>%
arrange(desc(avg_rating))

# View top combinations by average rating 
top_cuisines <- rating_by_cuisine %>%
  filter(count >= 5) %>%
  arrange(desc(avg_rating))

cat(" Cuisine combinations with highest average ratings (min 5 restaurants):\n")
print(head(top_cuisines, 10))
