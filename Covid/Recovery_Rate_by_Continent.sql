-- File: recovery_rate_by_continent.sql
SELECT Continent, (SUM(TotalRecovered) * 100.0 / SUM(TotalCases)) AS RecoveryRate
FROM worldometer_data
WHERE TotalCases > 0
GROUP BY Continent;
