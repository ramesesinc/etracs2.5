[getList]
SELECT ba.*, r.code, r.title 
FROM businessaccount ba 
INNER JOIN revenueitem r ON ba.objid=r.objid 

[getLookup]
SELECT ba.*, r.code, r.title 
FROM businessaccount ba 
INNER JOIN revenueitem r ON ba.objid=r.objid 
WHERE ba.taxfeetype = $P{taxfeetype}


[removeAll]
DELETE FROM businessaccount

[findAccount]
SELECT ba.*, r.code, r.title 
FROM businessaccount ba 
INNER JOIN revenueitem r ON ba.objid=r.objid 
WHERE ba.objid = $P{objid}
