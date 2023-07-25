--Total number of rides for whole year given in percentages for both rider types

SELECT rider_type,
      COUNT(*) AS Total_rides,
      CAST(ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS DECIMAL(10, 2)) AS Percentage
      FROM Bike_Share_Project.dbo.full_year
      GROUP BY rider_type


Note: We could complete this query without using CAST function. However, the result was given with extra zeroes in percentage column.
      To remove extra zeroes, we use CAST function to cast the result of the ROUND function to DECIMAL (10, 2). The DECIMAL (10, 2) means that there will be a maximum of 10 digits with 2 of them representing decimal places
