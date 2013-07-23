[getList]
SELECT * FROM iraf
WHERE riv_txnno LIKE $P{riv_txnno} 
	OR riv_requestedby_name LIKE $P{riv_requestedby_name}
ORDER BY txndate

[getIrafDraftByRivId]
SELECT * FROM iraf
WHERE riv_objid = $P{riv_objid}
	AND state = 'DRAFT'
	
[getIrafByTxnno] 
SELECT * FROM iraf  
WHERE txnno = $P{txnno} 	

[getRequestedItemsByIrafid]
SELECT * FROM irafrequesteditem
WHERE irafid = $P{irafid}

[getIssuedItemsByIrafid]
SELECT * FROM irafissueditem
WHERE irafid = $P{irafid}
	
[checkOverlappingSeries]
SELECT * FROM afinventory
WHERE af_objid = $P{af_objid}
	AND ($P{startseries} BETWEEN startseries AND endseries OR $P{endseries} BETWEEN startseries AND endseries)
	AND prefix = $P{prefix}
	AND suffix = $P{suffix}

[getAFInventoryNextStubNo]
SELECT * FROM afinventory
WHERE iraf_objid = $P{iraf_objid} 
	AND af_objid = $P{af_objid} 
ORDER BY stubto desc

[getNextAFInventory]
SELECT * FROM afinventory 
WHERE af_objid =  $P{af_objid}  
AND state = 'OPEN' 
ORDER BY dtposted, startseries, stubfrom 