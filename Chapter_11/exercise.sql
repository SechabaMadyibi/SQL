--exercise 1
SELECT (tpep_dropoff_datetime - tpep_pickup_datetime) AS Trip_length
FROM nyc_yellow_taxi_trips_2016_06_01
ORDER BY Trip_length DESC


--exercise 2



--exercsie 3
SELECT  (tpep_dropoff_datetime - tpep_pickup_datetime) AS Trip_length,
corr(total_amount,(tpep_dropoff_datetime - tpep_pickup_datetime)),

regr_r2(total_amount,(tpep_dropoff_datetime - tpep_pickup_datetime)),
corr (total_amount,trip_distance),
regr_r2(total_amount,trip_distance)
FROM nyc_yellow_taxi_trips_2016_06_01
ORDER BY Trip_length WHERE  Trip_length <= 3 