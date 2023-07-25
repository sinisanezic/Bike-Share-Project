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