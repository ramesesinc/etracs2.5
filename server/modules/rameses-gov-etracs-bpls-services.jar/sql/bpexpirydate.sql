[getList]
SELECT * FROM bpexpirydate ORDER BY year DESC, qtr ASC

[findExpiryDate]
SELECT expirydate FROM bpexpirydate WHERE year=$P{year} AND qtr=$P{qtr}