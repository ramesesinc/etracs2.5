[getList]
SELECT * 
FROM machine 
WHERE code = $P{searchtext} OR name LIKE $P{searchtext}
ORDER BY code


[lookupMachines]
SELECT *
FROM machine
WHERE state = 'APPROVED'
  AND (code = $P{searchtext} OR name LIKE $P{searchtext})
ORDER BY code


