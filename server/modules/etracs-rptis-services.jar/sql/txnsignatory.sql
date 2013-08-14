[getSignatories]
SELECT * FROM txnsignatory WHERE refid = $P{refid} ORDER BY seqno 

[lookup]
SELECT 
	u.objid,
	u.name,
	u.jobtitle AS title
FROM sys_user u
WHERE u.name LIKE $P{searchtext}
ORDER BY u.name 


[deleteSignatories]
DELETE FROM txnsignatory WHERE refid = $P{refid}

