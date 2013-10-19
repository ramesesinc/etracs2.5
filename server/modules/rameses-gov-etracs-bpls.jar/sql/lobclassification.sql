[getList]
SELECT *
FROM lobclassification
order by name

[approve]
UPDATE lobclassification SET state = 'APPROVED'
WHERE objid = $P{objid}