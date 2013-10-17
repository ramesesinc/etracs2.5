[getList]
SELECT *
FROM lobclassification

[approve]
UPDATE lobclassification SET state = 'APPROVED'
WHERE objid = $P{objid}