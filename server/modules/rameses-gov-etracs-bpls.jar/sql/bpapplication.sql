[getList]
SELECT DISTINCT a.* FROM 
(SELECT * FROM bpapplication WHERE state=$P{state} AND permitee_name LIKE $P{searchtext}
UNION
SELECT * FROM bpapplication WHERE state=$P{state} AND tradename LIKE $P{searchtext}
UNION
SELECT * FROM bpapplication WHERE state=$P{state} AND appno LIKE $P{searchtext}) a
ORDER BY a.appno

[getListSearch]
SELECT DISTINCT a.* FROM 
(SELECT * FROM bpapplication WHERE permitee_name LIKE $P{searchtext}
UNION
SELECT * FROM bpapplication WHERE tradename LIKE $P{searchtext}
UNION
SELECT * FROM bpapplication WHERE appno LIKE $P{searchtext}) a
ORDER BY a.appno


[getLobs]
SELECT bl.*, lc.name AS classification_name, lc.objid as classification_objid  
FROM bpapplication_lob bl
INNER JOIN lob ON bl.lobid=lob.objid
INNER JOIN lobclassification lc ON lob.classification_objid=lc.objid 
WHERE bl.parentid=$P{objid}

[getInfos]
SELECT bi.*, b.caption  AS attribute_caption, b.datatype AS attribute_datatype
FROM bpapplication_info bi 
INNER JOIN businessvariable b ON b.objid=bi.attribute_objid
WHERE bi.parentid=$P{objid}

[getTaxfees]
SELECT * FROM bpapplication_taxfee WHERE parentid=$P{objid} AND refid IS NULL

[getOtherfees]
SELECT * FROM bpapplication_taxfee WHERE parentid=$P{objid} AND NOT(refid IS NULL)

[getRequirements]
SELECT bpr.*, br.type  
FROM bpapplication_requirement bpr
INNER JOIN business_requirement br ON bpr.refid=br.objid 
WHERE bpr.parentid=$P{objid}

[removeInfos]
DELETE FROM bpapplication_info WHERE parentid=$P{objid}

[removeTaxfees]
DELETE FROM bpapplication_taxfee WHERE parentid=$P{objid} AND refid IS NULL

[changeState]
UPDATE bpapplication SET state = $P{state} WHERE objid = $P{objid}

[updateBusinessId]
UPDATE bpapplication SET businessid = $P{businessid} WHERE objid = $P{objid}

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

	
