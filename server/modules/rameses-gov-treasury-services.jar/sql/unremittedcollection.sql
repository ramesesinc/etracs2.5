[getList]
SELECT c.*, 
CASE WHEN v.receiptid IS NULL THEN 0 ELSE 1 END AS voided 
FROM cashreceipt c 
LEFT JOIN cashreceipt_void v ON c.objid=v.receiptid
LEFT JOIN remittance_cashreceipt r ON c.objid=r.objid
WHERE c.collector_objid = $P{collectorid}
	and c.state = 'POSTED' 
	and r.objid is null 
	and ( c.receiptno LIKE $P{searchtext} 
	OR c.paidby LIKE $P{searchtext}
	OR c.payer_name LIKE $P{searchtext} )
ORDER BY c.formno, c.receiptno 

