Google Data Analytics Capstone Project: How Does a Bike Share Navigate Speedy Success (Case Study)

Statement of business task: Conduct a comprehensive analysis and comparative assessment of the usage patterns demonstrated by the Cyclistic bike company's annual members and casual customers , aiming to discover disparities in their behavioral characteristics and preferences.

Dataset: The data for this study was made available by Motivate International Inc. https://divvy-tripdata.s3.amazonaws.com/index.html

Initial insights were collected using Microsoft Excel. (Data cleaning, Data Integrity, Pivot Table)

 Removing duplicates
 ![image](https://github.com/sinisanezic/Bike-Share-Project/assets/128232162/49c42875-8374-4942-8709-e250ac2ce5c6)

Using Trim function extra spaces are removed 
![image](https://github.com/sinisanezic/Bike-Share-Project/assets/128232162/d1f649d4-c201-45a4-bb71-a2f31448de98)


Filter function was used to be sure that unusual values are not included
![image](https://github.com/sinisanezic/Bike-Share-Project/assets/128232162/ca483511-3ae5-41b7-9695-1101dc1a2b8b)

I created two new columns called "ride_length" and "day_of_week" to discover more about rider's preferences. Additionally, I deleted columns that will not be relevant for the analysis.

Average ride length
![image](https://github.com/sinisanezic/Bike-Share-Project/assets/128232162/615727e4-628c-47d8-9212-c10964ca1dd7)

Average ride length by day (Where #1 is Sunday, #7 is Saturday)
![image](https://github.com/sinisanezic/Bike-Share-Project/assets/128232162/b93b64de-4ad9-4d37-b469-d5abcca11b5a)

Number of rides per day (Where #1 is Sunday, #7 is Saturday)
![image](https://github.com/sinisanezic/Bike-Share-Project/assets/128232162/81ccb532-673a-4282-8b68-3305d1702e55)

The further analysis was done in Microsoft Sequel Server.
12 files were imported into server and using Union All function I made one table called "full_year".

Crating new table "full_year

https://1drv.ms/u/s!Ahzct4GgGifTrUp5IKSUbLCKLM_F?e=Rh77WM
