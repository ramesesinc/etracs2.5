[getList]
SELECT *
FROM businessvariable

[changeState-approved]
UPDATE businessvariable SET state = 'APPROVED'
WHERE objid = $P{objid}