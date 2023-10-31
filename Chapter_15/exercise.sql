--exercise 1
CREATE OR REPLACE VIEW trips_per_hour AS
SELECT
    date_part('hour', tpep_pickup_datetime) AS trip_hour,
    count(*)
FROM nyc_yellow_taxi_trips_2016_06_01
GROUP BY trip_hour
ORDER BY trip_hour;

--exercise 2
CREATE OR REPLACE FUNCTION
rates_per_thousand(observed_number, numeric,
                base_number numeric,
               decimal_places integer DEFAULT 1)
RETURNS numeric AS
'SELECT round(
        ((observed_number/base_number) * 1000, decimal_places
);'
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

--exercise 3