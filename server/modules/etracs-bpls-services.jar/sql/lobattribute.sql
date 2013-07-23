[getList]
SELECT * FROM lobattribute 
WHERE name like $P{name}
ORDER BY name  

[lookup]
SELECT
  objid,
  name,
  description
FROM lobattribute
WHERE state = 'APPROVED' 
  AND name LIKE $P{name} 
ORDER BY name

