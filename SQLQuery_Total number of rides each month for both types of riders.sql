--Total number of rides each month for both types of riders

SELECT 
    DATENAME(MONTH, started_at_new) AS month,
    rider_type,
    COUNT(*) AS total_rides
FROM Bike_Share_Project.dbo.full_year
GROUP BY DATENAME(MONTH, started_at_new), rider_type
ORDER BY MONTH