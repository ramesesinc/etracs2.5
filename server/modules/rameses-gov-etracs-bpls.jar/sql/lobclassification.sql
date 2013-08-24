[getList]
SELECT *
FROM lobclassification

[changeState-approved]
UPDATE lobclassification SET state = 'APPROVED'
WHERE objid = $P{objid}