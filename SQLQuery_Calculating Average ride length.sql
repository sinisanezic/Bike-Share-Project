--Calculating average ride length for the whole year

SELECT
    rider_type AS RiderType,
    AVG(DATEDIFF(minute, started_at_new, ended_at_new)) AS average_ride_legth
FROM
   Bike_Share_Project.dbo.full_year
WHERE
    rider_type IN ('Casual', 'Member')
GROUP BY
    rider_type

Note: In this query the "DATEDIFF" function is used to calculate the difference between started_at_new and ended_at_new timestamps in minutes.
    The AVG function is then applied to calculate the average duration for each distinct rider type.
    The result set will include two raws , one for each rider type, along with their corresponding average ride duartions in minutes.
