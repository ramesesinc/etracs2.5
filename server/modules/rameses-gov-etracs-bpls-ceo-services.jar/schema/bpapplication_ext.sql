[getList]
SELECT DISTINCT a.*, br.department, ba.objid AS refid, ba.objid AS reftype,
CASE WHEN ba.status = 'completed' THEN 1 ELSE 0 END AS completed
FROM 
(
	SELECT * FROM business_application WHERE state=$P{state} AND permitee_name LIKE $P{searchtext}
	UNION
	SELECT * FROM business_application WHERE state=$P{state} AND tradename LIKE $P{searchtext}
	UNION
	SELECT * FROM business_application WHERE state=$P{state} AND appno LIKE $P{searchtext}
) a
INNER JOIN business_application_requirement ba ON  a.objid=ba.applicationid
INNER JOIN businessrequirement br ON ba.refid=br.objid
ORDER BY a.appno

[submitExternalOfficeFees]
UPDATE business_application_requirement 
SET status = 'completed', 
completedby_objid=$P{userid}, completedby_name=$P{username}, dtcompleted=$P{dtcompleted} 
WHERE objid=$P{objid}

