--Total number of rides for whole year given in percentages for both rider types

SELECT rider_type,
      COUNT(*) AS Total_rides,
      CAST(ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS DECIMAL(10, 2)) AS Percentage
      FROM Bike_Share_Project.dbo.full_year
      GROUP BY rider_type
