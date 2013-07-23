[getList]
SELECT * FROM variable 
WHERE name like $P{name}
ORDER BY name  

[lookup]
SELECT
  objid,
  name,
  datatype,
  caption,
  description,
  arrayvalues
FROM variable
WHERE state = 'APPROVED' 
  AND name LIKE $P{name} 
ORDER BY name

