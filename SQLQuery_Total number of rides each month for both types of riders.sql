--Total number of rides each month for both types of riders

SELECT 
    DATENAME(MONTH, started_at_new) AS month,
    rider_type,
    COUNT(*) AS total_rides
FROM Bike_Share_Project.dbo.full_year
GROUP BY DATENAME(MONTH, started_at_new), rider_type
ORDER BY MONTH

Note: In this query, we are using the DATENAME function with the MONTH parameter to get the month names from the started_at_new column.
This function will return the month name corresponding to the date in the started_at_new column. 
