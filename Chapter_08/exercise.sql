--Exercise 1
SELECT pls14.stabr,
       sum(pls14.gpterms) AS visits_2014,
       sum(pls09.gpterms) AS visits_2009,
       sum(pls14.pitusr) AS visits_2014,
       sum(pls09.pitusr) AS visits_2009
       round( (CAST(sum(pls14.gpterms) AS decimal(10,1)) - sum(pls09.gpterms)) /
                    sum(pls09.gpterms) * 100, 2 ) AS pct_change_gpterms,
       round( (CAST(sum(pls14.pitusr) AS decimal(10,1)) - sum(pls09.pitusr)) /
                    sum(pls09.pitusr) * 100, 2 ) AS pct_change_pitusr
FROM pls_fy2014_pupld14a pls14 JOIN pls_fy2009_pupld09a pls09
ON pls14.fscskey = pls09.fscskey
WHERE pls14.visits >= 0 AND pls09.visits >= 0
GROUP BY pls14.stabr
ORDER BY pct_change_gpterms

--Exercise 2
SELECT pls14.obereg AS region_code,
       sum(pls14.visits) AS visits_2014,
       sum(pls09.visits) AS visits_2009,
       round( (CAST(sum(pls14.visits) AS decimal(10,1)) - sum(pls09.visits)) /
                    sum(pls09.visits) * 100, 2 ) AS pct_change
                     FROM pls_fy2014_pupld14a pls14 JOIN pls_fy2009_pupld09a pls09
                     ON pls14.fscskey = pls09.fscskey
                    GROUP BY pls14.obereg
                    ORDER BY pct_change DESC

--Exercise 3
SELECT pls_fy2014_pupld14a.libname AS libname_2014, pls_fy2009_pupld09a.libname AS libname_2009
FROM pls_fy2014_pupld14a FULL OUTER JOIN pls_fy2009_pupld09a
ON pls_fy2014_pupld14a.fscskey = pls_fy2009_pupld09a.fscskey
WHERE  pls_fy2014_pupld14a.libname IS NULL OR pls_fy2009_pupld09a.libname IS NULL


