[lookup]
SELECT
  objid AS lgu_provinceid,
  name AS prov_name,
  indexno AS prov_indexno,
  pin as prov_pin
FROM lgu_province
WHERE state = 'APPROVED' 
  AND name LIKE $P{name}  
ORDER BY name

 [lookupById]
SELECT * FROM lgu_province WHERE objid = $P{objid} AND state = 'APPROVED'
