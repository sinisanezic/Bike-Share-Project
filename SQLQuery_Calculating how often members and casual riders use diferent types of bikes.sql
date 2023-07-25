--Calculating which type of bike casual riders and members prefer the most.

SELECT
    rider_type AS RiderType,
    CASE
        WHEN rideable_type = 'electric_bike' THEN 'Electric'
        WHEN rideable_type = 'classic_bike' THEN 'Classic'
        WHEN rideable_type = 'docked_bike' THEN 'Docked'
        ELSE rideable_type
    END AS BikeType,
    COUNT(*) AS Total_rides,
    CAST(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY rider_type) AS DECIMAL(5, 2)) AS Percentage_of_usage
FROM
   Bike_Share_Project.dbo.full_year
WHERE
    rider_type IN ('Casual', 'Member') AND
    rideable_type IN ('electric_bike', 'classic_bike', 'docked_bike')
GROUP BY
    rider_type, rideable_type


Note: CAST(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY rider_type) AS DECIMAL(5, 2)) AS Percentage_of_usage; 
This query calculates the percentage of each group's count (defined by rider type) relative to the total count of that rider type.
The percentage is rounded to two decimal places.
