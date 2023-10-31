--exercise 1
SELECT corr(median_hh_income, pct_masters_higher)
    AS bachelors_income_r
FROM acs_2011_2015_stats;

'r value = 0.568200030116781'

--exercise 2
SELECT
    city,
    motor_vehicle_theft,
    round(
        (motor_vehicle_theft::numeric / population) * 1000, 1
        ) AS motor_vehicle_theft_per_1000,

        round(
        (violent_crime::numeric / population) * 1000, 1
        ) AS violent_crime_per_1000

FROM fbi_crime_data_2015
WHERE population >= 500000
ORDER BY motor_vehicle_theft_per_1000 DESC

