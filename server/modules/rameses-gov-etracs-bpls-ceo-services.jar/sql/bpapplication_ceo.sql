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
WHERE br.handler = 'CEO'
ORDER BY a.appno

[getSearchList]
SELECT DISTINCT a.*, br.department, ba.objid AS refid, ba.objid AS reftype,
CASE WHEN ba.status = 'completed' THEN 1 ELSE 0 END AS completed
FROM 
(
	SELECT * FROM business_application WHERE permitee_name LIKE $P{searchtext}
	UNION
	SELECT * FROM business_application WHERE tradename LIKE $P{searchtext}
	UNION
	SELECT * FROM business_application WHERE appno LIKE $P{searchtext}
) a
INNER JOIN business_application_requirement ba ON  a.objid=ba.applicationid
INNER JOIN businessrequirement br ON ba.refid=br.objid
WHERE br.handler = 'CEO'
ORDER BY a.appno

[getApplication]
SELECT a.*, br.department, ba.objid AS refid, ba.objid AS reftype
FROM business_application a
INNER JOIN business_application_requirement ba ON  a.objid=ba.applicationid
INNER JOIN businessrequirement br ON ba.refid=br.objid
WHERE a.objid = $P{objid}


[getInfos]
SELECT bi.*, b.caption  AS attribute_caption, b.datatype AS attribute_datatype
FROM business_info bi 
INNER JOIN businessvariable b ON b.objid=bi.attribute_objid
WHERE bi.applicationid=$P{objid} 



[submitExternalOfficeFees]
UPDATE business_application_requirement 
SET status = 'completed', 
completedby_objid=$P{userid}, completedby_name=$P{username}, dtcompleted=$P{dtcompleted} 
WHERE objid=$P{objid}

[getExternalDepts]
SELECT objid,title,department,role 
FROM businessrequirement WHERE type='WORKFLOW'

[getExternalDeptTaskList]
SELECT DISTINCT a.* FROM 
(SELECT * FROM business_application WHERE permitee_name LIKE $P{searchtext}
UNION
SELECT * FROM business_application WHERE tradename LIKE $P{searchtext}
UNION
SELECT * FROM business_application WHERE appno LIKE $P{searchtext}) a
WHERE a.objid IN ( SELECT applicationid 
FROM business_application_requirement bar WHERE refid=$P{refid} AND status='open')
ORDER BY a.appno

