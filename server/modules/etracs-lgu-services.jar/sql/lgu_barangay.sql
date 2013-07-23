[lookup]
SELECT
  objid,
  name,
  indexno,
  pin
FROM lgu_barangay
WHERE state = 'APPROVED' 
  AND name LIKE $P{name} and parentid like $P{parentid}
ORDER BY name 



[lookupById]
SELECT * FROM lgu_barangay WHERE objid = $P{objid} AND state = 'APPROVED' 