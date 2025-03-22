-- File: lowest_cases_continent.sql
SELECT Continent, SUM(TotalCases) AS TotalCases
FROM worldometer_data
GROUP BY Continent
ORDER BY TotalCases ASC
LIMIT 1;
