-- File: lowest_deaths.sql
SELECT `Country/Region`, Deaths
FROM country_wise_latest
ORDER BY Deaths ASC
LIMIT 10;
