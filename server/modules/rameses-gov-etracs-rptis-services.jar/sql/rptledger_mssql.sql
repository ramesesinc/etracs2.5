[getList]
SELECT 
	rl.*,
	f.tdno, f.txntype_objid,
	f.taxpayer_objid, f.taxpayer_name, f.taxpayer_address,
	f.owner_name, f.owner_address,
	f.prevtdno, f.prevpin, f.prevowner, f.prevmv, f.prevav,
	rpu.rputype, rpu.ry, rpu.fullpin, rpu.taxable,
	rpu.totalmv, rpu.totalav, rpu.totalareaha, rpu.totalareasqm, 
	rp.surveyno,rp.cadastrallotno,
	b.name AS barangay_name
FROM faas f 
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN rptledger rl ON rl.faasid = f.objid 
WHERE 1=1 	
${filters}	
ORDER BY rl.state, f.tdno 


[findById]
SELECT 
	rl.*,
	f.tdno, f.txntype_objid,
	f.taxpayer_objid, f.taxpayer_name, f.taxpayer_address,
	f.owner_name, f.owner_address,
	f.prevtdno, f.prevpin, f.prevowner, f.prevmv, f.prevav,
	rpu.rputype, rpu.ry, rpu.fullpin, rpu.taxable,
	rpu.totalmv, rpu.totalav, rpu.totalareaha, rpu.totalareasqm, 
	rp.surveyno,rp.cadastrallotno,
	b.name AS barangay_name
FROM rptledger rl 
	INNER JOIN faas f ON rl.faasid = f.objid
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	INNER JOIN barangay b ON rp.barangayid = b.objid 
WHERE rl.objid = $P{objid}
ORDER BY rl.state, f.tdno 

	
[findApprovedLedgerByFaasId]
SELECT * FROM rptledger WHERE faasid = $P{faasid} AND state = 'APPROVED' 


[findLedgerByFaasId]	
SELECT * FROM rptledger WHERE faasid = $P{faasid} 


[getLedgerFaases]
SELECT rlf.*,
	pc.code AS classification_code,
	pc.name AS classification_name,
	pc1.code AS actualuse_code,
	pc1.name AS actualuse_name
FROM rptledgerfaas rlf
	INNER JOIN propertyclassification pc ON rlf.classification_objid = pc.objid 
	LEFT JOIN propertyclassification pc1 ON rlf.actualuse_objid = pc1.objid 
WHERE rlf.rptledgerid = $P{rptledgerid} 
ORDER BY rlf.fromyear  

[findLedgerFaasByFaasId]
SELECT rlf.*,
	pc.code AS classification_code,
	pc.name AS classification_name,
	pc1.code AS actualuse_code,
	pc1.name AS actualuse_name
FROM rptledgerfaas rlf
	INNER JOIN propertyclassification pc ON rlf.classification_objid = pc.objid 
	LEFT JOIN propertyclassification pc1 ON rlf.actualuse_objid = pc1.objid 
WHERE rlf.rptledgerid = $P{rptledgerid} 
  AND rlf.faasid = $P{faasid}
ORDER BY rlf.fromyear DESC 

[getLedgerItems]
SELECT rli.*,
	rlf.tdno 
FROM rptledgeritem rli
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid 
WHERE rli.rptledgerid = $P{rptledgerid} 
ORDER BY rli.year DESC, rli.qtr DESC 



[closePreviousFaasToYearAndQtr]
UPDATE rptledgerfaas SET
	toyear = $P{toyear},
	toqtr  = $P{toqtr}
WHERE objid <> $P{objid} AND rptledgerid = $P{rptledgerid}	AND toyear = 0 


[updateLedgerLastItemYear]
UPDATE rptledger SET 
	lastitemyear = $P{lastitemyear},
	nextbilldate = NULL
WHERE objid = $P{objid}	


[clearNextBillDateByLedger]
UPDATE rptledger SET 
	nextbilldate = NULL 
WHERE objid = $P{objid} 
  AND state = 'APPROVED'

[clearNextBillDate]
UPDATE rptledger SET 
	nextbilldate = NULL 
WHERE state = 'APPROVED'


[getLedgerCredits]
SELECT 
	cr.receiptno,
	cr.txndate, 
	cr.txnmode, 
	cr.paidby, 
	SUM(basic - basicdisc + basicint) AS basic,
	SUM(sef - sefdisc + sefint) AS sef,
	MIN(CONVERT(VARCHAR(1),cri.qtr) + 'Q,' + CONVERT(VARCHAR(4),cri.year)) + '-' + MAX(CONVERT(VARCHAR(1),cri.qtr) + 'Q,' + CONVERT(VARCHAR(4),cri.year)) AS period,
	SUM(basic - basicdisc + basicint + sef - sefdisc + sefint) AS total
FROM cashreceipt cr 
	INNER JOIN cashreceipt_rpt_item cri ON cr.objid = cri.rptreceiptid
	LEFT JOIN cashreceipt_void v ON cr.objid = v.receiptid 
WHERE 	cri.rptledgerid = $P{rptledgerid}
 AND v.objid IS NULL 
GROUP BY cr.objid, cr.receiptno, cr.txndate, cr.txnmode, cr.paidby

[approveLedgerFaas]
UPDATE rptledgerfaas SET state = 'APPROVED' WHERE objid = $P{objid}



[updateLedgerItemAccountInfo]
UPDATE rptledgeritem SET 
	basicacct_objid = $P{basicacctid},
	basicintacct_objid = CASE WHEN basicintacct_objid IS NULL THEN $P{basicintacctid} ELSE basicintacct_objid END,
	sefacct_objid = $P{sefacctid},
	sefintacct_objid = CASE WHEN sefintacct_objid IS NULL THEN $P{sefintacctid} ELSE sefintacct_objid END,
	firecodeacct_objid = CASE WHEN firecodeacct_objid IS NULL THEN $P{firecodeacctid} ELSE firecodeacct_objid END
WHERE objid = $P{rptledgeritemid}	
