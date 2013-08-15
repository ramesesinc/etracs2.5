[getList]
SELECT * 
FROM planttree 
WHERE code LIKE $P{searchtext} OR name LIKE $P{searchtext}
ORDER BY code


[lookupPlantTrees]
SELECT *
FROM planttree
WHERE state = 'APPROVED'
  AND ( code LIKE $P{searchtext} OR name LIKE $P{searchtext}  )
ORDER BY code


