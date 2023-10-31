--exercise 1
SELECT DISTINCT c2010.geo_name AS county_2010,
 c2000.geo_name AS county_2000
FROM us_counties_2010 c2010 FULL OUTER JOIN us_counties_2000 c2000 
ON c2010.county_fips = c2000.county_fips
AND c2010.state_fips = c2000.state_fips
WHERE c2010.geo_name IS NULL
OR c2000.geo_name IS NULL


--exercise 2
SELECT
percentile_cont(.5)
 WITHIN GROUP (ORDER BY round( (CAST(c2010.p0010001 AS numeric(8,1)) - c2000.p0010001)
  / c2000.p0010001 * 100, 1 )) AS pct_change
        FROM us_counties_2010 c2010 INNER JOIN us_counties_2000 c2000  
        ON c2010.county_fips = c2000.county_fips
        AND c2010.state_fips = c2000.state_fips

 --exercise 3
        SELECT
         c2010.geo_name AS county_2010,
         c2000.geo_name AS county_2000,
 round( (CAST(c2010.p0010001 AS numeric(8,1)) - c2000.p0010001)
  / c2000.p0010001 * 100, 1 ) AS pct_change
        FROM us_counties_2010 c2010 INNER JOIN us_counties_2000 c2000  
        ON c2010.county_fips = c2000.county_fips
        AND c2010.state_fips = c2000.state_fips
        ORDER BY pct_change ASC

        'St. Bernard Parish had the highest loss of population'
