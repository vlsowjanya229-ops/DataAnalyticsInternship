
SELECT City,COUNT(DISTINCT Restaurant_ID) AS restaurant_count
FROM restauranttable
GROUP BY City
ORDER BY restaurant_count DESC
LIMIT 1;

SELECT City,AVG(Aggregate_rating) AS average_rating
FROM (SELECT DISTINCT Restaurant_ID, City, Aggregate_rating
FROM restauranttable
WHERE Aggregate_rating != 0
) AS unique_restaurants
GROUP BY City
ORDER BY average_rating DESC;

SELECT City,AVG(Aggregate_rating) AS average_rating
FROM (SELECT DISTINCT Restaurant_ID, City, Aggregate_rating
FROM restauranttable
WHERE Aggregate_rating != 0
) AS unique_restaurants
GROUP BY City
ORDER BY average_rating DESC
LIMIT 1;




