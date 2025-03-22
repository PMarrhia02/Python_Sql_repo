-- File: global_recovery_rate.sql
SELECT (SUM(Recovered) * 100.0 / SUM(Confirmed)) AS GlobalRecoveryRate
FROM country_wise_latest
WHERE Confirmed > 0;
