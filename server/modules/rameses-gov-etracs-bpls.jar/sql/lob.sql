[getList]
SELECT lob.*, lc.name AS classification_name 
FROM lob lob 
INNER JOIN lobclassification lc ON lob.classification_objid = lc.objid
WHERE lob.name LIKE $P{searchtext}
ORDER BY lob.name

[removeAttributes]
DELETE FROM lob_lobattribute
WHERE lobid = $P{lobid}

[getAttributes]
SELECT lla.*, la.name 
FROM lob_lobattribute lla
INNER JOIN lobattribute la
ON lla.lobattributeid = la.objid
WHERE lla.lobid = $P{lobid}

[getLookup]
SELECT lob.*, lc.name AS classification_name 
FROM lob lob 
INNER JOIN lobclassification lc ON lob.classification_objid = lc.objid
WHERE lob.name LIKE $P{searchtext}

[findInfo]
SELECT 
	l.objid, l.name, lc.name as classification, lc.objid as classificationid
FROM lob l
INNER JOIN lobclassification lc ON l.classification_objid=lc.objid
WHERE l.objid = $P{lobid}

[findAttr]
SELECT la.objid, la.name  
FROM lob_lobattribute llb 
INNER JOIN lobattribute la ON la.objid=llb.lobattributeid
WHERE llb.lobid=$P{lobid}

[approve]
UPDATE lob SET state='APPROVED' WHERE objid=$P{objid}