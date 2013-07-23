[getList]
SELECT * 
FROM material 
WHERE code LIKE $P{searchtext} OR name LIKE $P{searchtext}
ORDER BY code


[lookupMaterials]
SELECT *
FROM material
WHERE state = 'APPROVED'
  AND code LIKE $P{searchtext} OR name LIKE $P{searchtext} 
ORDER BY code


