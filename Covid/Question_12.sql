USE covid19;

SELECT `Country/Region` AS Country, 
SUM(Deaths) AS Death_Count 
FROM full_grouped 
WHERE Date = (SELECT MAX(Date) FROM full_grouped) 
AND Deaths IS NOT NULL 
GROUP BY `Country/Region` 
HAVING Death_Count > 0 
ORDER BY Death_Count DESC 
LIMIT 10;

SELECT `WHO Region` AS Continent, 
SUM(Deaths) AS Death_Count 
FROM full_grouped 
WHERE Date = (SELECT MAX(Date) FROM full_grouped) 
AND Deaths IS NOT NULL 
GROUP BY `WHO Region` 
HAVING Death_Count > 0 
ORDER BY Death_Count DESC 
LIMIT 5;
