[getList]
SELECT 
	t.*,
	DATEDIFF(mi, startdate, ISNULL(enddate,GETDATE())) AS duration
FROM rpttask t 
WHERE 1=1 
${filters}

[closeTask]
UPDATE rpttask SET 
	enddate = $P{enddate}
WHERE objid = $P{objid}	AND enddate IS NULL

[deleteTask]
DELETE FROM rpttask WHERE objid = $P{objid}


[findCurrentTask]
SELECT * FROM rpttask WHERE objid = $P{objid} AND enddate IS NULL 

