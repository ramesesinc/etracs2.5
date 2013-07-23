[lookup]
SELECT *
FROM lgu_municipality
WHERE state = 'APPROVED' 
  AND name LIKE $P{name} and parentid like $P{parentid}
ORDER BY name


[lookupById]
SELECT * FROM lgu_municipality WHERE objid = $P{objid} AND state = 'APPROVED'

 
