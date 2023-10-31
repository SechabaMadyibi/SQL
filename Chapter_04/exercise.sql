--exercise 1
COPY moviesTable (id, movie, actor)
FROM 'C:\YourDirectory\movies.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ':', QUOTE '#');

--exercise 2
COPY (
  SELECT geo_name, state_us_abbreviation, housing_unit_count_100_percent
  FROM us_counties_2010
  ORDER BY housing_unit_count_100_percent DESC 
LIMIT 20
TO 'C:\YourDirectory\most_housing_units.csv'
WITH (FORMAT CSV, HEADER, DELIMITER '|')
)



--exercise 3
'it wont work the numeric data type will only store 3 numbers before the decimal'

