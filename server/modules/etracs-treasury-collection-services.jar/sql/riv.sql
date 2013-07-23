[getList]
SELECT * FROM riv 
WHERE type = $P{type} 
	AND (requestedby_name LIKE $P{requestedby_name} OR txnno LIKE $P{txnno})
ORDER BY txnno DESC 

[getListByOpenState]
SELECT * FROM riv
WHERE state = 'OPEN'
	AND (requestedby_name LIKE $P{requestedby_name} OR txnno LIKE $P{txnno})
ORDER BY txnno

[checkReferencedId]
SELECT COUNT(*) AS count FROM iraf WHERE riv_objid = $P{riv_objid}

[getItemsByRivid]
SELECT * FROM rivitem WHERE rivid = $P{rivid}

[deleteItemsByRivid]
DELETE FROM rivitem WHERE rivid = $P{rivid}