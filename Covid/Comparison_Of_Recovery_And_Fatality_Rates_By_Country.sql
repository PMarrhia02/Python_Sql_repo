-- File: recovery_vs_fatality.sql
SELECT `Country/Region`, 
(Recovered * 100.0 / Confirmed) AS RecoveryRate, 
(Deaths * 100.0 / Confirmed) AS FatalityRate
FROM country_wise_latest
WHERE Confirmed > 0;
