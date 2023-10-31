--exercise 1

SELECT name10,
       statefp10 AS st,
       round(
             ( ST_Area(geom::geography) / 2589988.110336 )::numeric, 2
            )  AS square_miles
FROM us_counties_2010_shp
GROUP BY statefp10 
ORDER BY square_miles DESC

