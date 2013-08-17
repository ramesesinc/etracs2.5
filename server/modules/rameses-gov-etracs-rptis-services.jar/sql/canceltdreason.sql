[getList]
SELECT * 
FROM canceltdreason 
WHERE code LIKE $P{searchtext} OR name LIKE $P{searchtext}
ORDER BY code


[lookupCancelTDReasons]
SELECT *
FROM canceltdreason
WHERE state LIKE 'APPROVED'
  AND code LIKE $P{searchtext} OR name LIKE $P{searchtext} 
ORDER BY code


