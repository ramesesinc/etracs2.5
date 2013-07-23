[lookup]
SELECT
  objid AS lgu_cityid,
  name AS city_name,
  indexno AS city_indexno,
  pin as city_pin
FROM lgu_city
WHERE state = 'APPROVED' 
  AND name LIKE $P{name} 
ORDER BY name

[lookupById]
SELECT * FROM lgu_city WHERE objid = $P{objid} AND state = 'APPROVED'