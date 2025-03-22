-- File: highest_cases.sql
SELECT `Country/Region`, Confirmed
FROM country_wise_latest
ORDER BY Confirmed DESC
LIMIT 10;
