[getList]
SELECT DISTINCT a.* FROM 
(SELECT * FROM business_application WHERE state=$P{state} AND permitee_name LIKE $P{searchtext}
UNION
SELECT * FROM business_application WHERE state=$P{state} AND tradename LIKE $P{searchtext}
UNION
SELECT * FROM business_application WHERE state=$P{state} AND appno LIKE $P{searchtext}) a
ORDER BY a.appno

[getListSearch]
SELECT DISTINCT a.* FROM 
(SELECT * FROM business_application WHERE permitee_name LIKE $P{searchtext}
UNION
SELECT * FROM business_application WHERE tradename LIKE $P{searchtext}
UNION
SELECT * FROM business_application WHERE appno LIKE $P{searchtext}) a
ORDER BY a.appno

[getExtOfficeList]
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




[getLookupByPermitee]
SELECT objid AS applicationid, appno, apptype, permitee_name, tradename, businessid 
FROM business_application 
WHERE state = $P{state} AND permitee_objid=$P{permiteeid}

[getLobs]
SELECT *, lc.name AS classification_name, lc.objid as classification_objid   
FROM business_lob bl
INNER JOIN lob ON bl.lobid=lob.objid
INNER JOIN lobclassification lc ON lob.classification_objid=lc.objid 
WHERE bl.applicationid=$P{objid}

[getInfos]
SELECT bi.*, b.caption  AS attribute_caption, b.datatype AS attribute_datatype
FROM business_info bi 
INNER JOIN businessvariable b ON b.objid=bi.attribute_objid
WHERE bi.applicationid=$P{objid}

[getTaxfees]
SELECT br.*, r.code AS account_code, ba.taxfeetype 
FROM business_receivable br 
INNER JOIN businessaccount ba ON br.account_objid = ba.objid
INNER JOIN revenueitem r ON  r.objid=ba.objid 
WHERE applicationid=$P{objid} 

[getExternalOfficeFees]
SELECT br.*, r.code AS account_code,  ba.taxfeetype AS account_taxfeetype
FROM business_receivable br 
INNER JOIN businessaccount ba ON br.account_objid = ba.objid
INNER JOIN revenueitem r ON  r.objid=ba.objid 
WHERE applicationid=$P{objid} AND NOT(refid IS NULL)

[getRequirements]
SELECT bpr.*, br.type  
FROM business_application_requirement bpr
INNER JOIN businessrequirement br ON bpr.refid=br.objid 
WHERE bpr.applicationid=$P{objid}

[getDocRequirements]
SELECT * 
FROM business_application_requirement_data b
WHERE b.objid=$P{objid}


[changeState]
UPDATE business_application SET state = $P{state} WHERE objid = $P{objid}

[getRequirementsForValidation]
SELECT br.title AS caption     
FROM bpapplication_requirement bp
INNER JOIN business_requirement br ON bp.refid=br.objid 
WHERE  bp.parentid=$P{objid} AND NOT(status='completed') 
AND bp.step = $P{step}

[completeRequirement]
UPDATE bpapplication_requirement 
SET status='completed', completedby_objid=$P{userid}, completedby_name=$P{username},
dtcompleted=$P{dtcompleted}, remarks = $P{remarks} 
WHERE objid=$P{objid}

	
