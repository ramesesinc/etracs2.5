[getList]
SELECT * 
FROM miscitem 
WHERE code LIKE $P{searchtext} OR name LIKE $P{searchtext}
ORDER BY code


[lookupMiscItems]
SELECT *
FROM miscitem
WHERE state = 'APPROVED'
  AND ( code LIKE $P{searchtext} OR name LIKE $P{searchtext}  )
ORDER BY code


