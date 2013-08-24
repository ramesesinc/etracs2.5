[getList]
SELECT l.*, lc.name AS classification_name 
FROM lob l 
INNER JOIN lobclassification lc
ON l.classification_objid = lc.objid

[removeAttributes]
DELETE FROM lob_lobattribute
WHERE lobid = $P{lobid}

[getAttributes]
SELECT la.* 
FROM lob_lobattribute lla
INNER JOIN lobattribute la
ON lla.lobattributeid = la.objid
WHERE lla.lobid = $P{lobid}