-- File: avg_deaths_per_day.sql
SELECT `Country/Region`, AVG(Deaths) AS AvgDeathsPerDay
FROM full_grouped
GROUP BY `Country/Region`;

SELECT Continent, AVG(TotalDeaths) AS AvgDeathsPerDay
FROM worldometer_data
GROUP BY Continent;
