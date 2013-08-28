[getList]
SELECT *
FROM lobattribute

[changeState-approved]
UPDATE lobattribute SET state = 'APPROVED'
WHERE objid = $P{objid}