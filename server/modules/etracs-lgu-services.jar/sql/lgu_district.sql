[lookup]
SELECT
  objid AS lgu_districtid,
  name AS dist_name,
  indexno AS dist_indexno,
  pin as dist_pin
FROM lgu_district
WHERE state = 'APPROVED' 
  AND name LIKE $P{name} and parentid like $P{parentid}
ORDER BY name



[lookupById]
SELECT * FROM lgu_district WHERE objid = $P{objid} AND state = 'APPROVED'