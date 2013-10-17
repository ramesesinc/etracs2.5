[getList]
SELECT *
FROM businessvariable

[approve]
UPDATE businessvariable 
SET state = 'APPROVED'
WHERE objid = $P{objid}