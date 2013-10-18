[getList]
SELECT *
FROM bpapplication 
WHERE state=$P{state}

[approve]
UPDATE bpapplication 
SET state = 'APPROVED'
WHERE objid = $P{objid}

