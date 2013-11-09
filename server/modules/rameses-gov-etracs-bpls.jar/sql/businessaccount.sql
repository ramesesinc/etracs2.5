[getList]
SELECT DISTINCT a.* FROM 
(
	SELECT ba.*, r.code, r.title, 
	sr.code AS surcharge_code, sr.title AS surcharge_title,
	ir.code AS interest_code, sr.title AS interest_title
	FROM businessaccount ba 
	INNER JOIN revenueitem r ON ba.objid=r.objid 
	LEFT JOIN revenueitem sr ON ba.surcharge_objid=sr.objid
	LEFT JOIN revenueitem ir ON ba.interest_objid=ir.objid
	WHERE r.code LIKE $P{searchtext}
UNION
	SELECT ba.*, r.code, r.title, 	
	sr.code AS surcharge_code, sr.title AS surcharge_title,
	ir.code AS interest_code, sr.title AS interest_title
	FROM businessaccount ba 
	INNER JOIN revenueitem r ON ba.objid=r.objid 
	LEFT JOIN revenueitem sr ON ba.surcharge_objid=sr.objid
	LEFT JOIN revenueitem ir ON ba.interest_objid=ir.objid
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
SELECT ba.*, r.code, r.title,
	sr.code AS surcharge_code, sr.title AS surcharge_title,
	ir.code AS interest_code, sr.title AS interest_title 
FROM businessaccount ba 
INNER JOIN revenueitem r ON ba.objid=r.objid 
LEFT JOIN revenueitem sr ON ba.surcharge_objid=sr.objid
LEFT JOIN revenueitem ir ON ba.interest_objid=ir.objid
WHERE ba.objid = $P{objid}
