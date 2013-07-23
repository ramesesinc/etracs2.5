[getList]
SELECT * FROM lobclassification 
WHERE name like $P{name}
ORDER BY name  


[lookup]
SELECT
  objid,
  name,
  remarks 
FROM lobclassification 
WHERE state = 'APPROVED' 
  AND name LIKE $P{name} 
ORDER BY name 

