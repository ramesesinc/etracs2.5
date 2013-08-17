[getList]
SELECT * 
FROM rptparameter 
WHERE name LIKE $P{searchtext}
ORDER BY name


[lookupRPTParameters]
SELECT *
FROM rptparameter
WHERE state = 'APPROVED'
  AND name LIKE $P{searchtext} 
ORDER BY name


