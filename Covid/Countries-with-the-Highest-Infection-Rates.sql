SELECT Continent, 
SUM(TotalCases) AS Total_Confirmed, 
SUM(Population) AS Total_Population, 
(SUM(TotalCases) / SUM(Population)) * 100 AS Infection_Rate_Percentage, 
(SUM(TotalCases) / SUM(Population) * 1000000) AS Tot_Cases_Per_Million 
FROM worldometer_data 
WHERE Population > 0 
AND TotalCases IS NOT NULL 
GROUP BY Continent 
HAVING SUM(Population) > 0 
ORDER BY (SUM(TotalCases) / SUM(Population)) * 100 DESC;
