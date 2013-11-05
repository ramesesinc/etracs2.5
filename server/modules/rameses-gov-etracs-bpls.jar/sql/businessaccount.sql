[getList]
SELECT DISTINCT a.* FROM 
(
SELECT ba.*, r.code, r.title 
	FROM businessaccount ba 
	INNER JOIN revenueitem r ON ba.objid=r.objid 
	WHERE r.code LIKE $P{searchtext}
	UNION
SELECT ba.*, r.code, r.title 	
	FROM businessaccount ba 
	INNER JOIN revenueitem r ON ba.objid=r.objid 
	WHERE r.title LIKE $P{searchtext}
) a ORDER BY a.code


[getLookup]
SELECT DISTINCT a.* FROM 
(
SELECT ba.*, r.code, r.title 
	FROM businessaccount ba 
	INNER JOIN revenueitem r ON ba.objid=r.objid 
	WHERE ba.taxfeetype = $P{taxfeetype}
	AND r.code LIKE $P{searchtext}
	UNION
SELECT ba.*, r.code, r.title 	
	FROM businessaccount ba 
	INNER JOIN revenueitem r ON ba.objid=r.objid 
	WHERE ba.taxfeetype = $P{taxfeetype}
	AND r.title LIKE $P{searchtext}
) a ORDER BY a.code


[removeAll]
DELETE FROM businessaccount

[findAccount]
SELECT ba.*, r.code, r.title 
FROM businessaccount ba 
INNER JOIN revenueitem r ON ba.objid=r.objid 
WHERE ba.objid = $P{objid}
