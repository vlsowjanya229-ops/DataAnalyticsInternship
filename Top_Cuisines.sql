CREATE TABLE restauranttable (

    Restaurant_ID BIGINT,
    Country_Code INT,
    Longitude DECIMAL(10,7),
    Latitude DECIMAL(10,7),
    Average_Cost_for_two INT,
    Has_Table_booking TINYINT,
    Has_Online_delivery TINYINT,
    Is_delivering_now TINYINT,
    Switch_to_order_menu TINYINT,
    Price_range TINYINT,
    Aggregate_rating DECIMAL(3,2),
    Rating_color VARCHAR(20),
    Rating_text VARCHAR(20),
    Votes INT,
    Restaurant_name VARCHAR(100),
    City VARCHAR(100),
    Address VARCHAR(255),
    Locality VARCHAR(150),
    Locality_verbose VARCHAR(200),
    Cuisines VARCHAR(100),
    Currency VARCHAR(50)
);


SELECT Cuisines, COUNT(*) AS Cuisine_Count
FROM restauranttable
GROUP BY Cuisines
ORDER BY Cuisine_Count DESC
LIMIT 3;



SELECT Cuisines,COUNT(DISTINCT Restaurant_ID) AS restaurant_count,
ROUND(COUNT(DISTINCT restaurant_id) * 100.0 / (SELECT COUNT(DISTINCT restaurant_id) FROM  restauranttable), 2 ) AS percentage
FROM  restauranttable
GROUP BY Cuisines
ORDER BY restaurant_count DESC
LIMIT 3;






















