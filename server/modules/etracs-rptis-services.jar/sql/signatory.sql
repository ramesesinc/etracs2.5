[getSignatories]
SELECT * FROM signatory WHERE refid = $P{refid} ORDER BY seqno 

[lookup]
SELECT 
	a.objid AS objid,
	CASE 
		WHEN a.middlename IS NULL THEN CONCAT(a.firstname, ' ', a.lastname)
		ELSE CONCAT(a.firstname, ' ', a.middlename, ' ', a.lastname)
	END AS name,
	jp.title AS title,
	$P{type} AS type
FROM personnel a
LEFT JOIN jobposition jp ON a.objid = jp.assigneeid
WHERE lastname LIKE $P{searchtext} OR firstname LIKE $P{searchtext}


[deleteSignatories]
DELETE FROM signatory WHERE refid = $P{refid}

