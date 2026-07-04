# Load the CSV using absolute path
data <- read.csv("C:/Users/Admin/Downloads/Dataset 1.csv")

#  Calculate the percentage of restaurants that offer online delivery
total_restaurants <- nrow(data)
online_delivery_count <- sum(data$Has_Online_delivery == 1, na.rm = TRUE)

percentage_online_delivery <- (online_delivery_count / total_restaurants) * 100

cat(" Percentage of restaurants offering online delivery:", 
    round(percentage_online_delivery, 2), "%\n\n")

#  Compare average ratings: with and without online delivery
avg_rating_online <- mean(data$Aggregate_rating[data$Has_Online_delivery == 1], na.rm = TRUE)
avg_rating_no_online <- mean(data$Aggregate_rating[data$Has_Online_delivery == 0], na.rm = TRUE)

cat(" Average rating (Online Delivery):", round(avg_rating_online, 2), "\n")
cat(" Average rating (No Online Delivery):", round(avg_rating_no_online, 2), "\n")
