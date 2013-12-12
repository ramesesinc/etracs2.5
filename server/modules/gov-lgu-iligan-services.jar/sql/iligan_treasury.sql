[getList]
SELECT 
	o.objid, o.strpayor AS paidby, o.strpayoraddress AS paidbyaddress,
	strorno AS receiptno, dtordate AS receiptdate, curamount AS amount,
	o.intvoid AS voided
FROM tblor o
WHERE o.strorno LIKE $P{orno} OR o.strpaidby LIKE $P{paidby}
ORDER BY o.strorno 


[findById]
SELECT 
	o.objid, o.strpayor AS paidby, o.strpayoraddress AS paidbyaddress,
	strorno AS receiptno, dtordate AS receiptdate, curamount AS amount,
	o.intvoid AS voided
FROM tblor o
WHERE objid = $P{objid}



[getItems]
SELECT
	ori.id, ori.curamount AS amount, tfa.stracctcode AS item_code, 
	tfa.strdescription AS item_title, strRemarks as remarks  
FROM tbloritem ori
INNER JOIN tbltaxfeeaccount tfa on tfa.objid = ori.stracctid
WHERE ori.parentid = $P{objid}

