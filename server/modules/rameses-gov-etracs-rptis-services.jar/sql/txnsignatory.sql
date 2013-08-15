[getSignatories]
SELECT * FROM txnsignatory WHERE refid = $P{refid} ORDER BY seqno 

[lookup]
SELECT 
	objid, name, title
FROM signatory 
WHERE doctype = $P{doctype}
  AND (lastname LIKE $P{searchtext} OR firstname LIKE $P{searchtext})
ORDER BY name 


[deleteSignatories]
DELETE FROM txnsignatory WHERE refid = $P{refid}

