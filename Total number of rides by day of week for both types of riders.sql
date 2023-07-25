--Calculating total number of rides by day of week for both types of riders 

SELECT rider_type,
    CASE DATEPART(WEEKDAY, started_at_new)
        WHEN 1 THEN 'Sunday'
        WHEN 2 THEN 'Monday'
        WHEN 3 THEN 'Tuesday'
        WHEN 4 THEN 'Wednesday'
        WHEN 5 THEN 'Thursday'
        WHEN 6 THEN 'Friday'
        WHEN 7 THEN 'Saturday'
    END AS day_of_week,
    COUNT(*) AS total_rides
FROM Bike_Share_Project.dbo.full_year
GROUP BY DATEPART(WEEKDAY, started_at_new), rider_type
ORDER BY DATEPART(WEEKDAY, started_at_new)

Note: The CASE statement is used to transform the numeric value of the day of the week(1 for Sunday, 7 for Saturday) into 
a corresponding string representation(SUnday, Monday,etc). The DATEPART (WEEKDAY, started_at _new) function returns the numeric representation 
of the day of the week for the started_at_new column, which likely contains the date and time when the bike ride started. The result 
of this CASE statement will be an additional column named "day_of_week".
