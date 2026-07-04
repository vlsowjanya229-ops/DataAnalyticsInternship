# Load the data
data <- read.csv("C:/Users/Admin/Downloads/Dataset 1.csv")

# Histogram of Aggregate Ratings
hist(data$Aggregate_rating,
     breaks = seq(0, 5, by = 0.5),
     col = "skyblue",
     main = "Distribution of Aggregate Ratings",
     xlab = "Aggregate Rating",
     ylab = "Number of Restaurants")

# Optional: Add rug plot for density insight
rug(data$Aggregate_rating)

# Find most common rating (mode)
most_common_rating <- as.numeric(names(sort(table(data$Aggregate_rating), decreasing = TRUE)[1]))

cat(" Most common aggregate rating is:", most_common_rating, "\n")
# Average number of votes per restaurant
average_votes <- mean(data$Votes, na.rm = TRUE)

cat(" Average number of votes per restaurant:", round(average_votes, 2), "\n")
