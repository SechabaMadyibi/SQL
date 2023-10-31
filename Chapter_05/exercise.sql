--exercise
-- create or replace function calc_circle_area(radius int)
--    returns numeric
--    language plpgsql
--   as
-- $circle_area$
-- declare 
--   pi numeric := 3.14159;
-- begin
--   return round((radius * radius * pi), 2);
-- end;
-- $circle_area$

SELECT 3.14 *(5^2)

--exercise
SELECT geo_name,
state_us_abbreviation AS "st",
(CAST (p0020007 AS numeric(8,1)) / p0010001) * 100 AS "pct_indian_alaska_native"
FROM us_counties_2010
WHERE state_us_abbreviation = 'NY' --only New York counties
ORDER BY "pct_indian_alaska_native" DESC;

--exercise

SELECT percentile_cont(.5)
WITHIN GROUP ( ORDER BY p0010001) AS "County Median NY"
FROM us_counties_2010
WHERE state_us_abbreviation = 'NY'


SELECT percentile_cont(.5)
WITHIN GROUP ( ORDER BY p0010001) AS "County Median CA"
FROM us_counties_2010
WHERE state_us_abbreviation = 'CA'

'CA has the higher median'