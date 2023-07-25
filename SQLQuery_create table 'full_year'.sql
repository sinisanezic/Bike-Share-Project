-- Creating table full_year

CREATE TABLE full_year (
ride_id nvarchar(50),
rideable_type nvarchar(50),
rider_type nvarchar(50),
day_of_week tinyint,
started_at_new varchar(19),
ended_at_new varchar(19), 
ride_length_new time(0),
)

--Combining all 12 tables into one called "full_year"

INSERT INTO full_year (ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new)
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_jan
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_feb
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_mar
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_apr
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_may
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_jun
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_jul
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_aug
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_sep
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_oct
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_nov
UNION ALL
SELECT ride_id, rideable_type, rider_type, day_of_week, started_at_new, ended_at_new, ride_length_new
FROM Bike_Share_Project.dbo.bike_data_dec



